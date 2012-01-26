<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
String nombre = request.getParameter("nombre");
String telefono = request.getParameter("telefono");
String estudios = request.getParameter("estudios");
String nivelSalarial = request.getParameter("nivelSalarial");
String movilidad = request.getParameter("movilidad");

String primeraVisita = request.getParameter("primeraVisita");
boolean verificarValores = true;
%>

<%if (nombre != null && !nombre.equals("")) { %>
Nombre recibido: <%=nombre%><br/>
<%} else {nombre = "";}%>
<%if (telefono != null && !telefono.equals("")) { %>
Teléfono recibido: <%=telefono%><br/>
<%} else {telefono = "";} %>

<%if (estudios != null && !estudios.equals("")) { %>
Estudios recibido: <%=estudios%><br/>
<%} %>
<%if (nivelSalarial != null && !nivelSalarial.equals("")) { %>
Nivel Salarial recibido: <%=nivelSalarial%><br/>
<%} else {nivelSalarial = "";} %>
<%if (movilidad != null && !movilidad.equals("")) { %>
Movilidad recibido: <%=movilidad%><br/>
<%} %>
Primera visita <%=primeraVisita%><br/>
<%if (primeraVisita == null || primeraVisita.equals("")) {
primeraVisita = "no";
verificarValores = false;%>

<%} %>
<form action='insertarcv.jsp' method="post">
<table border="0">
	<tr>
		<td>Nombre y apellidos:</td>
		<td>
		<input type="text" name="nombre" value="<%=nombre%>"/>
		<%if (nombre.equals("") && verificarValores) {%> <font color="red">Campo requerido</font> <%}%>
		</td> 
	</tr>
	<tr>
		<td>Teléfono:</td>
		<td>
			<input type="text" name="telefono" value="<%=telefono%>"/>
			<%if (telefono.equals("") && verificarValores) {%> <font color="red">Campo requerido</font> <%}%>
		</td>
	</tr>
	<tr>
		<td>Nivel estudios:</td>
		<td> <select name="estudios">
				<option 
					value="nulo"
					<%if (estudios != null && estudios.equals("nulo")) {%> selected <%} %>
					>---</option>
  				<option value="uni"
  				<%if (estudios != null && estudios.equals("uni")) {%> selected <%} %>
  					>Universitarios</option>
  				<option value="fp"
  				<%if (estudios != null && estudios.equals("fp")) {%> selected <%} %>
  					>Formación profesional</option>
  				<option value="eso"
  				<%if (estudios != null && estudios.equals("eso")) {%> selected <%} %>
  					>Enseñanza secundaria</option>
  				<option value="vida"
  				<%if (estudios != null && estudios.equals("vida")) {%> selected <%} %>
  					>La escuela de la vida</option>
		</select>
		<%if (estudios != null && estudios.equals("nulo") && verificarValores) {%> <font color="red">Campo requerido</font> <%}%>


		</td>
	</tr>
	<tr>
		<td>Sueldo deseado:</td>
		<td> 
			<input 
				type="radio" 
				name="nivelSalarial" 
				value="nivelBajo"
				<%if (nivelSalarial != null && nivelSalarial.equals("nivelBajo")) {%> checked <%} %>
				/> 
				menos de 18.000 &euro;
			<input 
				type="radio" 
				name="nivelSalarial" 
				value="nivelMedio"
				<%if (nivelSalarial != null && nivelSalarial.equals("nivelMedio")) {%> checked <%} %>
				/> 
				entre 18.000 y 24.000 &euro;
			<input 
				type="radio" 
				name="nivelSalarial" 
				value="nivelAlto" 
				<%if (nivelSalarial != null && nivelSalarial.equals("nivelAlto")) {%> checked <%} %>				
				/> 
				más de 24.000 &euro;
			<%if (nivelSalarial != null && nivelSalarial.equals("") && verificarValores) {%> <font color="red">Campo requerido</font> <%}%>
		</td>
	</tr>
	<tr>
		<td colspan=2>
			Disponibilidad para viajar:
			<input 
				type="checkbox" 
				name="movilidad" 
				value="movilidad" 
				<%if (movilidad != null && movilidad.equals("movilidad")) {%> checked <%} %>
				/>
		</td>
	</tr>	
</table>
<input type="hidden" name="primeraVisita" value="<%=primeraVisita%>">
<input type="submit" value="Enviar"/>
</form>
 
</body>
</html>