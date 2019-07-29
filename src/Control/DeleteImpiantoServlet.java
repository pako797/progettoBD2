package Control;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;
import javax.servlet.RequestDispatcher;
import com.mongodb.MongoClient;

import Beans.Stazione;
import database.MongoDBStazioneDAO;

/**
 * Servlet implementation class DeleteImpiantoServlet
 */
@WebServlet("/DeleteImpiantoServlet")
public class DeleteImpiantoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteImpiantoServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id = request.getParameter("id");
		MongoClient mongo = (MongoClient) request.getServletContext()
				.getAttribute("MONGO_CLIENT");
		MongoDBStazioneDAO stazioneDAO = new MongoDBStazioneDAO(mongo);
		Stazione s = new Stazione();
		s.setId(id);
		stazioneDAO.deleteStazione(s);
		System.out.println("Person deleted successfully with id=" + id);
		request.setAttribute("success", "Person deleted successfully");
		List<Stazione> stazioni = stazioneDAO.readAllStazioni();
		request.setAttribute("stazioni", stazioni);
		response.sendRedirect(request.getContextPath() + "/ricercaComune.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
