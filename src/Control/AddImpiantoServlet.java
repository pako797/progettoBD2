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
 * Servlet implementation class AddImpiantoServlet
 */
@WebServlet("/AddImpiantoServlet")
public class AddImpiantoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddImpiantoServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int id= Integer.parseInt(request.getParameter("id"));
		String gestore = request.getParameter("gestore");
		String bandiera = request.getParameter("bandiera");
		String tipo = request.getParameter("tipo");
		String nome = request.getParameter("nome");
		String indirizzo = request.getParameter("indirizzo");
		String comune = request.getParameter("comune");
		String provincia = request.getParameter("provincia");
		String latitudine = "3.732.621.304.542.850";
		String longitudine = "13.591.846.078.634.200";
		if ((gestore == null || gestore.equals(""))
				|| (bandiera == null || bandiera.equals(""))) {
			request.setAttribute("error", "Mandatory Parameters Missing");
			RequestDispatcher rd = getServletContext().getRequestDispatcher(
					"/persons.jsp");
			rd.forward(request, response);
		} else {
			Stazione s = new Stazione();
			s.setIdImpianto(id);
			s.setGestore(gestore);
			s.setBandiera(bandiera);
			s.setTipoImpianto(tipo);
			s.setNomeImpianto(nome);
			s.setIndirizzo(indirizzo);
			s.setComune(comune);
			s.setProvincia(provincia);
			s.setLatitudine(latitudine);
			s.setLongitudine(longitudine);
			System.out.println(s.getNomeImpianto());
			MongoClient mongo = (MongoClient) request.getServletContext().getAttribute("MONGO_CLIENT");
			MongoDBStazioneDAO stazioneDAO = new MongoDBStazioneDAO(mongo);
			stazioneDAO.createStazione(s);
			System.out.println("Person Added Successfully with id="+s.getId());
			request.setAttribute("success", "Person Added Successfully");
			List<Stazione> stazioni = stazioneDAO.readAllStazioni();

			request.getSession().setAttribute("stazioni", stazioni);
			response.sendRedirect(request.getContextPath() + "/AggiungiImpianto.jsp");

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
