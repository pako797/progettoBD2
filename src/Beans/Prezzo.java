package Beans;

public class Prezzo {
	
	private String _id;
	private int idImpianto;
	private String descCarburante;
	private double prezzo; 
	private int isSelf; 
	private String dtComu;
	
	
	
	
	
	
	public Prezzo() {
		super();
	}
	public String getId() {
		return _id;
	}
	public void setId(String id) {
		this._id = id;
	}
	public int getIdImpianto() {
		return idImpianto;
	}
	public void setIdImpianto(int idImpianto) {
		this.idImpianto = idImpianto;
	}
	public String getDescCarburante() {
		return descCarburante;
	}
	public void setDescCarburante(String descCarburante) {
		this.descCarburante = descCarburante;
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
	public String getDtComu() {
		return dtComu;
	}
	public void setDtComu(String dtComu) {
		this.dtComu = dtComu;
	}
	
	
	
	
}