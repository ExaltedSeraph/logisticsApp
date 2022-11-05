package web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Mappings
 */
@WebServlet(urlPatterns = {"/Index","/Secteurs","/Construction","/Industrie","/Alimentaire","/Pharmaceutique","/Logistiques","/APropos","/Société","/Equipes","/Histoire","/Témoignages","/FAQ","/Contact"})

public class Mappings extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Mappings() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(request.getServletPath()!=null) {
			//Index
			if(request.getServletPath().equals("/Index")){
				this.getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
			}
			//Secteurs
			if(request.getServletPath().equals("/Secteurs")){
				this.getServletContext().getRequestDispatcher("/nos-secteurs.jsp").forward(request, response);
			}if(request.getServletPath().equals("/Construction")){
				this.getServletContext().getRequestDispatcher("/nos-secteurs/construction.jsp").forward(request, response);
			}if(request.getServletPath().equals("/Industrie")){
				this.getServletContext().getRequestDispatcher("/nos-secteurs/industrie.jsp").forward(request, response);
			}if(request.getServletPath().equals("/Alimentaire")){
				this.getServletContext().getRequestDispatcher("/nos-secteurs/alimentaire.jsp").forward(request, response);
			}if(request.getServletPath().equals("/Pharmaceutique")){
				this.getServletContext().getRequestDispatcher("/nos-secteurs/pharmaceutique.jsp").forward(request, response);
			}
			//A Propos
			if(request.getServletPath().equals("/APropos")){
				this.getServletContext().getRequestDispatcher("/about-us/about-us.jsp").forward(request, response);
			}if(request.getServletPath().equals("/Société")){
				this.getServletContext().getRequestDispatcher("/about-us/company.jsp").forward(request, response);
			}if(request.getServletPath().equals("/Equipes")){
				this.getServletContext().getRequestDispatcher("/about-us/people.jsp").forward(request, response);
			}if(request.getServletPath().equals("/Histoire")){
				this.getServletContext().getRequestDispatcher("/about-us/histories.jsp").forward(request, response);
			}if(request.getServletPath().equals("/Témoignages")){
				this.getServletContext().getRequestDispatcher("/about-us/testimonials.jsp").forward(request, response);
			}if(request.getServletPath().equals("/FAQ")){
				this.getServletContext().getRequestDispatcher("/about-us/faq.jsp").forward(request, response);
			}
			//Logistiques
			if(request.getServletPath().equals("/Logistiques")){
				this.getServletContext().getRequestDispatcher("/logistiques.jsp").forward(request, response);
			}
			//Contact
			if(request.getServletPath().equals("/Contact")){
				this.getServletContext().getRequestDispatcher("/contact.jsp").forward(request, response);
			}




		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
