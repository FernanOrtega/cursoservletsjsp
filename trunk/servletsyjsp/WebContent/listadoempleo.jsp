<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Primera página</title>
</head>
<body>
<%
	Object obj = request.getSession().getAttribute("loginsuccess");

	boolean loginsuccess = obj != null && (Boolean) obj;

	if (loginsuccess) {
%>
<p>Bienvenido,<span style="color: red"><%=request.getSession().getAttribute("username")%></span></p>
<h2>Listado de trabajos disponibles</h2>

<table border=1 cellspacing=0 cellpadding=2 bordercolor="666633">
	<tr>
		<th>Puesto</th>
		<th>Sueldo mensual</th>
	</tr>
	<tr>
		<td>Administrador Oracle</td>
		<td>900 euros</td>
	</tr>
	<tr>
		<td>Analista/Programador</td>
		<td>1050 euros</td>
	</tr>
</table>
<%
	} else {
%>
<script type="text/javascript">
	location.href = "/servletsyjsp/login.jsp";
	</script>
<%}%>
</body>
</html>
