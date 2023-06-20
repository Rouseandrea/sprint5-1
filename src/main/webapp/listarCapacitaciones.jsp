<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="modelo.Capacitacion"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sistema de Capacitacion</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM"
	crossorigin="anonymous">
</head>
<body>
	<div class="container">
		<h1 class="mt-4">Listado de Capacitaciones</h1>
		<table class="table table-striped mt-4">
			<thead>
				<tr>
					<th>ID</th>
					<th>Rut Cliente</th>
					<th>Dia</th>
					<th>Hora</th>
					<th>Lugar</th>
					<th>Duracion</th>
					<th>Cantidad Asistentes</th>
					<th>Acciones</th>
					
				</tr>
			</thead>
			<tbody>
				<%
				List<Capacitacion> Capacitaciones = (List<Capacitacion>) request.getAttribute("capacitaciones");
				%>
				<%
				for (Capacitacion capacitacion : Capacitaciones) {
				%>
				<tr>
					<td><%=capacitacion.getId()%></td>
					<td><%=capacitacion.getRutCliente()%></td>
					<td><%=capacitacion.getDia()%></td>
					<td><%=capacitacion.getHora()%></td>
					<td><%=capacitacion.getLugar()%></td>
					<td><%=capacitacion.getDuracion()%></td>
					<td><%=capacitacion.getCantidadAsistentes()%></td>
					<td>
                            <a href="editarCapacitacion?id=<%= capacitacion.getId() %>" class="btn btn-warning btn-sm">Editar</a>
                            <a href="eliminar-capacitacion?id=<%= capacitacion.getId() %>" class="btn btn-danger btn-sm">Eliminar</a>
                        </td>
					
				</tr>
				<%
				}
				%>
			</tbody>
		</table>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
		crossorigin="anonymous"></script>

</body>
</html>