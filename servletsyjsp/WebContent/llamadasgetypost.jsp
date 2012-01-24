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
function validar(value){
	if(/^([0-9])*$/.test(value)){
		return true;
	} else {
		return false;
	}
}
</script>
<h2>Introduzca un valor para el parámetro</h2>
<form method="post" action="/servletsyjsp/PrimerServlet"
	onsubmit="return validar(this.num.value);"><input
	type="text" name="num" name="num" value="0"> <input
	type="submit" value="enviarPOST"></form>
<form method="get" action="/servletsyjsp/PrimerServlet"
	onsubmit="return validar(this.num.value);"><input
	type="text" name="num" name="num" value="0"> <input
	type="submit" value="enviarGET"></form>
</body>
</html>