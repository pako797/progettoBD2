package Control;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.catalina.tribes.group.interceptors.FragmentationInterceptor.FragCollection;

import com.mongodb.MongoClient;

import Beans.MediaPrezzi;
import database.MongoDBMediaPrezziDAO;
import database.MongoDBStazioneDAO;

/**
 * Servlet implementation class mediaPrezziMensili
 */
@WebServlet("/MediaPrezziMensili")
public class MediaPrezziMensili extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public MediaPrezziMensili() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		MongoClient mongo = (MongoClient) request.getServletContext().getAttribute("MONGO_CLIENT");
		MongoDBMediaPrezziDAO mediaPrezziDAO = new MongoDBMediaPrezziDAO(mongo);

		List<MediaPrezzi> media_prezzi_mensili_Luglio = new ArrayList<MediaPrezzi>();
		List<MediaPrezzi> media_prezzi_mensili_Giugno = new ArrayList<MediaPrezzi>();
		List<MediaPrezzi> media_prezzi_mensili_Maggio = new ArrayList<MediaPrezzi>();
		List<MediaPrezzi> media_prezzi_mensili_Aprile = new ArrayList<MediaPrezzi>();

		// Prezzi medi mensili mese di Luglio

		List<MediaPrezzi> prezzi_mensili_Luglio_benzina = mediaPrezziDAO
				.readMediaPrezziSettimanali("prezziSettimaneLuglio", mongo, "Benzina");
		media_prezzi_mensili_Luglio.add(calcolaMedia(prezzi_mensili_Luglio_benzina));

		List<MediaPrezzi> prezzi_mensili_Luglio_gasolio_auto = mediaPrezziDAO
				.readMediaPrezziSettimanali("prezziSettimaneLuglio", mongo, "Gasolio auto");
		media_prezzi_mensili_Luglio.add(calcolaMedia(prezzi_mensili_Luglio_gasolio_auto));

		List<MediaPrezzi> prezzi_mensili_Luglio_gpl = mediaPrezziDAO.readMediaPrezziSettimanali("prezziSettimaneLuglio",
				mongo, "GPL");
		media_prezzi_mensili_Luglio.add(calcolaMedia(prezzi_mensili_Luglio_gpl));

		List<MediaPrezzi> prezzi_mensili_Luglio_gasolio_riscaldamento = mediaPrezziDAO
				.readMediaPrezziSettimanali("prezziSettimaneLuglio", mongo, "Gasolio riscaldamento");
		media_prezzi_mensili_Luglio.add(calcolaMedia(prezzi_mensili_Luglio_gasolio_riscaldamento));

		List<MediaPrezzi> prezzi_mensili_Luglio_oc_fluido = mediaPrezziDAO
				.readMediaPrezziSettimanali("prezziSettimaneLuglio", mongo, "O.C. fluido BTZ S<=1%");
		media_prezzi_mensili_Luglio.add(calcolaMedia(prezzi_mensili_Luglio_oc_fluido));

		List<MediaPrezzi> prezzi_mensili_Luglio_oc_denso = mediaPrezziDAO
				.readMediaPrezziSettimanali("prezziSettimaneLuglio", mongo, "O.C. denso BTZ S>1%");
		media_prezzi_mensili_Luglio.add(calcolaMedia(prezzi_mensili_Luglio_oc_denso));

		// Prezzi medi mensili mese di Giugno

		List<MediaPrezzi> prezzi_mensili_Giugno_benzina = mediaPrezziDAO
				.readMediaPrezziSettimanali("prezziSettimanaGiugno", mongo, "Benzina");
		media_prezzi_mensili_Giugno.add(calcolaMedia(prezzi_mensili_Giugno_benzina));

		List<MediaPrezzi> prezzi_mensili_Giugno_gasolio_auto = mediaPrezziDAO
				.readMediaPrezziSettimanali("prezziSettimanaGiugno", mongo, "Gasolio auto");
		media_prezzi_mensili_Giugno.add(calcolaMedia(prezzi_mensili_Giugno_gasolio_auto));

		List<MediaPrezzi> prezzi_mensili_Giugno_gpl = mediaPrezziDAO.readMediaPrezziSettimanali("prezziSettimanaGiugno",
				mongo, "GPL");
		media_prezzi_mensili_Giugno.add(calcolaMedia(prezzi_mensili_Giugno_gpl));

		List<MediaPrezzi> prezzi_mensili_Giugno_gasolio_riscaldamento = mediaPrezziDAO
				.readMediaPrezziSettimanali("prezziSettimanaGiugno", mongo, "Gasolio riscaldamento");
		media_prezzi_mensili_Giugno.add(calcolaMedia(prezzi_mensili_Giugno_gasolio_riscaldamento));

		List<MediaPrezzi> prezzi_mensili_Giugno_oc_fluido = mediaPrezziDAO
				.readMediaPrezziSettimanali("prezziSettimanaGiugno", mongo, "O.C. fluido BTZ S<=1%");
		media_prezzi_mensili_Giugno.add(calcolaMedia(prezzi_mensili_Giugno_oc_fluido));

		List<MediaPrezzi> prezzi_mensili_Giugno_oc_denso = mediaPrezziDAO
				.readMediaPrezziSettimanali("prezziSettimanaGiugno", mongo, "O.C. denso BTZ S>1%");
		media_prezzi_mensili_Giugno.add(calcolaMedia(prezzi_mensili_Giugno_oc_denso));

		// Prezzi medi mensili mese di Aprile

		List<MediaPrezzi> prezzi_mensili_Aprile_benzina = mediaPrezziDAO
				.readMediaPrezziSettimanali("prezziSettimanaAprile", mongo, "Benzina");
		media_prezzi_mensili_Aprile.add(calcolaMedia(prezzi_mensili_Aprile_benzina));

		List<MediaPrezzi> prezzi_mensili_Aprile_gasolio_auto = mediaPrezziDAO
				.readMediaPrezziSettimanali("prezziSettimanaAprile", mongo, "Gasolio auto");
		media_prezzi_mensili_Aprile.add(calcolaMedia(prezzi_mensili_Aprile_gasolio_auto));

		List<MediaPrezzi> prezzi_mensili_Aprile_gpl = mediaPrezziDAO.readMediaPrezziSettimanali("prezziSettimanaAprile",
				mongo, "GPL");
		media_prezzi_mensili_Aprile.add(calcolaMedia(prezzi_mensili_Aprile_gpl));

		List<MediaPrezzi> prezzi_mensili_Aprile_gasolio_riscaldamento = mediaPrezziDAO
				.readMediaPrezziSettimanali("prezziSettimanaAprile", mongo, "Gasolio riscaldamento");
		media_prezzi_mensili_Aprile.add(calcolaMedia(prezzi_mensili_Aprile_gasolio_riscaldamento));

		List<MediaPrezzi> prezzi_mensili_Aprile_oc_fluido = mediaPrezziDAO
				.readMediaPrezziSettimanali("prezziSettimanaAprile", mongo, "O.C. fluido BTZ S<=1%");
		media_prezzi_mensili_Aprile.add(calcolaMedia(prezzi_mensili_Aprile_oc_fluido));

		List<MediaPrezzi> prezzi_mensili_Aprile_oc_denso = mediaPrezziDAO
				.readMediaPrezziSettimanali("prezziSettimanaAprile", mongo, "O.C. denso BTZ S>1%");
		media_prezzi_mensili_Aprile.add(calcolaMedia(prezzi_mensili_Aprile_oc_denso));
		
		
		// Prezzi medi mensili mese di Maggio

				List<MediaPrezzi> prezzi_mensili_Maggio_benzina = mediaPrezziDAO
						.readMediaPrezziSettimanali("prezziSettimanaMaggio", mongo, "Benzina");
				media_prezzi_mensili_Maggio.add(calcolaMedia(prezzi_mensili_Maggio_benzina));

				List<MediaPrezzi> prezzi_mensili_Maggio_gasolio_auto = mediaPrezziDAO
						.readMediaPrezziSettimanali("prezziSettimanaMaggio", mongo, "Gasolio auto");
				media_prezzi_mensili_Maggio.add(calcolaMedia(prezzi_mensili_Maggio_gasolio_auto));

				List<MediaPrezzi> prezzi_mensili_Maggio_gpl = mediaPrezziDAO.readMediaPrezziSettimanali("prezziSettimanaMaggio",
						mongo, "GPL");
				media_prezzi_mensili_Maggio.add(calcolaMedia(prezzi_mensili_Maggio_gpl));

				List<MediaPrezzi> prezzi_mensili_Maggio_gasolio_riscaldamento = mediaPrezziDAO
						.readMediaPrezziSettimanali("prezziSettimanaMaggio", mongo, "Gasolio riscaldamento");
				media_prezzi_mensili_Maggio.add(calcolaMedia(prezzi_mensili_Maggio_gasolio_riscaldamento));

				List<MediaPrezzi> prezzi_mensili_Maggio_oc_fluido = mediaPrezziDAO
						.readMediaPrezziSettimanali("prezziSettimanaMaggio", mongo, "O.C. fluido BTZ S<=1%");
				media_prezzi_mensili_Maggio.add(calcolaMedia(prezzi_mensili_Maggio_oc_fluido));

				List<MediaPrezzi> prezzi_mensili_Maggio_oc_denso = mediaPrezziDAO
						.readMediaPrezziSettimanali("prezziSettimanaMaggio", mongo, "O.C. denso BTZ S>1%");
				media_prezzi_mensili_Maggio.add(calcolaMedia(prezzi_mensili_Maggio_oc_denso));
				
				
				
		

		request.getSession().setAttribute("media_prezzi_mensili_Luglio", media_prezzi_mensili_Luglio);
		request.getSession().setAttribute("media_prezzi_mensili_Giugno", media_prezzi_mensili_Giugno);
		request.getSession().setAttribute("media_prezzi_mensili_Aprile", media_prezzi_mensili_Aprile);
		request.getSession().setAttribute("media_prezzi_mensili_Maggio", media_prezzi_mensili_Maggio);


		response.sendRedirect(request.getContextPath() + "/media_mensile.jsp");

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

	private MediaPrezzi calcolaMedia(List<MediaPrezzi> prezzi_mensiList) {
		double somma_prezzo = 0, somma_accise = 0, somma_iva = 0, somma_netto = 0, somma_variazione = 0;

		MediaPrezzi tempList = new MediaPrezzi();

		for (MediaPrezzi data : prezzi_mensiList) {
			somma_prezzo += data.getPrezzo();
			somma_accise += data.getAccisa();
			somma_iva += data.getIva();
			somma_netto += data.getNetto();
			somma_variazione += data.getVariazione();
		}

		somma_prezzo = (somma_prezzo) / 5;
		somma_accise = (somma_accise) / 5;
		somma_iva = (somma_iva) / 5;
		somma_netto = (somma_netto) / 5;
		somma_variazione = (somma_variazione) / 5;

		tempList.setPrezzo(somma_prezzo);
		tempList.setAccisa(somma_accise);
		tempList.setIva(somma_iva);
		tempList.setNetto(somma_netto);
		tempList.setVariazione(somma_variazione);
		tempList.setProdotto_nome(prezzi_mensiList.get(0).getProdotto_nome());

		return tempList;
	}

}
