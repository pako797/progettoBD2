package database;

import java.util.HashMap;

import org.bson.Document;
import org.bson.conversions.Bson;

import com.mongodb.MongoClient;
import com.mongodb.client.FindIterable;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoCursor;
import com.mongodb.client.MongoDatabase;

public class MongoConnection {
	
	private MongoDatabase database;

	public MongoConnection() {
		// TODO Auto-generated constructor stub
		try {
		MongoClient mC=new MongoClient("localhost",27017);
		database = mC.getDatabase("carburante");
		 for (String name : database.listCollectionNames()) {
	            System.out.println(name);
	        }
	    
		
		}
		catch(Exception e) {
			System.out.println(e);
		}
	}
	
	public void findElement(String collection, String comune, String provincia){
	MongoCollection<Document> personaCollection = database.getCollection(collection);
		
		//Recupero di un documento
        HashMap<String,Object> filterMap = new HashMap<>();
        filterMap.put("Comune", comune);
        filterMap.put("Provincia", provincia);
        
        //Costruzione documento filtro
        Bson filter = new Document(filterMap);
        FindIterable<Document> docIterator = personaCollection.find().filter(filter);
        MongoCursor<Document> mongoCursor = docIterator.iterator();

        while(mongoCursor.hasNext()) {
        System.out.println(mongoCursor.next());
        }
	}
	
	public void addElement(String collection) {
		MongoCollection<Document> personaCollection = database.getCollection(collection);
	        Document document = new Document();
	        document.put("Nome", "Mario");
	        document.put("Cognome", "Rossi");
	        document.put("Età", "34");
	        document.put("Lavoro", "Impiegato");
	        personaCollection.insertOne(document);
        for(Document document1 : personaCollection.find()){
        	System.out.println(document1);
        }
	}
	
	public void updateCollection(String collection, String val1, String val2, String newVal) {
		
		MongoCollection<Document> personaCollection = database.getCollection(collection);
		
		//Recupero di un documento
        HashMap<String,Object> filterMap = new HashMap<>();
        filterMap.put(val1, val2);
        
        //Costruzione documento filtro
        Bson filter = new Document(filterMap);
        FindIterable<Document> docIterator = personaCollection.find().filter(filter);
        MongoCursor<Document> mongoCursor = docIterator.iterator();

        /*Procediamo subito con il next per questo test,
          sappiamo di trovare un solo documento*/
        Document personaDoc = mongoCursor.next();
        
        //Costruzione documento filtro
        Bson newValue = new Document(val1, newVal);
        
        //Costruzione documento di aggiornamento
        Bson updateDocument = new Document("$set", newValue);
        
        //Aggiornamento
        personaCollection.updateOne(personaDoc, updateDocument);

	}
	
	public void deleteElement(String collection, String val1, String val2) {
		
		MongoCollection<Document> fuelCollection = database.getCollection(collection);
		
		//Recupero di un documento
        HashMap<String,Object> filterMap = new HashMap<>();
        filterMap.put(val1, val2);
        
        //Costruzione documento filtro
        Bson filter = new Document(filterMap);
        FindIterable<Document> docIterator = fuelCollection.find().filter(filter);
        MongoCursor<Document> mongoCursor = docIterator.iterator();
        
        /*Procediamo subito con il next per questo test,
        sappiamo di trovare un solo documento*/
        Document fuelDoc = mongoCursor.next();
        
		/*Costruzione nuovo documento filtro*/
        filterMap.clear();
        filterMap.put(val1, val2);
        filter = new Document(filterMap);
        /*Recupero documento modificato*/
        docIterator = fuelCollection.find().filter(filter);
        mongoCursor = docIterator.iterator();
        /*Cancellazione documento*/
        if(mongoCursor.hasNext()) {
        	fuelDoc = mongoCursor.next();
         fuelCollection.deleteOne(fuelDoc);
         System.out.println("Documento cancellato");
        }
	}

}