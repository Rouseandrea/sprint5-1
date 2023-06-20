<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM"
	crossorigin="anonymous">
</head>
<link href="estilos.css" rel="stylesheet" />
<meta charset="utf-8">
<title>Ingresar Login</title>
</head>
<body class="d-flex align-items-center py-4 bg-body-tertiary">
	<main class="form-signin w-100 m-auto">
		<form method="post" action="Login">

			<h1 class="h3 mb-3 fw-normal">Por favor Ingresa</h1>

			<div class="form-floating">
				<input type="text" name="usuario" class="form-control"
					id="floatingInput" placeholder="name@example.com"> <label
					for="floatingInput">Usuario</label>
			</div>
			<div class="form-floating mb-4">
				<input type="password" class="form-control" name="clave"
					id="floatingPassword" placeholder="Password"> <label
					for="floatingPassword">contraseña</label>
			</div>

			<button class="btn btn-primary w-100 py-2" type="submit">Ingresar</button>
			<p class="mt-5 mb-3 text-body-secondary">© GRUPO 5</p>
		</form>
	</main>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
		crossorigin="anonymous"></script>
</body>
</html>