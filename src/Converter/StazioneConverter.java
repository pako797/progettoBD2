package Converter;

import org.bson.types.ObjectId;

import com.mongodb.BasicDBObjectBuilder;
import com.mongodb.DBObject;

import Beans.Stazione;

public class StazioneConverter {

	public static DBObject toDbObject(Stazione s) {
		BasicDBObjectBuilder builder = BasicDBObjectBuilder.start()
				.append("idImpianto", s.getIdImpianto())
				.append("Gestore",s.getGestore())
				.append("Bandiera", s.getBandiera())
				.append("TipoImpianto", s.getIdImpianto())
				.append("NomeImpianto", s.getIdImpianto())
				.append("Indirizzo", s.getIndirizzo())
				.append("Comune", s.getComune())
				.append("Provincia", s.getProvincia())
				.append("Latitudine", s.getLatitudine())
				.append("Longitudine", s.getLongitudine());
		
		
		if (s.getId() != null)
			builder = builder.append("_id", new ObjectId(s.getId()));
		return builder.get();
	}
	
	
	public static Stazione toStazione(DBObject doc) {
		Stazione s = new Stazione();
		s.setIdImpianto((int) doc.get("idImpianto"));
		s.setGestore((String) doc.get("Gestore"));
		s.setBandiera((String) doc.get("Bandiera"));
		s.setTipoImpianto((String) doc.get("TipoImpianto"));
		s.setNomeImpianto((String) (doc.get("NomeImpianto")+""));
		System.out.println(doc.get("NomeImpianto"));
		s.setIndirizzo((String) doc.get("Indirizzo"));
		s.setComune((String) doc.get("Comune"));
		s.setProvincia((String) doc.get("Provincia"));
		s.setLatitudine((String) doc.get("Latitudine"));
		s.setLongitudine((String) doc.get("Longitudine"));
		ObjectId id = (ObjectId) doc.get("_id");
		s.setId(id.toString());
		return s;

	}

}
