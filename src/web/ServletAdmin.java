package web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.Admin;
import dao.IAdminDAO;
import dao.IAdminDaoImpl;


/**
 * Servlet implementation class ServletLogin
 */
@WebServlet(urlPatterns = {"/ConnexionAdmin","/logout","/ajouterAdmin","/listeAdmin","/supprimerAdmin","/Jaguar"})
public class ServletAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;
	

	private IAdminDAO adminMetier = new IAdminDaoImpl();
	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ServletAdmin() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 if(request.getCharacterEncoding() == null)
		    {
		        request.setCharacterEncoding("UTF-8");
		    }
		HttpSession session =request.getSession(); 
		//Connexion de l'admin 
		if (request.getServletPath().equals("/ConnexionAdmin")) {
			if(adminMetier.login(request.getParameter("email"), request.getParameter("password"))){
				Admin ad= adminMetier.getAdmin(request.getParameter("email"), request.getParameter("password"));
				
				session.setAttribute("admin", ad.getNom());
				request.getRequestDispatcher("/Admin/index.jsp").forward(request, response); 		    	 
			}
			else {
				session.setAttribute("admin", null);
				int testA = 1 ; 
				String erreurA = "Mot de passe ou nom d'utilisateur incorrect ! ";
				session.setAttribute("testA", testA);
				session.setAttribute("eA", erreurA);
				System.out.println(erreurA);
				request.getRequestDispatcher("/Admin/adminLogin.jsp").forward(request, response);

			}
		}
		// Ajouter un admin
		if(request.getServletPath().equals("/ajouterAdmin")){	 
			Admin ca = new Admin();
			ca.setEmail(request.getParameter("email"));
			ca.setPassword(request.getParameter("mdp"));
			ca.setNom(request.getParameter("nom"));
			adminMetier.ajouterAdmin(ca);
			request.setAttribute("ad", " active");
			request.setAttribute("gestion", " menu-open");
			this.getServletContext().getRequestDispatcher("/listeAdmin").forward(request, response);
		}
		// Lister les admin
		if (request.getServletPath().equals("/listeAdmin")) { 
			request.setAttribute("Admin", adminMetier.listeAdmin());
			request.setAttribute("ad", " active");
			request.setAttribute("gestion", " menu-open");
			this.getServletContext().getRequestDispatcher("/Admin/gestionAdmin.jsp").forward(request, response);
		}

		//Supprimer un admin
		if (request.getServletPath().equals("/supprimerAdmin")) {
			int idCategory = Integer.parseInt(request.getParameter("id"));
			if (idCategory != 1)
				adminMetier.supprimerAdmin(idCategory);
			else
				request.setAttribute("msg", "Impossible de supprimer l'admin principal !!");
			
			request.setAttribute("ad", " active");
			request.setAttribute("gestion", " menu-open");
			this.getServletContext().getRequestDispatcher("/listeAdmin").forward(request, response);
		}
		
		
		//login
		if(request.getServletPath().equals("/Jaguar")) {
			this.getServletContext().getRequestDispatcher("/Admin/adminLogin.jsp").forward(request, response);

		}
		//Logout
		if(request.getServletPath().equals("/logout")) {
			session.invalidate();
			this.getServletContext().getRequestDispatcher("/Admin/adminLogin.jsp").forward(request, response);

		}

	}

}
