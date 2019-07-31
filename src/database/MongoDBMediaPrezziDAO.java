package database;

import java.util.ArrayList;
import java.util.List;

import com.mongodb.BasicDBObject;
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
		DBObject query = BasicDBObjectBuilder.start()
				.append("DATA_RILEVAZIONE", "29/07/2019").get();
		DBCursor cursor = col.find(query).sort(new BasicDBObject("PRODOTTO_NOME",1));
		while (cursor.hasNext()) {
			DBObject doc = cursor.next();
			MediaPrezzi c = MediaPrezziConverter.toMediaPrezzi(doc);
			mediaPrezzi.add(c);
		}
		return mediaPrezzi;
	}
	
	public List<MediaPrezzi> readMediaPrezziSettimanali(String coll, MongoClient mongo,String tipo_carburante){
		DBCollection collection = mongo.getDB("carburante").getCollection(coll);
		List<MediaPrezzi> mediaPrezzi = new ArrayList<MediaPrezzi>();
		DBObject query = BasicDBObjectBuilder.start()
				.append("PRODOTTO_NOME", tipo_carburante).get();
		DBCursor cursor = collection.find(query);
		while (cursor.hasNext()) {
			DBObject doc = cursor.next();
			MediaPrezzi c = MediaPrezziConverter.toMediaPrezzi(doc);
			mediaPrezzi.add(c);
		}
		return mediaPrezzi;
	}
	


}
