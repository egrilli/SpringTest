<jsp:include page='template/header.jsp'>
	<jsp:param name='title' value='Formulario Registro de Accidente' />
	<jsp:param name='description' value='Aca se registra formulario' />
</jsp:include>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	<div class="fondo-registro-accidente">
		<div class="container py-5">
			<div class="row">
				<div class="col-12">
					<div class="card text-white bg-info mb-3">
						<div class="card-header">Formulario Registro de Accidente</div>
						<div class="card-body">
							<form:form action="/accidente" method="post" modelAttribute="accidente">
								<div class="row">
									<div class="col-12 font-weight-bold">
										<p>Datos Empresa:</p>
									</div>
								</div>
								<div class="form-group row pb-3">
									<div class="col-md-4">
										<form:label path="empresa.id">Empresa: </form:label>
										<form:select path="empresa.id">
											<form:option value="0">Seleccione Empresa</form:option>

											<c:forEach items="${listaEmpresa}" var="empresa">
												<form:option value="${empresa.id}">
													<c:out value="${ empresa.sNombreEmpresa }" />
												</form:option>
											</c:forEach>
										</form:select>
										<br>
									</div>
								</div>
								<hr>
								<div class="form-group row">
									<div class="col-md-6">
									<form:label path="sFechaAccidente">Ingrese Fecha de Accidente: </form:label>
									<form:input path="sFechaAccidente" type="date" required="required"
											class="form-control" placeholder="Ingrese Fecha Accidente" />
							

									</div>
									<div class="col-md-6">
										<label for="nivelAccidente">Nivel de Accidente</label> <input
											type="text" class="form-control" id="nivelAccidente"
											name="nivelAccidente"
											placeholder="Ingrese la gravedad del accidente">
									</div>
								</div>
								<div class="form-group row ">

									<div class="col-md-4">
									<form:label path="sNombreAccidentado">Nombre Accidentado: </form:label>
									<form:input path="sNombreAccidentado" required="required"
											class="form-control" placeholder="Nombre Accidentado" />
									</div>
									<div class="col-md-4">
									<form:label path="sApellidoPac">Apellido Paterno Accidentado: </form:label>
									<form:input path="sApellidoPac" required="required"
											class="form-control" placeholder="Apellido Accidentado" />
							
									</div>
									<div class="col-md-4">
										<form:label path="sApellidoMac">Apellido Paterno Accidentado: </form:label>
									<form:input path="sApellidoMac" required="required"
											class="form-control" placeholder="Apellido Accidentado" />
									</div>
								</div>
								<div class="form-group">
								<form:label path="sObsAc">Observaciones: </form:label>
									<form:textarea path="sObsAc" required="required"
											rows="3" class="form-control" placeholder="Defina el accidente" />
								</div>
								<div>
									<a href="/home" class="btn btn-primary">Volver al home</a>
									<button type="submit" class="btn btn-danger float-right">Guardar</button>
								</div>
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
