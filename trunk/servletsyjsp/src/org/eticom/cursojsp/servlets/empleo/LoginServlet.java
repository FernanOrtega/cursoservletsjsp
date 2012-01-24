package org.eticom.cursojsp.servlets.empleo;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginServlet
 */
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
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		request.getRequestDispatcher("login.jsp").forward(request, response);
	}

	private void checkLogin(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String username = (String) request.getParameter("username");
		String password = (String) request.getParameter("username");

		String usernameSession = getServletConfig()
				.getInitParameter("username");
		String passwordSession = getServletConfig()
				.getInitParameter("password");
		HttpSession session = request.getSession();

		String requestDispatcher = "LoginServlet";

		if (username != null && password != null) {
			if (username != null && username.equals(usernameSession)
					&& password != null && password.equals(passwordSession)) {

				session.setAttribute("loginsuccess", true);
				session.setAttribute("username", username);
				requestDispatcher = "listadoempleo.jsp";
			} else {
				session.setAttribute("loginsuccess", false);
			}
		}

		response.sendRedirect(requestDispatcher);

		// request.getRequestDispatcher(requestDispatcher).forward(request,
		// response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		checkLogin(request, response);

	}

}
