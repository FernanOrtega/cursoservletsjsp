<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="preferencias" scope="request"  class="org.eticom.cursojsp.beans.Preferencias"></jsp:useBean>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
   <h1>Se han guardado satisfactoriamente sus preferencias</h1>

	<table border="0">
	<tr>
		<td>Email de contacto:</td>
		<td><font color="red"> 
			<jsp:getProperty property="email" name="preferencias"/></font>
		</td> 
	</tr>
	<tr>
		<td colspan="2">
		<%if (preferencias.isNotificarme()) { %>
		Notificarme por mail de las nuevas ofertas
		<%} else { %>
		No notificarme por mail de las nuevas ofertas
		<%} %>
		</td>
	</tr>
	<tr>
		<td>Categoria:</td>
		<td><font color="red"> 
			<jsp:getProperty property="categoria" name="preferencias"/></font>
		</td> 
	</tr>
	<tr>
		<td colspan="2">
		<%if (preferencias.getVisibilidad() == 2) { %>
		S�lo podr�n ver mi cv las empresas que yo quiera
		<%} else { %>
		Mi cv lo podr�n ver todas las empresas
		<%} %>
		</td>
	</tr>
	</table>
</body>
</html>