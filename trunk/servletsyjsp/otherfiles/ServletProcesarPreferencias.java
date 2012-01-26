package near.eticom.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import near.eticom.beans.Preferencias;

public class ServletProcesarPreferencias extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		boolean ok = true;
		
		String email = request.getParameter("email");
		String notificar = request.getParameter("notificar");
		String categoria = request.getParameter("categoria");
		String visibilidad = request.getParameter("visibilidad");

		Preferencias preferencias = new Preferencias();

		if (email == null || email.equals("")) {
			ok = false;
			preferencias.setEmail("");
		}
		else 
			preferencias.setEmail(email);

		if (notificar == null)
			preferencias.setNotificarme(false);
		else
			preferencias.setNotificarme(true);
		
		if (categoria == null || categoria.equals("nulo"))
			ok = false;
		else 
			preferencias.setCategoria(categoria);
		
		if (visibilidad == null || visibilidad.equals(""))
			ok = false;
		else {
			if (visibilidad.equals("todas"))
				preferencias.setVisibilidad(1);
			else
				preferencias.setVisibilidad(2);
		}

		request.setAttribute("preferencias", preferencias);
		
		String destino;
		if (ok) 
			destino = "preferenciasguardadas.jsp";
		else
			destino = "editarprefs.jsp";			
		
		request.getRequestDispatcher(destino).forward(request, response);
	}
}
