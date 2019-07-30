package database;

import java.util.ArrayList;
import java.util.List;

import com.mongodb.BasicDBObjectBuilder;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import com.mongodb.DBObject;
import com.mongodb.MongoClient;

import Beans.Comune;
import Beans.MediaPrezzi;
import Converter.ComuneConverter;
import Converter.MediaPrezziConverter;

public class MongoDBMediaPrezziDAO {
	
	private DBCollection col;
	
	public MongoDBMediaPrezziDAO(MongoClient mongo) {
		// TODO Auto-generated constructor stub
		this.col = mongo.getDB("carburante").getCollection("prezziSettimaneLuglio");
	}
	
	public List<MediaPrezzi> readAllMediaPrezzi() {
		List<MediaPrezzi> mediaPrezzi = new ArrayList<MediaPrezzi>();
		DBCursor cursor = col.find();
		while (cursor.hasNext()) {
			DBObject doc = cursor.next();
			MediaPrezzi c = MediaPrezziConverter.toMediaPrezzi(doc);
			mediaPrezzi.add(c);
		}
		return mediaPrezzi;
	}
	


}
