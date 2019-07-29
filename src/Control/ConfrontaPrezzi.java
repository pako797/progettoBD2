package Control;

import java.io.IOException;
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
 * Servlet implementation class ConfrontaPrezzi
 */
@WebServlet("/ConfrontaPrezzi")
public class ConfrontaPrezzi extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ConfrontaPrezzi() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Boolean confronto = (Boolean) request.getSession().getAttribute("confronto");
		
		if(confronto != null && confronto.booleanValue() == true) {
			
			int id = Integer.parseInt(request.getParameter("id"));

			
			MongoClient mongo = (MongoClient) request.getServletContext()
					.getAttribute("MONGO_CLIENT");
			MongoDBStazioneDAO stazioneDAO = new MongoDBStazioneDAO(mongo);
			
			MongoDBPrezzoDAO prezzoDAO = new MongoDBPrezzoDAO(mongo);

			
			
			Stazione s = stazioneDAO.ricercaStazioneId(id);
			s.setPrezziCarburante(prezzoDAO.ricercaPrezziStazione(id));
		
			request.getSession().setAttribute("stazioneConfronto", s);
			
			response.sendRedirect(request.getContextPath() + "/comparazione.jsp");
						
		}else {
			request.getSession().setAttribute("confronto", true);
			response.sendRedirect(request.getContextPath() + "/ricercaComune.jsp");
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
