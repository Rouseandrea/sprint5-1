<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
	<link href="css/estilos.css" rel="stylesheet"/>
</head>
<body>

	<div class="col-lg-8 mx-auto p-4 py-md-5">
		<header class="d-flex justify-content-center align-item-center py-3">
			<ul class="nav nav-pills">
				<li class="nav-item"><a href="inicio" class="nav-link">Inicio</a></li>
				<li class="nav-item"><a href="contacto" class="nav-link">Contacto</a></li>
				<li class="nav-item"><a href="" class="nav-link active">Crear
						Capacitacion</a></li>
				<%
				if (session != null) {
				%>
				<li class="nav-item"><a href="Logout" class="nav-link">Cerrar
						Sesión</a></li>
				<%
				} else {
				%>
				<li class="nav-item"><a href="Login" class="nav-link">Iniciar
						Sesión</a></li>
				<%
				}
				%>

			</ul>
		</header>

		<main>

			<div class="container">
				<div class="row justify-content-center align-items-center g-2">
					<h1 class="text-body-emphasis">Crear Usuario</h1>

					<form action="CrearUsuario" method="post">
						<div class="mb-3">
							<label for="run" class="form-label">Run</label> <input
								type="text" name="run" id="run" class="form-control"
								placeholder="Ingresa run cliente" aria-describedby="helpId">
						</div>
						<div class="mb-3">
							<label for="nombre" class="form-label">nombre</label> <input
								type="text" name="nombre" id="nombre" class="form-control"
								placeholder="Ingresa fecha de la capacitacion"
								aria-describedby="helpId">
						</div>
						<div class="mb-3">
							<label for="apellido" class="form-label">apellido</label> <input
								type="text" name="apellido" id="apellido" class="form-control"
								placeholder="Ingresa fecha de la capacitacion"
								aria-describedby="helpId">
						</div>
						<div class="mb-3">
							<label for="correo" class="form-label">Correo</label> <input
								type="text" name="correo" id="correo" class="form-control"
								placeholder="Ingresa la hora de la capacitacion"
								aria-describedby="helpId">
						</div>						
						<div class="mb-3">
							<label for="tipoUsuario" class="form-label">Tipo Usuario</label> 
							<select
								class="form-select" aria-label="Selecciona tipo usuario" id="tipoUsuario">
								<option disabled selected >Selecciona un tipo de usuario</option>
								<option value="1">Administrativo</option>
								<option value="2">Cliente</option>
								<option value="3">Profesional</option>
							</select>
						</div>
						<div id="areaExperiencia" class="hidden">
						<div class="mb-3" >
							<label for="area" class="form-label">Area</label> <input
								type="text" name="area" id="area" class="form-control"
								placeholder="Ingresa Area del administrativo"
								aria-describedby="helpId">
						</div>
						<div class="mb-3">
							<label for="experienciaPrevia" class="form-label">Experiencia Previa</label> <input
								type="text" name="experienciaPrevia" id="experienciaPrevia" class="form-control"
								placeholder="Ingresa la experiencia previa"
								aria-describedby="helpId">
						</div>
						</div>
						<div id="telefonoDireccion" class="hidden">
						<div class="mb-3" >
							<label for="telefono" class="form-label">Telefono</label> <input
								type="text" name="telefono" id="telefono" class="form-control"
								placeholder="Ingresa Telefono"
								aria-describedby="helpId">
						</div>
						<div class="mb-3">
							<label for="direccion" class="form-label">Direccion</label> <input
								type="text" name="direccion" id="direccion" class="form-control"
								placeholder="Ingresa la direccion"
								aria-describedby="helpId">
						</div>
						</div>
						<div id="tituloProfesional" class="hidden">
						<div class="mb-3" >
							<label for="titulo" class="form-label">titulo</label> <input
								type="text" name="titulo" id="titulo" class="form-control"
								placeholder="Ingresa titulo"
								aria-describedby="helpId">
						</div>						
						</div>
												
						<button type="submit" class="btn btn-primary w-100">Enviar</button>
					</form>
				</div>
			</div>
		</main>
		<footer class="pt-5 my-5 text-body-secondary border-top">
			Grupo 5 </footer>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
		crossorigin="anonymous"></script>
		
	<script src="js/script.js"></script>
	
	


</body>
</html>