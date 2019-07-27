package Beans;

public class Stazione {
	
	private String id;
	private int idImpianto;
	private String gestore;
	private String bandiera;
	private String tipo_impianto;
	private String nome_impianto;
	private String indirizzo;
	private String comune;
	private String provincia;
	private String latitudine;
	private String longitudine;
	
	
	
	public Stazione(String id, int idImpianto, String gestore, String bandiera, String tipo_impianto,
			String nome_impianto, String indirizzo, String comune, String provincia, String latitudine,
			String longitudine) {
		super();
		this.id = id;
		this.idImpianto = idImpianto;
		this.gestore = gestore;
		this.bandiera = bandiera;
		this.tipo_impianto = tipo_impianto;
		this.nome_impianto = nome_impianto;
		this.indirizzo = indirizzo;
		this.comune = comune;
		this.provincia = provincia;
		this.latitudine = latitudine;
		this.longitudine = longitudine;
	}
	
	



	public Stazione() {
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



	public String getGestore() {
		return gestore;
	}



	public void setGestore(String gestore) {
		this.gestore = gestore;
	}



	public String getBandiera() {
		return bandiera;
	}



	public void setBandiera(String bandiera) {
		this.bandiera = bandiera;
	}



	public String getTipo_impianto() {
		return tipo_impianto;
	}



	public void setTipo_impianto(String tipo_impianto) {
		this.tipo_impianto = tipo_impianto;
	}



	public String getNome_impianto() {
		return nome_impianto;
	}



	public void setNome_impianto(String nome_impianto) {
		this.nome_impianto = nome_impianto;
	}



	public String getIndirizzo() {
		return indirizzo;
	}



	public void setIndirizzo(String indirizzo) {
		this.indirizzo = indirizzo;
	}



	public String getComune() {
		return comune;
	}



	public void setComune(String comune) {
		this.comune = comune;
	}



	public String getProvincia() {
		return provincia;
	}



	public void setProvincia(String provincia) {
		this.provincia = provincia;
	}



	public String getLatidudine() {
		return latitudine;
	}



	public void setLatidudine(String latitudine) {
		this.latitudine = latitudine;
	}



	public String getLongitudine() {
		return longitudine;
	}



	public void setLongitudine(String longitudine) {
		this.longitudine = longitudine;
	}
	
	

}
