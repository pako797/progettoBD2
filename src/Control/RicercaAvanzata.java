package Control;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mongodb.MongoClient;

import Beans.Prezzo;
import Beans.Stazione;
import database.MongoDBPrezzoDAO;
import database.MongoDBStazioneDAO;

/**
 * Servlet implementation class RicercaAvanzata
 */
@WebServlet("/RicercaAvanzata")
public class RicercaAvanzata extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RicercaAvanzata() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String comune = request.getParameter("comune").toUpperCase();
		String carburante = request.getParameter("carburante");
		double prezzo = Double.parseDouble(request.getParameter("prezzo"));
		if ((comune == null || comune.equals(""))) {
			response.sendRedirect(request.getContextPath() + "/index.jsp");
		}else {
			MongoClient mongo = (MongoClient) request.getServletContext()
					.getAttribute("MONGO_CLIENT");
			MongoDBStazioneDAO stazioneDAO = new MongoDBStazioneDAO(mongo);
			MongoDBPrezzoDAO prezzoDAO = new MongoDBPrezzoDAO(mongo);

			List<Stazione> stazioni = stazioneDAO.ricercaStazioneComune(comune);
			
			for(Stazione temp : stazioni) {
				temp.setPrezziCarburante(prezzoDAO.ricercaAvanzata(temp.getIdImpianto(), prezzo,carburante));
			}
			
			request.getSession().setAttribute("ricercaAvanzata", stazioni);
			response.sendRedirect(request.getContextPath() + "/ricercaAvanzataRisultati.jsp");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
