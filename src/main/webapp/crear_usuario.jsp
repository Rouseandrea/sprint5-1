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
<link href="css/estilos.css" rel="stylesheet" />
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

		<main >

			<div class="container">
				<div class="row justify-content-center align-items-center g-2">
					<h1 class="text-body-emphasis">Crear Usuario</h1>

					<form class="needs-validation"  id="formCreateUser" action="crear-usuario" method="post"
						novalidate id="formCrearUser">
						<div class="form-floating mb-3 ">
							<input
								type="text" class="form-control" name="run" id="floatingRun"
								placeholder="Rut"
								pattern="[0-9]{6,8}" aria-describedby="helpId" required>
								<label for="floatingRun" class="form-label">Rut Usuario</label>
							<div class="invalid-feedback">Por favor ingresa un rut, sin
								puntos ni digito verificador entre 1.000.000 y 99.999.999</div>
						</div>						
						<div class="mb-3 form-floating">
							<input
								type="text" name="nombre" id="nombre" class="form-control"
								placeholder="Ingresa nombre del usuario"
								aria-describedby="helpId" required>
								<label for="nombre" class="form-label">Nombre</label> 
							<div class="invalid-feedback">Por favor ingresa un Nombre</div>
						</div>
						<div class="mb-3 form-floating">
							<input
								type="text" name="apellido" id="apellido" class="form-control"
								placeholder="Ingresa apellido del usuario"
								aria-describedby="helpId" required>
								<label for="apellido" class="form-label">Apellido</label> 
							<div class="invalid-feedback">Por favor ingresa un apellido</div>
						</div>
						<div class="mb-3 form-floating">
							<input
								type="password" name="contrasenia" id="contrasenia" class="form-control"
								placeholder="Ingresa contraseña del usuario"
								aria-describedby="helpId"
								 pattern="^.{8,}$"
								 required>
								<label for="contrasenia" class="form-label">Contraseña</label> 
							<div class="invalid-feedback">Por favor ingresa una contraseña minimo 8 caracteres y ambas deben coincidir.</div>
						</div>						
						<div class="mb-3 form-floating">
							 <input
								type="email" name="correo" id="correo" class="form-control"
								placeholder="Ingresa correo electronico del usuario "
								aria-describedby="helpId" required>
								<label for="correo" class="form-label">Correo</label>
							<div class="invalid-feedback">Por favor ingresa un correo
								con formato valido</div>
						</div>
						<div class="mb-3 form-floating">
							
							<select class="form-select" aria-label="Selecciona tipo usuario"
								id="tipoUsuario" name= "tipoUsuario" required>
								<option value="" disable selected>Selecciona un tipo de
									usuario</option>
								<option value="Administrativo">Administrativo</option>
								<option value="Cliente">Cliente</option>
								<option value="Profesional">Profesional</option>
							</select>
							<label for="tipoUsuario" class="form-label">Tipo Usuario</label>
							<div class="invalid-feedback">Por favor selecciona un tipo
								de usuario</div>
						</div>
						<div id="areaExperiencia" class="hidden">
							<div class="mb-3">
								<label for="area" class="form-label">Area</label> <input
									type="text" name="area" id="area" class="form-control"
									placeholder="Ingresa Area del administrativo"
									aria-describedby="helpId">
							</div>
							<div class="mb-3">
								<label for="experienciaPrevia" class="form-label">Experiencia
									Previa</label> <input type="text" name="experienciaPrevia"
									id="experienciaPrevia" class="form-control"
									placeholder="Ingresa la experiencia previa"
									aria-describedby="helpId">
							</div>
						</div>
						<div id="telefonoDireccion" class="hidden">
							<div class="mb-3">
								<label for="telefono" class="form-label">Telefono</label> <input
									type="text" name="telefono" id="telefono" class="form-control"
									placeholder="Ingresa Telefono" aria-describedby="helpId">
							</div>
							<div class="mb-3">
								<label for="direccion" class="form-label">Direccion</label> <input
									type="text" name="direccion" id="direccion"
									class="form-control" placeholder="Ingresa la direccion"
									aria-describedby="helpId">
							</div>
						</div>
						<div id="tituloProfesional" class="hidden">
							<div class="mb-3">
								<label for="titulo" class="form-label">titulo</label> <input
									type="text" name="titulo" id="titulo" class="form-control"
									placeholder="Ingresa titulo" aria-describedby="helpId">
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