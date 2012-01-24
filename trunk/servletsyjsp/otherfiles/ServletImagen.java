package org.eticom.jee.servlets;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.OutputStream;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ServletImagen
 */
public class ServletImagen extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	     try{  

	    	 // La ruta real del fichero
	         ServletContext sc = getServletContext();
	         String filename = sc.getRealPath("img/pepe.jpg");
	     
	         // El tipo MIME de la respuesta será el de la imagen
	         String mimeType = sc.getMimeType(filename);	     
	         response.setContentType(mimeType);
	     
	         // Set content size
	         File file = new File(filename);
	         response.setContentLength((int)file.length());

	         // Open the file and output streams
	         FileInputStream in = new FileInputStream(file);
	         OutputStream out = response.getOutputStream();
	     
	         // Copy the contents of the file to the output stream
	         byte[] buf = new byte[1024];
	         int count = 0;
	         while ((count = in.read(buf)) >= 0) {
	             out.write(buf, 0, count);
	         }
	         in.close();
	         out.close();
                             

            }

         catch (FileNotFoundException fe)   {

               throw new RuntimeException();
         }	
	}

}
