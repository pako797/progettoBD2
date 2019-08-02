package Control;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
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
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String data = (String) request.getParameter("data");

		if (data == null || data.equalsIgnoreCase("")) {
			response.sendRedirect(request.getContextPath() + "/index.jsp");
		} else {

			String temp = data.substring(8, 10) + "/" + data.substring(5, 7) + "/" + data.substring(0, 4);

			MongoClient mongo = (MongoClient) request.getServletContext().getAttribute("MONGO_CLIENT");
			MongoDBMediaPrezziDAO mediaPrezziDAO = new MongoDBMediaPrezziDAO(mongo);

			List<MediaPrezzi> m = new ArrayList<MediaPrezzi>();

			if (data.substring(5, 7).equalsIgnoreCase("04")) {
				m = mediaPrezziDAO.readAllMediaPrezzi(temp,"prezziSettimanaAprile",mongo);
			}else if(data.substring(5, 7).equalsIgnoreCase("05")) {
				m = mediaPrezziDAO.readAllMediaPrezzi(temp,"prezziSettimanaMaggio",mongo);

			}else if(data.substring(5, 7).equalsIgnoreCase("06")) {
				m = mediaPrezziDAO.readAllMediaPrezzi(temp,"prezziSettimanaGiugno",mongo);

			}else {
				m = mediaPrezziDAO.readAllMediaPrezzi(temp,"prezziSettimaneLuglio",mongo);
			}

			request.getSession().setAttribute("mediaLuglio", m);
			response.sendRedirect(request.getContextPath() + "/mediasettimanale.jsp");
		}

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

}
