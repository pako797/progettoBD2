package database;

import org.bson.types.ObjectId;

import com.mongodb.DBCollection;
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


	}
