package database;

import com.mongodb.MongoClient;
import com.mongodb.client.MongoDatabase;

public class MongoConnection {

	public MongoConnection() {
		// TODO Auto-generated constructor stub
		try {
		MongoClient mC=new MongoClient("localhost",27017);
		MongoDatabase database = mC.getDatabase("test");
		 for (String name : database.listCollectionNames()) {
	            System.out.println(name);
	        }
	        mC.close();
		
		}
		catch(Exception e) {
			System.out.println(e);
		}
	}

}