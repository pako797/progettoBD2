package Converter;

import org.bson.types.ObjectId;

import com.mongodb.BasicDBObjectBuilder;
import com.mongodb.DBObject;

import Beans.Prezzo;


public class PrezzoConverter {
	
	public static DBObject toDbObject(Prezzo p) {
		BasicDBObjectBuilder builder = BasicDBObjectBuilder.start()
				.append("idImpianto", p.getIdImpianto())
				.append("descrizione_impianto",p.getDescrizione_impianto())
				.append("prezzo", p.getPrezzo())
				.append("isSelf", p.getIsSelf())
				.append("dt_Comune", p.getDt_Comune());
		
		
		if (p.getId() != null)
			builder = builder.append("_id", new ObjectId(p.getId()));
		return builder.get();
	}
	
	
	public static Prezzo toPrezzo(DBObject doc) {
		Prezzo p = new Prezzo();
		p.setIdImpianto((int) doc.get("idImpianto"));
		p.setDescrizione_impianto((String) doc.get("descrizione_impianto"));
		p.setPrezzo((double) doc.get("prezzo"));
		p.setIsSelf((int) doc.get("isSelf"));
		p.setDt_Comune((String) doc.get("dt_Comune"));
		ObjectId id = (ObjectId) doc.get("_id");
		p.setId(id.toString());
		return p;
	}

}
