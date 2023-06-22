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
<div class="col-lg-8 mx-auto p-4 py-md-5">
  <header class="d-flex justify-content-center align-item-center py-3">
    <ul class="nav nav-pills">
      <li class="nav-item"><a href="inicio" class="nav-link">Inicio</a></li>
      <li class="nav-item"><a href="contacto" class="nav-link">Contacto</a></li>
      <li class="nav-item"><a href="crear-capacitacion" class="nav-link">Crear Capacitacion</a></li>
      <li class="nav-item"><a href="contacto" class="nav-link active">Crear Usuario</a></li>
      <% if (session != null) { %>
      <li class="nav-item"><a href="Logout" class="nav-link">Cerrar Sesión</a></li>
      <% } else { %>
      <li class="nav-item"><a href="Login" class="nav-link">Iniciar Sesión</a></li>
      <% } %>
    </ul>
  </header>

  <main>
    <div class="container">
      <div class="container">
        <div class="row">
          <div class="col">
            <div class="d-flex justify-content-between align-items-center">
              <h1 class="text-body-emphasis">Listado de Usuarios</h1>
              <a href="crear-usuario" class="btn btn-lg btn-success" role="button">Crear Usuario</a>
            </div>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col">
        	<table class="table table-striped mt-4">
			<thead>
				<tr>
					<th>ID</th>
					<th>Run</th>
					<th>Nombre</th>
					<th>Apellido</th>
					<th>Correo</th>
					<th>Contrasenia</th>
					<th>Telefono</th>
					<th>Direccion</th>
					<th>Area</th>
					<th>Experiencia Previa</th>
					<th>Titulo</th>
					<th>Tipo Usuario</th>
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
                            <a href="editar-usuario?id=<%= usuario.getId() %>" class="btn btn-warning btn-sm">Editar</a>
                            <a href="eliminar-usuario?id=<%= usuario.getId() %>" class="btn btn-danger btn-sm">Eliminar</a>
                        </td>
					
				</tr>
				<%
				}
				%>
			</tbody>
		</table>
	
        </div>
      </div>
    </div>
  </main>
  <footer class="pt-5 my-5 text-body-secondary border-top">Grupo 5 The best</footer>
</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
		crossorigin="anonymous"></script>

</body>
</html>