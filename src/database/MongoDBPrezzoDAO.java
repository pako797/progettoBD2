package database;

import java.util.ArrayList;
import java.util.List;

import org.bson.types.ObjectId;

import com.mongodb.BasicDBObject;
import com.mongodb.BasicDBObjectBuilder;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
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
	
	public List<Prezzo> ricercaPrezziStazione(int id){
		List<Prezzo> data = new ArrayList<Prezzo>();
		DBObject query = BasicDBObjectBuilder.start()
				.append("idImpianto", id).get();
		DBCursor cursor = col.find(query);
		while (cursor.hasNext()) {
			DBObject doc = cursor.next();
			Prezzo p = PrezzoConverter.toPrezzo(doc);
			data.add(p);
		}
		return data;
	}
	
	public List<Prezzo> ricercaAvanzata(int id, double prezzo, String carburante){
		List<Prezzo> data = new ArrayList<Prezzo>();
		
		BasicDBObject andQuery = new BasicDBObject();
		List<BasicDBObject> obj = new ArrayList<BasicDBObject>();
		obj.add(new BasicDBObject("idImpianto", id));
		obj.add(new BasicDBObject("descCarburante", carburante));
		obj.add(new BasicDBObject("prezzo", new BasicDBObject("$lt", prezzo)));
		
		andQuery.put("$and", obj);

		DBCursor cursor = col.find(andQuery);
		while (cursor.hasNext()) {
			DBObject doc = cursor.next();
			Prezzo p = PrezzoConverter.toPrezzo(doc);
			data.add(p);		}
		return data;

	}

}
