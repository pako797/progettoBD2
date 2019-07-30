package Converter;

import org.bson.types.ObjectId;

import com.mongodb.BasicDBObjectBuilder;
import com.mongodb.DBObject;

import Beans.MediaPrezzi;

public class MediaPrezziConverter {
	
	public static DBObject toDbObject(MediaPrezzi c) {
		BasicDBObjectBuilder builder = BasicDBObjectBuilder.start()
				.append("DATA_RILEVAZIONE", c.getData_rilevazione())
				.append("PRODOTTO_ID", c.getProdotto_id())
				.append("PRODOTTO_NOME", c.getProdotto_nome())
				.append("PREZZO",c.getPrezzo())
				.append("ACCISA", c.getAccisa())
				.append("IVA", c.getIva())
				.append("NETTO", c.getNetto())
				.append("VARIAZIONE", c.getVariazione());
		
		
		if (c.get_id() != null)
			builder = builder.append("_id", new ObjectId(c.get_id()));
		return builder.get();
	}
	
	
	public static MediaPrezzi toMediaPrezzi(DBObject doc) {
		MediaPrezzi c = new MediaPrezzi();
		c.setData_rilevazione((String) doc.get("DATA_RILEVAZIONE"));
		c.setProdotto_id((Integer) doc.get("PRODOTTO_ID"));
		c.setProdotto_nome((String) doc.get("PRODOTTO_NOME"));
		c.setPrezzo((Double) doc.get("PREZZO"));
		c.setAccisa((Double) doc.get("ACCISA"));
		c.setIva((Integer) doc.get("IVA"));
		c.setNetto((Double) doc.get("NETTO"));
		c.setVariazione((Double) doc.get("VARIAZIONE"));
		ObjectId id = (ObjectId) doc.get("_id");
		c.set_id(id.toString());
		return c;
	}

}
