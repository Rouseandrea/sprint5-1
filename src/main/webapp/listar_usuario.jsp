<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="modelo.Usuario"%>
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
					<th>Run</th>
					<th>nombre</th>
					<th>apellido</th>
					<th>correo</th>
					<th>contrasenia</th>
					<th>telefono</th>
					<th>direccion</th>
					<th>area</th>
					<th>experienciaPrevia</th>
					<th>titulo</th>
					<th>tipo Usuario</th>
					<th>Acciones</th>
					
				</tr>
			</thead>
			<tbody>
				<%
				List<Usuario> Usuarios = (List<Usuario>) request.getAttribute("usuarios");
				%>
				<%
				for (Usuario usuario : Usuarios) {
				%>
				<tr>
					<td><%=usuario.getId()%></td>
					<td><%=usuario.getRun()%></td>
					<td><%=usuario.getNombre()%></td>
					<td><%=usuario.getApellido()%></td>
					<td><%=usuario.getCorreo()%></td>
					<td><%=usuario.getContrasenia()%></td>
					<td><%=usuario.getTelefono()%></td>
					<td><%=usuario.getDireccion()%></td>
					<td><%=usuario.getArea()%></td>
					<td><%=usuario.getExperienciaPrevia()%></td>
					<td><%=usuario.getTitulo()%></td>
					<td><%=usuario.getTipoUsuario()%></td>
					<td>
                            <a href="editarCapacitacion?id=<%= usuario.getId() %>" class="btn btn-warning btn-sm">Editar</a>
                            <a href="eliminar-capacitacion?id=<%= usuario.getId() %>" class="btn btn-danger btn-sm">Eliminar</a>
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