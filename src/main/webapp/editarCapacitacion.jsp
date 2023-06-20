<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="modelo.Capacitacion" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sistema de Capacitacion</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
</head>
<body>   

<div class="col-lg-8 mx-auto p-4 py-md-5">
  <header class="d-flex justify-content-center align-item-center py-3">
    <ul class="nav nav-pills">
      <li class="nav-item"><a href="inicio" class="nav-link">Inicio</a></li>
      <li class="nav-item"><a href="contacto" class="nav-link">Contacto</a></li>
      <li class="nav-item"><a href="" class="nav-link active" >Crear Capacitacion</a></li>
      <!-- <li class="nav-item"><a href="#" class="nav-link">FAQs</a></li>
      <li class="nav-item"><a href="#" class="nav-link">About</a></li> -->
    </ul>
  </header>

  <main>
    
    <div class="container">
      <div class="row justify-content-center align-items-center g-2">
        <h1 class="text-body-emphasis">Crear capacitacion</h1>
        <p class="fs-5 col-md-8">Selecciona una opcion</p>
        <% Capacitacion capacitacion = (Capacitacion) request.getAttribute("capacitacion"); %>
        <form action="editarCapacitacion" method="post">
        <input type="hidden" name="id" value="<%= capacitacion.getId() %>">
          <div class="mb-3">
            <label for="Run" class="form-label">Run Cliente</label>
            <input type="text" name="rutCliente" id="Run" class="form-control" placeholder="Ingresa run cliente" aria-describedby="helpId" value="<%= capacitacion.getRutCliente() %>">
          </div>
          <div class="mb-3">
            <label for="dia" class="form-label">Fecha Capacitacion</label>
            <input type="date" name="dia" id="dia" class="form-control" placeholder="Ingresa fecha de la capacitacion" aria-describedby="helpId" value="<%= capacitacion.getDia() %>">
          </div>
          <div class="mb-3">
            <label for="hora" class="form-label">Hora Capacitacion</label>
            <input type="time" name="hora" id="hora" class="form-control" placeholder="Ingresa la hora de la capacitacion" aria-describedby="helpId" value="<%= capacitacion.getHora() %>">
          </div>
          <div class="mb-3">
            <label for="lugar" class="form-label">Lugar</label>
            <input type="text" name="lugar" id="lugar" class="form-control" placeholder="Ingresa lugar de la capacitacion" aria-describedby="helpId" value="<%= capacitacion.getLugar() %>">
          </div>
          <div class="mb-3">
            <label for="duracion" class="form-label">Duracion</label>
            <input type="text" name="duracion" id="duracion" class="form-control" placeholder="Ingresa duracion de la capacitacion" aria-describedby="helpId" value="<%= capacitacion.getDuracion() %>">
          </div>
          <div class="mb-3">
            <label for="asistentes" class="form-label">Cantidad Asistentes</label>
            <input type="text" name="cantidadAsistentes" id="asistentes" class="form-control" placeholder="Ingresa la cantidad de asistentes" aria-describedby="helpId" value="<%= capacitacion.getCantidadAsistentes() %>">
          </div>
          <button type="submit" class="btn btn-primary w-100">Enviar</button>
        </form>
      </div>
    </div>
  </main>
  <footer class="pt-5 my-5 text-body-secondary border-top">
    Grupo 5
  </footer>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
    

</body>
</html>