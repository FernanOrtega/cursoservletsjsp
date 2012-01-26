<%@page import="java.util.Enumeration"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isErrorPage="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Error!!!</h1>
<h2>Request´s attributes:</h2>
<%
	Enumeration<String> enums = request.getAttributeNames();
	while (enums.hasMoreElements()) {
		String att = enums.nextElement();
%>
<p><%=att + " => " + request.getAttribute((String) att)%></p>

<%
	}
%><h2>Exception:</h2>
<%=exception%>
<h2>Stack trace:</h2>
<%
	exception.printStackTrace(new PrintWriter(out));
%>
</body>
</html>