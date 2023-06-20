<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Sistema de Capacitacion</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
</head>
<body>   

<div class="col-lg-8 mx-auto p-4 py-md-5">
  <header class="d-flex justify-content-center align-item-center py-3">
    <ul class="nav nav-pills">
      <li class="nav-item"><a href="inicio" class="nav-link">Inicio</a></li>
      <li class="nav-item"><a href="" class="nav-link  active">Contacto</a></li>
      <li class="nav-item"><a href="crear-capacitacion" class="nav-link" >Crear Capacitacion</a></li>
       <li class="nav-item"><a href="Logout" class="nav-link">Cerrar Sesion</a></li>
      <li class="nav-item"><a href="Login" class="nav-link">Iniciar Sesion</a></li>     
      <!-- <li class="nav-item"><a href="#" class="nav-link">FAQs</a></li>
      <li class="nav-item"><a href="#" class="nav-link">About</a></li> -->
    </ul>
  </header>

  <main>
    <div class="container">

      <h1 class="text-body-emphasis">Contactanos</h1>
      <form action="contacto" method="POST">
      <div class="mb-3">
        <label for="nombre" class="form-label">Nombre</label>
        <input type="text" name="nombre" id="nombre" class="form-control" placeholder="Ingresa tu nombre" aria-describedby="helpId">
        <!-- <small id="helpId" class="text-muted">Ingresa un nombre</small> -->
      </div>
      <div class="mb-3">
        <label for="correo" class="form-label">email</label>
        <input type="text" name="correo" id="correo" class="form-control" placeholder="Ingresa tu email" aria-describedby="helpId">
        <!-- <small id="helpId" class="text-muted">Ingresa tu email</small> -->
      </div>
        <div class="mb-3">
          <label for="mensaje" class="form-label">Mensaje</label>
          <textarea class="form-control" placeholder="Ingresa aqui tu mensaje" name="mensaje" id="mensaje" rows="3"></textarea>
        </div>
      <button type="submit" class="btn btn-primary">Enviar</button>
    </form>
    </div>
    


     
  </main>
  <footer class="pt-5 my-5 text-body-secondary border-top">
    Creado por el grupo 5
  </footer>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
    

</body>
</html>