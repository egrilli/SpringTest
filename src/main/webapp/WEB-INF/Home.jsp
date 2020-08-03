<jsp:include page='template/header.jsp'>
<jsp:param name='title' value='Home' />
<jsp:param name='description' value='Home' />
</jsp:include>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<body>
<nav id="navbar-example2" class="navbar navbar-light bg-light">
  <a class="navbar-brand" href="/home">Prueba 5</a>
  <ul class="nav nav-pills">
  	<li class="nav-item">
      <a class="nav-link" href="/home">Home</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="/cliente">Clientes Empresa</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="/trabajador">Colaborador Empresa</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="/accidente">Accidentes</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="/reporte/clientes">Reportes</a>
    </li>
    <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">${user.sNombre}</a>
      <div class="dropdown-menu">
        <a class="dropdown-item" href="/editar">Editar</a>
        <div role="separator" class="dropdown-divider"></div>
        <a class="dropdown-item" href="/logout">Cerrar sesión</a>
      </div>
    </li>    
  </ul>
</nav>
<div class="fondo-home"> 
	
<h1> Bienvenido al menú de Administración </h1>


<div class="row justify-content-center aling-items-center mt-5  justify-content">
<div class="card text-white bg-primary mb-3  " style="max-width: 18rem;">
  <div class="card-header">Registrar Nuevo Cliente</div>
  <div class="card-body">
    <h5 class="card-title">Registro</h5>
    <p class="card-text">Panel para poder ingresar un nuevos cliente a nuestra base de datos.</p>
    <a href="/cliente" class="btn btn-warning float-right">Vamos!</a>
  </div>
</div>
<div class="card text-white bg-secondary mb-3" style="max-width: 18rem;">
  <div class="card-header">Ingresar Colaborador </div>
  <div class="card-body">
    <h5 class="card-title">Registro de Colaborador</h5>
    <p class="card-text">Panel dinamico para poder ingresar un nuevo colaborador a la base de datos</p>
<a href="/trabajador" class="btn btn-warning float-right">Vamos!</a>
  </div>
</div>
<div class="card text-white bg-danger mb-3" style="max-width: 18rem;">
  <div class="card-header">Accidente</div>
  <div class="card-body">
    <h5 class="card-title">Registrar Accidente</h5>
    <p class="card-text">Panel para tener Registro de los Accidentes de nuestros clientes de forma centralizada.</p>
<a href="/accidente" class="btn btn-warning float-right">Vamos!</a>
  </div>
</div>


<div class="card text-white bg-success mb-3" style="max-width: 18rem;">
  <div class="card-header">Lista General</div>
  <div class="card-body">
    <h5 class="card-title">Resumen Clientes</h5>
    <p class="card-text">Panel para poder visualizar todos los datos de nuestros clientes de forma resumida</p>
  <a href="/reporte/clientes" class="btn btn-warning float-right">Vamos!</a>
  </div>
</div>
 </div>



</div>


	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
		integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"
		integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI"
		crossorigin="anonymous"></script>

	
</body>
</html>
