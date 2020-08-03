<jsp:include page='template/header.jsp'>
	<jsp:param name='title' value='Formulario Registro Cliente' />
	<jsp:param name='description' value='Aca se registra formulario' />
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
      <a class="nav-link" href="#alumno">Colaborador</a>
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
	<div class="fondo-registro-cliente">
		<div class="container py-5">
			<div class="row">
				<div class="col-12">
					<div class="card text-white bg-secondary mb-3">
						<div class="card-header">Formulario Registro de Cliente</div>
						<div class="card-body">
							<form:form action="/cliente" method="POST"
								modelAttribute="empresa">
								<div class="row">
									<div class="col-12 font-weight-bold">
										<p>Datos Empresa:</p>
									</div>
								</div>
								<div class="form-group row pb-3">
									<div class="col-md-4">
										<form:label path="sNombreEmpresa">Nombre Empresa: </form:label>
										<form:input path="sNombreEmpresa" required="required"
											class="form-control" placeholder="Ingrese Nombre Empresa" />
										<br>
									</div>

									<div class="col-md-4">
										<form:label path="sRutEmpresa">RUT Empresa: </form:label>
										<form:input path="sRutEmpresa" required="required"
											class="form-control" placeholder="Ingrese Rut Empresa" />
										<br>
									</div>

									<div class="col-md-4">
										<form:label path="sGiroEmpresa">Giro Empresa: </form:label>
										<form:input path="sGiroEmpresa" required="required"
											class="form-control" placeholder="Ingrese Giro Empresa" />
										<br>
									</div>
								</div>
								<hr>
								<div class="row">
									<div class="col-12 font-weight-bold">
										<p>Datos Contacto:</p>
									</div>
								</div>
								<div class="form-group row ">

									<div class="col-md-4">
										<form:label path="sNombreContacto">Contacto: </form:label>
										<form:input path="sNombreContacto" required="required"
											class="form-control" placeholder="Ingrese nombre contacto" />
										<br>
									</div>
									<div class="col-md-4">
										<form:label path="sTelefono">Telefono: </form:label>
										<form:input path="sTelefono" required="required"
											class="form-control" placeholder="Ingrese telefono contacto" />
										<br>
									</div>
									<div class="col-md-4">
										<form:label path="sCorreo">Correo: </form:label>
										<form:input path="sCorreo" required="required"
											class="form-control" placeholder="Ingrese correo contacto" />
										<br>
									</div>
								</div>

								<!-- <div class="form-group row pb-3">
									<div class="col-md-4">

										<label for="region">Región</label> <input type="text"
											class="form-control" id="region" name="region"
											placeholder="Ingrese Región">
									</div>
									<div class="col-md-4">
										<label for="ciudad">Ciudad</label> <input type="text"
											class="form-control" id="ciudad" name="ciudad"
											placeholder="Ingrese Ciudad">
									</div>

									<div class="col-md-4">
										<label for="direccion">Dirección</label> <input type="text"
											class="form-control" id="direccion" name="direccion"
											placeholder="Ingrese Dirección">
									</div>
								</div> -->
								<hr>
								<a href="/home" class="btn btn-info">Volver al
									home</a>
								<button type="submit" class="btn btn-primary float-right">Registrar
									Cliente Empresa</button>
							</form:form>
						</div>
					</div>
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
