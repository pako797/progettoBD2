package Beans;

public class MediaPrezzi {
	
	private String _id;
	private String data_rilevazione;
	private String prodotto_nome;
	private int prodotto_id;
	private double prezzo;
	private double accisa;
	private double iva;
	private double netto;
	private String variazione;
	
	public String get_id() {
		return _id;
	}

	public void set_id(String _id) {
		this._id = _id;
	}

	public String getData_rilevazione() {
		return data_rilevazione;
	}

	public void setData_rilevazione(String data_rilevazione) {
		this.data_rilevazione = data_rilevazione;
	}

	public int getProdotto_id() {
		return prodotto_id;
	}

	public void setProdotto_id(int prodotto_id) {
		this.prodotto_id = prodotto_id;
	}

	public double getPrezzo() {
		return prezzo;
	}

	public void setPrezzo(double prezzo) {
		this.prezzo = prezzo;
	}

	public double getAccisa() {
		return accisa;
	}

	public void setAccisa(double accisa) {
		this.accisa = accisa;
	}

	public double getIva() {
		return iva;
	}

	public void setIva(double iva) {
		this.iva = iva;
	}

	public double getNetto() {
		return netto;
	}

	public void setNetto(double netto) {
		this.netto = netto;
	}

	public String getVariazione() {
		return variazione;
	}

	public void setVariazione(String variazione) {
		this.variazione = variazione;
	}


	public MediaPrezzi() {
		// TODO Auto-generated constructor stub
		super();
	}

	public String getProdotto_nome() {
		return prodotto_nome;
	}

	public void setProdotto_nome(String prodotto_nome) {
		this.prodotto_nome = prodotto_nome;
	}

}
