package database;

import java.util.ArrayList;
import java.util.List;

import org.bson.types.ObjectId;

import com.mongodb.BasicDBObjectBuilder;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import com.mongodb.DBObject;
import com.mongodb.MongoClient;

import Beans.Stazione;
import Converter.StazioneConverter;

public class MongoDBStazioneDAO {
	

		private DBCollection col;

		public MongoDBStazioneDAO(MongoClient mongo) {
			this.col = mongo.getDB("carburante").getCollection("stazioni");
		}

		public Stazione createStazione(Stazione s) {
			DBObject doc = StazioneConverter.toDbObject(s);
			this.col.insert(doc);
			ObjectId id = (ObjectId) doc.get("_id");
			s.setId(id.toString());
			return s;
		}
		
		
		public List<Stazione> ricercaStazioneComune(String comune) {
			List<Stazione> data = new ArrayList<Stazione>();
			DBObject query = BasicDBObjectBuilder.start()
					.append("Comune", comune).get();
			DBCursor cursor = col.find(query);
			while (cursor.hasNext()) {
				DBObject doc = cursor.next();
				Stazione s = StazioneConverter.toStazione(doc);
				data.add(s);
			}
			return data;
		}


	}