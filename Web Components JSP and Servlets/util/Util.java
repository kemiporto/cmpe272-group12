package com.db.util;

import java.net.UnknownHostException;
import java.util.ArrayList;

import com.mongodb.DB;
import com.mongodb.MongoClient;

public class Util {
	public static ArrayList getCollections() throws UnknownHostException{
		ArrayList tableNames=null;	
		tableNames = new ArrayList();
		for(String name : getMongoDb().getCollectionNames()){
			System.out.println("I am in collections " + name);
			if(!name.equals("system.indexes")){
				tableNames.add(name);
			}
		}
		return tableNames;
	}
	
	public static DB getMongoDb() throws UnknownHostException{
		MongoClient mongo = new MongoClient("localhost", 27017);
		DB db = mongo.getDB("espawsdb");
		return db;
	}
}
