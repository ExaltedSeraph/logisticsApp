package web;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Blob;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import javax.sql.rowset.serial.SerialBlob;

import org.apache.commons.io.IOUtils;

import beans.Image;
import dao.IImageDao;
import dao.IImageDaomImpl;

@WebServlet( urlPatterns = {"/UpdateImage"})
@MultipartConfig(maxFileSize = 16177216)//1.5mb
public class UpdateImage extends HttpServlet {

	private IImageDao imgMetier = new IImageDaomImpl();

	//PrintWriter out;
	

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		if(request.getCharacterEncoding() == null) {  request.setCharacterEncoding("UTF-8");}

		response.setContentType("text/html;charset=UTF-8");
		//out = response.getWriter();
		
		if (request.getServletPath().equals("/UpdateImage")) {
			try {
				//fetching values
				int id = Integer.parseInt(request.getParameter("id"));
				Part part = request.getPart("image");
				InputStream img = part.getInputStream(); 
				String titre = request.getParameter("titre");

				//get the curernt image
				Image imgO = imgMetier.getImage(id);
				Blob oldImg = imgO.getImg();

				//updated Img
				Image imgU = new Image();
				imgU.setTitre(titre);
				imgU.setId(id);

				if (part.getSize() != 0) {
					byte[] my_byte_array = IOUtils.toByteArray(img);
					Blob blob = new SerialBlob(my_byte_array);
					imgU.setImg(blob);
				}else {
					imgU.setImg(oldImg);
				}
				//commit update
				imgMetier.updateImage(imgU);
				
			}catch (SQLException e) {
				e.printStackTrace();
			}
			
			 // out.flush(); out.close();
			 
			this.getServletContext().getRequestDispatcher("/listImages").forward(request, response);
		}
		
	}//doPostEnd

}
