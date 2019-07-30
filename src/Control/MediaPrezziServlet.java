package Control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mongodb.MongoClient;

import Beans.MediaPrezzi;
import database.MongoDBMediaPrezziDAO;
import database.MongoDBStazioneDAO;

/**
 * Servlet implementation class MediaPrezziServlet
 */
@WebServlet("/MediaPrezziServlet")
public class MediaPrezziServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MediaPrezziServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MongoClient mongo = (MongoClient) request.getServletContext().getAttribute("MONGO_CLIENT");
		MongoDBMediaPrezziDAO mediaPrezziDAO = new MongoDBMediaPrezziDAO(mongo);
		List<MediaPrezzi> m=  mediaPrezziDAO.readAllMediaPrezzi();
	
		request.getSession().setAttribute("mediaLuglio", m);
		response.sendRedirect(request.getContextPath() + "/mediasettimanale.jsp");

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
