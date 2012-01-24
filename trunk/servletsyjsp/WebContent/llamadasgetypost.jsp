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

		var valor = obj.num.value;

		if (!/^([0-9])*$/.test(valor)) {
			alert('No es un número');
		}
		else if (valor == '' || valor == '0') {
			alert('Introduzca un valor');
		} else {
			obj.submit();
		}
	}
</script>
<h2>Introduzca un valor para el parámetro</h2>
<form name="postsend" method="post" action="/servletsyjsp/PrimerServlet"><input
	type="text" name="num" name="num" value="0"> <input
	type="button" value="enviarPOST" onclick="validar(document.postsend)"></form>
<form name="getsend" method="get" action="/servletsyjsp/PrimerServlet"><input
	type="text" name="num" name="num" value="0"> <input
	type="button" value="enviarGET" onclick="validar(document.getsend)"></form>
</body>
</html>