package database;

import java.util.ArrayList;
import java.util.List;

import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import com.mongodb.DBObject;
import com.mongodb.MongoClient;

import Beans.Comune;
import Beans.Stazione;
import Converter.ComuneConverter;
import Converter.StazioneConverter;

public class MongoDBComuneDAO {
	
	private DBCollection col;

	public MongoDBComuneDAO(MongoClient mongo) {
		this.col = mongo.getDB("carburante").getCollection("comuni");
	}

	public List<Comune> readAllComuni() {
		List<Comune> data = new ArrayList<Comune>();
		DBCursor cursor = col.find();
		while (cursor.hasNext()) {
			DBObject doc = cursor.next();
			Comune c = ComuneConverter.toComune(doc);
			data.add(c);
		}
		return data;
	}
}
