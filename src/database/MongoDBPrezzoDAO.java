package database;

import org.bson.types.ObjectId;

import com.mongodb.DBCollection;
import com.mongodb.DBObject;
import com.mongodb.MongoClient;

import Beans.Prezzo;
import Beans.Stazione;
import Converter.PrezzoConverter;
import Converter.StazioneConverter;

public class MongoDBPrezzoDAO {
	
	private DBCollection col;

	public MongoDBPrezzoDAO(MongoClient mongo) {
		this.col = mongo.getDB("carburante").getCollection("prezzi");
	}

	public Prezzo createStazione(Prezzo p) {
		DBObject doc = PrezzoConverter.toDbObject(p);
		this.col.insert(doc);
		ObjectId id = (ObjectId) doc.get("_id");
		p.setId(id.toString());
		return p;
	}

}
