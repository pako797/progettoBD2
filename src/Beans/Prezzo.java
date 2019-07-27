package Beans;

public class Prezzo {
	
	private String id;
	private int idImpianto;
	private String descrizione_impianto;
	private double prezzo; 
	private int isSelf; 
	private String dt_Comune;
	
	
	public Prezzo(String id, int idImpianto, String descrizione_impianto, double prezzo, int isSelf, String dt_Comune) {
		super();
		this.id = id;
		this.idImpianto = idImpianto;
		this.descrizione_impianto = descrizione_impianto;
		this.prezzo = prezzo;
		this.isSelf = isSelf;
		this.dt_Comune = dt_Comune;
	}

	

	public Prezzo() {
		super();
	}



	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
	}


	public int getIdImpianto() {
		return idImpianto;
	}


	public void setIdImpianto(int idImpianto) {
		this.idImpianto = idImpianto;
	}


	public String getDescrizione_impianto() {
		return descrizione_impianto;
	}


	public void setDescrizione_impianto(String descrizione_impianto) {
		this.descrizione_impianto = descrizione_impianto;
	}


	public double getPrezzo() {
		return prezzo;
	}


	public void setPrezzo(double prezzo) {
		this.prezzo = prezzo;
	}


	public int getIsSelf() {
		return isSelf;
	}


	public void setIsSelf(int isSelf) {
		this.isSelf = isSelf;
	}


	public String getDt_Comune() {
		return dt_Comune;
	}


	public void setDt_Comune(String dt_Comune) {
		this.dt_Comune = dt_Comune;
	}
	
	
	
	
	

}
