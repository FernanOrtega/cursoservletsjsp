<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.Date"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%!Date fechaPrimeraLlamada = new Date();%>
<%!int llamadas = 0;%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title><%="EjemploJSP: " + fechaPrimeraLlamada%></title>
</head>
<body>
<%
	if (llamadas < 1) {
%>
<p><b>Primera</b> vez que llamamos</p>
<%
	} else {
%>
<p>Ya hemos llamado <%=llamadas%> veces</p>
<%
	}
	llamadas++;
%>
</body>
</html>