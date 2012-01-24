package org.eticom.cursojsp.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class PrimerServlet
 */
public class PrimerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public PrimerServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String param = request.getParameter("num");
		PrintWriter pw = response.getWriter();
		pw.print("<HTML><HEAD><TITLE>Respuesta para petición get</TITLE></HEAD>");
		if (param != null) {
			try {
				Integer numPeticiones = Integer.valueOf(param);
				for (int i = 0; i < numPeticiones && i < 9999; i++) {
					pw.print("<p>HOLA MUNDO</p>");
				}
			} catch (NumberFormatException e) {
				pw.print("<p>INCORRECT PARAM!</p>");
			}
		}
		pw.print("</BODY></HTML>");
		pw.close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String param = request.getParameter("num");
		PrintWriter pw = response.getWriter();
		pw.print("<HTML><HEAD><TITLE>Respuesta para petición get</TITLE></HEAD>");
		if (param != null) {
			try {
				Integer numPeticiones = Integer.valueOf(param);
				for (int i = 0; i < numPeticiones && i < 9999; i++) {
					pw.print("<p>HOLA MUNDO</p>");
				}
			} catch (NumberFormatException e) {
				pw.print("<p>INCORRECT PARAM!</p>");
			}
		}
		pw.print("</BODY></HTML>");
		pw.close();
	}

}
