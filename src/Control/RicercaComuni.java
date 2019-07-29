package Control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mongodb.MongoClient;

import Beans.Comune;
import Beans.Stazione;
import database.MongoDBComuneDAO;

/**
 * Servlet implementation class RicercaAvanzata
 */
@WebServlet("/RicercaComuni")
public class RicercaComuni extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RicercaComuni() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
String provincia = request.getParameter("provincia").trim();
		
		if ((provincia == null || provincia.equals(""))) {
			response.sendRedirect(request.getContextPath() + "/index.jsp");
		}else {
			MongoClient mongo = (MongoClient) request.getServletContext()
					.getAttribute("MONGO_CLIENT");
			MongoDBComuneDAO comuneDAO = new MongoDBComuneDAO(mongo);
			List<Comune> comuni = comuneDAO.getComunebyProvincia(provincia);
			
			String data=null;
			String t=null;
			
			for (Comune temp : comuni) {
			
					t = "<option>"+temp.getComune()+"</option>";
			
				if(data!=null) {
				data= data + t;
				}
				else {
					data=t;
				}
			};
			
			
			response.setContentType("text/plain");
			response.getWriter().write(data);

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
