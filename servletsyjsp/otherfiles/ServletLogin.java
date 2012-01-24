package near.eticom.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class ServletLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private String generarPagina(String msgError) {

		String cr = System.getProperty("line.separator");
		
		StringBuilder html = new StringBuilder();
		
		html.append("<html>");html.append(cr);
		html.append("  <head>");html.append(cr);
		html.append("    	<meta http-equiv='Content-Type' content='text/html; charset=ISO-8859-1'>");html.append(cr);
		html.append("    	<title>Sistema de búsqueda de empleo</title>");html.append(cr);
		html.append("  </head>");html.append(cr);
		html.append("  <body>");html.append(cr);
		html.append("	 <h1>Sistema de búsqueda de empleo</h1>");html.append(cr);
		html.append("    <form method='post' action='ServletLogin'>");html.append(cr);
		html.append("    <table>");html.append(cr);
		html.append("    <tr>");html.append(cr);
		html.append("	<td>Login:</td>");html.append(cr);
		html.append("		<td><input type='text' name='login'></input></td>");html.append(cr);
		html.append("	</tr>");html.append(cr);
		html.append("    <tr>");html.append(cr);
		html.append("    	<td>Contraseña:</td>");html.append(cr);
		html.append("    	<td><input type='password' name='password'></input></td>");html.append(cr);
		html.append("   </tr>");html.append(cr);
		html.append("	</table>");html.append(cr);

		
		if (msgError != null)
			html.append("<h4><font color='red'>" + msgError + "</font></h4>");html.append(cr);
		
		html.append("	<input type='submit' value='Entrar' >");html.append(cr);
		html.append("   </form>");html.append(cr);
		html.append("  </body>");html.append(cr);
		html.append("</html>");html.append(cr);		
		
		return html.toString();
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		out.print(generarPagina(null));
		out.close();		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	ServletConfig config = getServletConfig();
		
		String loginParam = config.getInitParameter("usuario"); 
		String passwordParam = config.getInitParameter("password");

		String login = request.getParameter("login");
		String password = request.getParameter("password");
		
		String msgError = null;
		
		if (!login.equals(loginParam))
			msgError = "No se reconoce el login";
		else if	(!password.equals(passwordParam)) 
			msgError = "La contraseña no es correcta";
		
		if (msgError == null) {
			HttpSession sesion = request.getSession();
			sesion.setAttribute("login", login);
			response.sendRedirect("ServletListado"); 
		}
		else {
			PrintWriter out = response.getWriter ();
			out.print(generarPagina(msgError));
			out.close();			
		}
	}

}
