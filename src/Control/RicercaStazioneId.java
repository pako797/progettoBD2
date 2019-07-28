package Control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mongodb.MongoClient;

import Beans.Stazione;
import database.MongoDBStazioneDAO;

/**
 * Servlet implementation class RicercaStazioneId
 */
@WebServlet("/RicercaStazioneId")
public class RicercaStazioneId extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RicercaStazioneId() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String idStazione = request.getParameter("id");
		int id = Integer.parseInt(idStazione);
		if ((idStazione == null || idStazione.equals(""))) {
			response.sendRedirect(request.getContextPath() + "/CercaImpianto.jsp");
		}else {
			MongoClient mongo = (MongoClient) request.getServletContext()
					.getAttribute("MONGO_CLIENT");
			MongoDBStazioneDAO stazioneDAO = new MongoDBStazioneDAO(mongo);
			Stazione stazione = stazioneDAO.ricercaStazioneId(id);
			
			request.getSession().setAttribute("stazione", stazione);
			
			response.sendRedirect(request.getContextPath() + "/GestisciImpianto.jsp");
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
