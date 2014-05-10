import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;

import com.mongodb.BasicDBObject;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import com.mongodb.MongoClient;

public class CreateTable {

	private String insertLine(String input, String newLine) {
		return input + "\n" + newLine;
	}
	
	private void mountCategories(DBCursor cursor, ArrayList<String> catArray) {
		while(cursor.hasNext()) {
			BasicDBObject obj = (BasicDBObject) (cursor.next());
			String x = (String) obj.get("_id"); 
			if(!catArray.contains(x)) {
				catArray.add(x);
			}
		}
	}
	
	//get x values
    private String getCategories(DBCollection collection1, DBCollection collection2, ArrayList<String> catArray, String start) {
		String categories = "            categories: [";
		BasicDBObject startSearch = new BasicDBObject("_id", new BasicDBObject("$gte", start));
		DBCursor cursor1;
		DBCursor cursor2;
		if(start.isEmpty()) {
		    cursor1 = collection1.find();
		}
		else {
		    cursor1 = collection1.find(startSearch);
		}
		mountCategories(cursor1, catArray);
		if(collection2 != null) {
		    if(start.isEmpty()) {
			cursor2 = collection2.find();
		    }
		    else {
			cursor2 = collection2.find(startSearch);
		    }
		    mountCategories(cursor2, catArray);
		}
		Collections.sort(catArray);
		boolean first = true;
		for(Object o: catArray) {
		    if(!first) {
			categories += ", ";
		    }
		    first = false;
		    categories += "'" + o.toString() + "'";
		}
		categories += "]";
		return categories;
	}
	
	//get y values
    private String getData(DBCollection col, ArrayList<String> catArray, boolean normalize, double normal) {
		String data ="     	    data: [";
		boolean first = true;
		for(String s: catArray) {
			if(!first) {
				data += ", ";
			}
			first = false;
			DBCursor cursor = col.find(new BasicDBObject("_id", s));
			if(cursor.hasNext()) {
			    double d = ((Number) cursor.next().get("value")).doubleValue();
			    if(normalize) {
				d *= normal;
			    }
			    data += Double.toString(d);
			} else {
				data += "null";
			}
		}
		data += "]";
		return  data;
	}
	
    public void makeChart(String collectionName1, String collectionName2, String chartName1, String chartName2, String dbName, String outputFile, String chartTitle, String yAxisInfo, boolean normalize1, double normal1, boolean normalize2, double normal2, String startX) throws IOException {
		MongoClient mongoClient = new MongoClient("localhost");
		DB db = mongoClient.getDB(dbName);
		String chartName = chartName1;
		boolean has1chart = chartName2.isEmpty();
		if(!has1chart) {
			chartName += " x " + chartName2;
		}
		DBCollection col1 = db.getCollection(collectionName1);
		DBCollection col2 = null;
		if(!has1chart) {
			col2 = db.getCollection(collectionName2);
		}
		ArrayList<String> catArray = new ArrayList<>();
		String content =              "$(function () {\n";
		content = insertLine(content, "    $('#chart').highcharts({");
		content = insertLine(content, "       chart: {");
		content = insertLine(content, "            type: 'spline'");
		content = insertLine(content, "        },");
		content = insertLine(content, "        title: {");
		content = insertLine(content, "            text: '" + chartName + "'");
		content = insertLine(content, "        },");
		content = insertLine(content, "        xAxis: {");
		content = insertLine(content, getCategories(col1, col2, catArray, startX));
		content = insertLine(content, "        },");
		content = insertLine(content, "        yAxis: {");
		content = insertLine(content, "            title: {");
		content = insertLine(content, "               text: '" + yAxisInfo + "'");
		content = insertLine(content, "            }");
		content = insertLine(content, "        },");
		content = insertLine(content, "        series: [{");
		content = insertLine(content, "            name: '" + chartName1 + "',");
		content = insertLine(content, "            connectNulls: true,");
		content = insertLine(content, getData(col1, catArray, normalize1, normal1));
		if(!has1chart) {
			content = insertLine(content, "        }, {");
			content = insertLine(content, "            name: '" + chartName2 + "',");
			content = insertLine(content, "            connectNulls: true,");
			content = insertLine(content, getData(col2, catArray, normalize2, normal2));
		}
		content = insertLine(content, "        }],");
		content = insertLine(content, "    });");
		content = insertLine(content, "});");
		content = insertLine(content, "<script src=\"http://code.highcharts.com/highcharts.js\"></script>\n<div id=\"chart\" style=\"height: 300px\"></div>");
		try {
			File file = new File(outputFile);

			if (!file.exists()) {
				file.createNewFile();
			}	
			FileWriter fw = new FileWriter(file.getAbsoluteFile());
			BufferedWriter bw = new BufferedWriter(fw);
			bw.write(content);
			bw.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public static void main(String args[]) throws IOException {
		CreateTable c = new CreateTable();
		c.makeChart("sac_faa_monthly", "", "Precipitation", "", "espawsdb", "out", "Precipitation", "index", false, 0, false, 40, "2010");
	}
}