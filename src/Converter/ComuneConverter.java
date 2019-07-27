package Converter;

import org.bson.types.ObjectId;

import com.mongodb.BasicDBObjectBuilder;
import com.mongodb.DBObject;

import Beans.Comune;

public class ComuneConverter {
	public static DBObject toDbObject(Comune c) {
		BasicDBObjectBuilder builder = BasicDBObjectBuilder.start()
				.append("Comune", c.getComune());
		
		
		if (c.get_id() != null)
			builder = builder.append("_id", new ObjectId(c.get_id()));
		return builder.get();
	}
	
	
	public static Comune toComune(DBObject doc) {
		Comune c = new Comune();
		c.setComune((String) doc.get("Comune"));
		ObjectId id = (ObjectId) doc.get("_id");
		c.set_id(id.toString());
		return c;
	}

}
