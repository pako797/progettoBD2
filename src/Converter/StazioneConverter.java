package Converter;

import org.bson.types.ObjectId;

import com.mongodb.BasicDBObjectBuilder;
import com.mongodb.DBObject;

import Beans.Stazione;

public class StazioneConverter {

	public static DBObject toDbObject(Stazione s) {
		BasicDBObjectBuilder builder = BasicDBObjectBuilder.start()
				.append("idImpianto", s.getIdImpianto())
				.append("gestore",s.getGestore())
				.append("bandiera", s.getBandiera())
				.append("tipo_impianto", s.getTipo_impianto())
				.append("nome_impianto", s.getNome_impianto())
				.append("indirizzo", s.getIndirizzo())
				.append("comune", s.getComune())
				.append("provincia", s.getProvincia())
				.append("latitudine", s.getLatidudine())
				.append("longitudine", s.getLongitudine());
		
		
		if (s.getId() != null)
			builder = builder.append("_id", new ObjectId(s.getId()));
		return builder.get();
	}
	
	
	public static Stazione toStazione(DBObject doc) {
		Stazione s = new Stazione();
		s.setIdImpianto((int) doc.get("idImpianto"));
		s.setGestore((String) doc.get("gestore"));
		s.setBandiera((String) doc.get("bandiera"));
		s.setTipo_impianto((String) doc.get("tipo_impianto"));
		s.setNome_impianto((String) doc.get("nome_impianto"));
		s.setIndirizzo((String) doc.get("indirizzo"));
		s.setComune((String) doc.get("comune"));
		s.setProvincia((String) doc.get("provincia"));
		s.setLatidudine((String) doc.get("latitudine"));
		s.setLongitudine((String) doc.get("longitudine"));
		ObjectId id = (ObjectId) doc.get("_id");
		s.setId(id.toString());
		return s;

	}

}
