import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;

import com.mongodb.BasicDBObject;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.MongoClient;

public class ReadTips {

	private void readTips(String dbName, String fileName) throws IOException {
		MongoClient mongoClient = new MongoClient("localhost");
		DB db = mongoClient.getDB(dbName);
		DBCollection collection = db.getCollection("water_tips");

		String category = "";
		BufferedReader br = new BufferedReader(new FileReader(fileName));
		try {
			String line = br.readLine();
			while (line != null) {
				if(line.startsWith("#")) {
					String[] info = line.split(" ", 2);
					collection.insert(new BasicDBObject("info", info[1])
					.append("category", fileName)
					.append("room", category));
				}
				else {
					category = line;
				}
	        line = br.readLine();
	            			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			br.close();
		}		
	}

    public static void main(String [] args) throws IOException {
    	ReadTips r = new ReadTips();
    	r.readTips("espawsdb", "indoor");
    }
					      
}