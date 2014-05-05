package com.db.util;

import java.net.UnknownHostException;
import java.util.ArrayList;

import com.mongodb.DB;
import com.mongodb.MongoClient;
import com.mongodb.DBCollection;

public class Util {
	public static ArrayList getCollections() throws UnknownHostException{
		ArrayList tableNames=null;	
		tableNames = new ArrayList();
		for(String name : getMongoDb().getCollectionNames()){
			System.out.println("I am in collections " + name);
			if(!name.equals("system.indexes") && !name.equals("TableCollections")){
				tableNames.add(name);
			}
		}
		return tableNames;
	}
        
	public static ArrayList getCollectionsWithData() throws UnknownHostException{
		ArrayList tableNames=null;	
		tableNames = new ArrayList();
		for(String name : getMongoDb().getCollectionNames()){
			System.out.println("I am in collections " + name);
                        DBCollection tableS1 = Util.getMongoDb().getCollection(name);
                    
			if(!name.equals("system.indexes") && !name.equals("TableCollections") && tableS1.count() > 1){
				tableNames.add(name);
			}
		}
		return tableNames;
	}
	
	public static DB getMongoDb() throws UnknownHostException{
		MongoClient mongo = new MongoClient("localhost", 27017);
		DB db = mongo.getDB("mongo_hadoop");
		return db;
	}
}
