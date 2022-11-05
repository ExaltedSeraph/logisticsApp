package web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.IImageDao;
import dao.IImageDaomImpl;

/**
 * Servlet implementation class ImageServlet
 */
@WebServlet(name="ImageServlet",urlPatterns = {"/listImages","/Galerie"})
public class ImageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	private IImageDao imageMetier = new IImageDaomImpl();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ImageServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 if(request.getCharacterEncoding() == null)
		    {
		        request.setCharacterEncoding("UTF-8");
		    }
		 
		if (request.getServletPath().equals("/listImages")) { 
			request.setAttribute("galerie", " active");
			request.setAttribute("gestion", " menu-open");
			request.setAttribute("Images", imageMetier.listeImages());
			this.getServletContext().getRequestDispatcher("/Admin/GestionGalerie.jsp").forward(request, response);
		}	
		//list images gallerie
		if (request.getServletPath().equals("/Galerie")) { 
			request.setAttribute("Images", imageMetier.listeImages());
			this.getServletContext().getRequestDispatcher("/gallery.jsp").forward(request, response);
		}	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);

	}

}
