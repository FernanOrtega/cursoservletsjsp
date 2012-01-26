<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="preferencias"
	class="org.eticom.cursojsp.beans.Preferencias" scope="request"></jsp:useBean>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Preferencias</title>
</head>
<body>
<%
	boolean primeravisita = request.getAttribute("check") == null;
%>
<form method="post" action="ServletPreferencias">
<table border="0">
	<tr>
		<td>Email de contacto:</td>
		<td><input type="text" name="email"
			value=<%=preferencias.getEmail()%>> <%
 	if (!primeravisita && preferencias.getEmail().equals("")) {
 %> <span style="color: red">Campo requerido</span> <%
 	}
 %>
		</td>

	</tr>
	<tr>
		<td>Notificarme nuevas ofertas:</td>
		<td><input type="checkbox" name="notificarme"
			<%if (preferencias.isNotificarme()) {%> <%="checked"%> <%}%>></td>
	</tr>
	<tr>
		<td>Enviarme ofertas de:</td>
		<td><select name="categoria" onchange="salta(this.form)">
			<option value="" <%if (preferencias.getCategoria().equals("")) {%>
				<%="selected"%> <%}%>>---</option>
			<option value="0" <%if (preferencias.getCategoria().equals("0")) {%>
				<%="selected"%> <%}%>>Construcción</option>
			<option value="1" <%if (preferencias.getCategoria().equals("1")) {%>
				<%="selected"%> <%}%>>Hostelería</option>
			<option value="2" <%if (preferencias.getCategoria().equals("2")) {%>
				<%="selected"%> <%}%>>Ingeniería</option>
			<option value="3" <%if (preferencias.getCategoria().equals("3")) {%>
				<%="selected"%> <%}%>>Carpintería</option>
		</select> <%
 	if (!primeravisita && preferencias.getCategoria().equals("")) {
 %> <span style="color: red">Campo requerido</span> <%
 	}
 %>
		</td>

	</tr>
	<tr>
		<td>Visibilidad de mi cv:</td>
		<td><input type="radio" name="visibilidad" value="1"
			<%if (preferencias.getVisibilidad()==1) {%> <%="checked"%> <%}%>>Todas
		las empresas. <input type="radio" name="visibilidad" value="2"
			<%if (preferencias.getVisibilidad()==2) {%> <%="checked"%> <%}%>>Sólo
		a las que envío el cv. <%
			if (!primeravisita && preferencias.getVisibilidad() < 0) {
		%> <span style="color: red">Campo requerido</span> <%
 	}
 %>
		</td>

	</tr>
</table>
<input type="submit" value="Enviar"></form>

</body>
</html>