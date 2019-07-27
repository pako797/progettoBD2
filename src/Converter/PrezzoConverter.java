package Converter;

import org.bson.types.ObjectId;

import com.mongodb.BasicDBObjectBuilder;
import com.mongodb.DBObject;

import Beans.Prezzo;


public class PrezzoConverter {
	
	public static DBObject toDbObject(Prezzo p) {
		BasicDBObjectBuilder builder = BasicDBObjectBuilder.start()
				.append("idImpianto", p.getIdImpianto())
				.append("descCarburante",p.getDescCarburante())
				.append("prezzo", p.getPrezzo())
				.append("isSelf", p.getIsSelf())
				.append("dtComu", p.getDtComu());
		
		
		if (p.getId() != null)
			builder = builder.append("_id", new ObjectId(p.getId()));
		return builder.get();
	}
	
	
	public static Prezzo toPrezzo(DBObject doc) {
		Prezzo p = new Prezzo();
		p.setIdImpianto((int) doc.get("idImpianto"));
		p.setDescCarburante((String) doc.get("descCarburante"));
		p.setPrezzo((double) doc.get("prezzo"));
		p.setIsSelf((int) doc.get("isSelf"));
		p.setDtComu((String) doc.get("dtComu"));
		ObjectId id = (ObjectId) doc.get("_id");
		p.setId(id.toString());
		return p;
	}

}
