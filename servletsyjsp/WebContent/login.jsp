<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Primera página</title>
</head>
<body>
<script type="text/javascript">
	function validar(obj) {

		var username = obj.username.value;
		var password = obj.password.value;

		if (username == '' || password == '') {
			alert('El usuario y/o la contraseña no puede ser vacío.');
		} else {
			obj.submit();
		}
	}
</script>
<h1>Sistema de búsqueda de empleo</h1>

<form name="loginform" action="/servletsyjsp/LoginServlet" method="post">
<p><label>Login:</label> <input type="text" name="username" value=""></p>
<p><label>Contraseña:</label> <input type=password name="password"
	value=""></p>
<p><input type="button" value="Login"
	onclick="validar(document.loginform)"></p>
</form>
<%
	Boolean loginsuccess = (Boolean) request.getSession().getAttribute(
			"loginsuccess");

	if (loginsuccess != null && !loginsuccess) {
%><p style="color: red">LOGIN INCORRECTO</p>
<%
	request.getSession().setAttribute("loginsuccess", null);
	}
%>
</body>
</html>