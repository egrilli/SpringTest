<jsp:include page='template/header.jsp'>
<jsp:param name='title' value='Formulario Registro' />
<jsp:param name='description' value='Formulario Registro' />
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
	<div class="fondo-registro">
		<div class="container">
			<div class="row vh-100">
				<div class="col-md-4 mx-auto d-flex align-items-center">
					<div class="card bg-light mb-3 shadow-lg">
						<div class="card-header">Trabajador Empresa</div>
						<div class="card-body">
							<form:form action="/trabajador" method="POST" modelAttribute="trabajador">
								<div class="form-group">
								<form:label path="sNombre">Nombre: </form:label>
								 <form:input path="sNombre" required="required"
										class="form-control" placeholder="Ingrese Nombre"/><br>
								 
								 <form:label path="sEmail">Email: </form:label>
								 <form:input path="sEmail" required="required"
										class="form-control" placeholder="Ingrese Correo"/><br>
								 
								  <form:label path="sRut">Rut: </form:label>
								 <form:input path="sRut" required="required"
										class="form-control" placeholder="Ingrese Rut"/><br>
										
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
								</div><br>
									<button class="btn btn-primary float-right" type="submit">Registrar</button>
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