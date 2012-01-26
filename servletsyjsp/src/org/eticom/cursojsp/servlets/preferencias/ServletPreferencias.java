package org.eticom.cursojsp.servlets.preferencias;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.eticom.cursojsp.beans.Preferencias;

/**
 * Servlet implementation class ServletPreferencias
 */
public class ServletPreferencias extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ServletPreferencias() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("introducirpreferencias.jsp").forward(
				request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		String redireccion = "preferenciasguardadas.jsp";

		String email = request.getParameter("email");
		boolean notificarme = request.getParameter("notificarme") != null;
		String categoria = request.getParameter("categoria");
		String visibilidadAux = request.getParameter("visibilidad");
		int visibilidad = -1;
		if (visibilidadAux != null) {
			visibilidad = Integer.valueOf(visibilidadAux);
		}

		if (email == null || email.equals("") || categoria == null
				|| categoria.equals("") || visibilidad < 0) {
			redireccion = "insertarpreferencias.jsp";
			request.setAttribute("check", "on");
		}

		Preferencias preferencias = new Preferencias();
		preferencias.setEmail(email);
		preferencias.setNotificarme(notificarme);
		preferencias.setCategoria(categoria);
		preferencias.setVisibilidad(visibilidad);

		request.setAttribute("preferencias", preferencias);
		

		request.getRequestDispatcher(redireccion).forward(request, response);

	}

}
