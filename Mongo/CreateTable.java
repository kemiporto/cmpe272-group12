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
	private String getCategories(DBCollection collection1, DBCollection collection2, ArrayList<String> catArray) {
		String categories = "            categories: [";
		DBCursor cursor1 = collection1.find();
		mountCategories(cursor1, catArray);
		if(collection2 != null) {
			DBCursor cursor2 = collection2.find();
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
	private String getData(DBCollection col, ArrayList<String> catArray) {
		String data ="     	    data: [";
		boolean first = true;
		for(String s: catArray) {
			if(!first) {
				data += ", ";
			}
			first = false;
			DBCursor cursor = col.find(new BasicDBObject("_id", s));
			if(cursor.hasNext()) {
				data += cursor.next().get("value").toString();
			} else {
				data += "null";
			}
		}
		data += "]";
		return  data;
	}
	
	public void makeChart(String collectionName1, String collectionName2, String chartName1, String chartName2, String dbName, String outputFile, String chartTitle, String yAxisInfo) throws IOException {
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
		content = insertLine(content, "    $('#container').highcharts({");
		content = insertLine(content, "       chart: {");
		content = insertLine(content, "            type: 'spline'");
		content = insertLine(content, "        },");
		content = insertLine(content, "        title: {");
		content = insertLine(content, "            text: '" + chartName + "'");
		content = insertLine(content, "        },");
		content = insertLine(content, "        xAxis: {");
		content = insertLine(content, getCategories(col1, col2, catArray));
		content = insertLine(content, "        },");
		content = insertLine(content, "        yAxis: {");
		content = insertLine(content, "            title: {");
		content = insertLine(content, "               text: '" + yAxisInfo + "'");
		content = insertLine(content, "            }");
		content = insertLine(content, "        },");
		content = insertLine(content, "        series: [{");
		content = insertLine(content, "            name: '" + chartName1 + "',");
		content = insertLine(content, "            connectNulls: true,");
		content = insertLine(content, getData(col1, catArray));
		if(!has1chart) {
			content = insertLine(content, "        }, {");
			content = insertLine(content, "            name: '" + chartName2 + "',");
			content = insertLine(content, "            connectNulls: true,");
			content = insertLine(content, getData(col2, catArray));
		}
		content = insertLine(content, "        }],");
		content = insertLine(content, "    });");
		content = insertLine(content, "});");
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
		c.makeChart("year1", "year2", "test1", "test2", "test", "out", "testing making chart", "info");
	}
}