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
 * Servlet implementation class RicercaStazioneComune
 */
@WebServlet("/RicercaStazioneComune")
public class RicercaStazioneComune extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RicercaStazioneComune() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String comune = request.getParameter("comune").toUpperCase();
		if ((comune == null || comune.equals(""))) {
			response.sendRedirect(request.getContextPath() + "/index.jsp");
		}else {
			MongoClient mongo = (MongoClient) request.getServletContext()
					.getAttribute("MONGO_CLIENT");
			MongoDBStazioneDAO stazioneDAO = new MongoDBStazioneDAO(mongo);
			List<Stazione> stazioni = stazioneDAO.ricercaStazioneComune(comune);
	
			request.getSession().setAttribute("stazioni", stazioni);
			
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
