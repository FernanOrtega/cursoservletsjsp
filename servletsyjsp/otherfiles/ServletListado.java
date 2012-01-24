package near.eticom.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class ServletListado
 */
public class ServletListado extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletListado() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		
		HttpSession sesion = request.getSession();
		String login = (String)sesion.getAttribute("login");
		
		out.println("<html>");
		out.println("  <head>");
		out.println("    	<meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>");
		out.println("    	<title>Listado de trabajos disponibles</title>");
		out.println("  </head>");
		out.println("  <body>");
		out.println("  Bienvenido, <font color='red'>" + login + "</font> <a href='insertarcv.jsp'>Insertar cv</a>  <a href='editarprefs.jsp'>Preferencias</a>");
		out.println("	 <h3>Listado de trabajos disponibles</h3>");
		out.println("    <table border=1>");
		out.println("    <tr>");
		out.println("	<td>Puesto</td>");
		out.println("	<td>Sueldo mensual</td>");
		out.println("	</tr>");
		out.println("   <tr>");
		out.println("    	<td>Administrador Oracle</td>");
		out.println("    	<td>900 euros</td>");
		out.println("   </tr>");
		out.println("   <tr>");
		out.println("    	<td>Analista/programador</td>");
		out.println("    	<td>1050 euros</td>");
		out.println("   </tr>");
		out.println("	</table>");
		
		out.println("  </body>");
		out.println("</html>");			
		
		out.close();
	}

}
