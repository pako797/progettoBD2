package database;

import java.util.ArrayList;
import java.util.List;

import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import com.mongodb.DBObject;
import com.mongodb.MongoClient;

import Beans.Province;
import Beans.Stazione;
import Converter.ProvinceConverter;
import Converter.StazioneConverter;

public class MongoDBProvinceDAO {
	
	private DBCollection col;

	public MongoDBProvinceDAO(MongoClient mongo) {
		this.col = mongo.getDB("carburante").getCollection("province");
	}
	
	
	public List<Province> readAllProvince() {
		List<Province> data = new ArrayList<Province>();
		DBCursor cursor = col.find();
		while (cursor.hasNext()) {
			DBObject doc = cursor.next();
			Province p = ProvinceConverter.toProvince(doc);
			data.add(p);
		}
		return data;
	}


}
