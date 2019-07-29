package Converter;

import org.bson.types.ObjectId;

import com.mongodb.BasicDBObjectBuilder;
import com.mongodb.DBObject;

import Beans.Prezzo;
import Beans.Province;

public class ProvinceConverter {
	
	
	public static DBObject toDbObject(Province p) {
		BasicDBObjectBuilder builder = BasicDBObjectBuilder.start()
				.append("Sigla", p.getSigla());
		
		
		if (p.get_id() != null)
			builder = builder.append("_id", new ObjectId(p.getSigla()));
		return builder.get();
	}
	
	
	public static Province toProvince(DBObject doc) {
		Province p = new Province();
		p.setSigla((String) doc.get("Sigla"));
		ObjectId id = (ObjectId) doc.get("_id");
		p.set_id(id.toString());
		return p;
	}

}
