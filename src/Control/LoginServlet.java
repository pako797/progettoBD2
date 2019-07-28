package Control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mongodb.MongoClient;

import Beans.Admin;
import Beans.Stazione;
import Encrypt.PasswordUtils;
import database.MongoDBStazioneDAO;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String user = request.getParameter("user");
		String password = request.getParameter("password");
		 // Password crittografata e codificata Base64 letta dal database
        String securePassword = "jMiczskVNJynpcxxnOtfMGuR7mLWeqv9KtNUJccqYRw=" ;
        String salt = "C6voika9jn0PISOUTaThxBvfwDtLih" ;
        
        boolean passwordMatch = PasswordUtils.verifyUserPassword(password, securePassword, salt);
        

        if (passwordMatch && user.equals("root")) 
        {
            System.out.println("Password utente fornita" + password + "è corretta.");
            Admin admin= new Admin(user, password);
            request.getSession().setAttribute("admin", admin);
			response.sendRedirect(request.getContextPath() + "/index.jsp");
        } 
        else {
            System.out.println("La password fornita non è corretta");
        }
	}

}
