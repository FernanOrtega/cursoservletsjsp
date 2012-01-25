<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.Map"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insertar CV</title>
</head>
<body>
<%
	String hidden = request.getParameter("hidden");

	String nombreyapellidos = "";
	String telefono = "";
	String estudios = "";
	String sueldo = "";
	String disponibilidad = "";

	String mensajeRequerido = "";
	if (hidden != null) {

		nombreyapellidos = request.getParameter("nombreyapellidos");
		telefono = request.getParameter("telefono");
		estudios = request.getParameter("estudios");
		sueldo = request.getParameter("sueldo");
		disponibilidad = request.getParameter("disponibilidad");

		mensajeRequerido = "<span style=\"color: red\">Campo requerido</span>";
	}
%>

<form name="enviacvform" action="/servletsyjsp/insertarcv.jsp"
	method="post"><input type="hidden" name="hidden" value="1">
<p><label>Nombre y apellidos:</label> <input type="text"
	name="nombreyapellidos" value=<%=nombreyapellidos%>> <%
 	if (nombreyapellidos != null && nombreyapellidos.equals("")) {
 %> <%=mensajeRequerido%> <%
 	}
 %>
</p>
<p><label>Tel&eacute;fono:</label> <input type="text"
	name="telefono" value=<%=telefono%>> <%
 	if (telefono != null && telefono.equals("")) {
 %> <%=mensajeRequerido%> <%
 	}
 %>
</p>
<p><label>Nivel estudios: </label><select name="estudios"
	onchange="salta(this.form)">
	<option value="" <%if (estudios == null || estudios.equals("")) {%>
		<%="selected"%> <%}%>>---</option>
	<option value="0" <%if (estudios.equals("0")) {%> <%="selected"%> <%}%>>Sin
	estudios</option>
	<option value="1" <%if (estudios.equals("1")) {%> <%="selected"%> <%}%>>Graduado
	escolar/ESO</option>
	<option value="2" <%if (estudios.equals("2")) {%> <%="selected"%> <%}%>>FP
	Medio/Bachiller</option>
	<option value="3" <%if (estudios.equals("3")) {%> <%="selected"%> <%}%>>FP
	Superior</option>
	<option value="4" <%if (estudios.equals("4")) {%> <%="selected"%> <%}%>>Diplomatura</option>
	<option value="5" <%if (estudios.equals("5")) {%> <%="selected"%> <%}%>>M&aacute;ster</option>
	<option value="6" <%if (estudios.equals("6")) {%> <%="selected"%> <%}%>>Doctorado</option>
</select></p>
<p><label>Sueldo deseado: </label> <input type="radio" name="sueldo"
	value="1" <%if (sueldo != null && sueldo.equals("1")) {%>
	<%="checked"%> <%}%>>menos de 18000 &euro; <input type="radio"
	name="sueldo" value="2"
	<%if (sueldo != null && sueldo != null && sueldo.equals("2")) {%>
	<%="checked"%> <%}%>>entre 18000 y 24000 &euro; <input
	type="radio" name="sueldo" value="3"
	<%if (sueldo != null && sueldo.equals("3")) {%> <%="checked"%> <%}%>>m&aacute;s
de 24000 &euro; <%
 	if (sueldo == null || sueldo.equals("")) {
 %> <%=mensajeRequerido%> <%
 	}
 %>
</p>
<p><label>Disponibilidad para viajar:</label><input
	name="disponibilidad" type="checkbox"
	<%if (disponibilidad != null && disponibilidad.equals("on")) {%>
	<%="checked"%> <%}%>></p>
<input type="submit" name="submitbutton" value="Enviar"></form>
</body>
</html>