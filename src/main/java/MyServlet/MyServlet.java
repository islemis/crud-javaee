package MyServlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Entities.utilisateur;




/**
 * Servlet implementation class MyServlet
 */
@WebServlet("/MyServlet")
public class MyServlet extends HttpServlet {

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		request.getRequestDispatcher("login.html").forward(request, response);
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String L=request.getParameter("name");
		String p=request.getParameter("password");
		utilisateur u= new utilisateur();
		u.setPassword(p);
		u.setName(L);
		String resultat="welcome  "+L;
		if(u.verifierIdentifiants()) {
			request.setAttribute("resultat", resultat);
			request.getRequestDispatcher("produits.jsp").forward(request, response);
		}
		else {
			request.getRequestDispatcher("login.html").forward(request, response);
		}
	}

}
