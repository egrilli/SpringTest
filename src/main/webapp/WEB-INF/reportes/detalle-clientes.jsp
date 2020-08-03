<jsp:include page='template/header.jsp'>
	<jsp:param name='title' value='Formulario Registro Cliente' />
	<jsp:param name='description' value='Aca se registra formulario' />
</jsp:include>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<body>
	<nav id="navbar-example2" class="navbar navbar-light bg-light">
		<a class="navbar-brand" href="/home">Prueba 5</a>
		<ul class="nav nav-pills">
			<li class="nav-item"><a class="nav-link" href="/cliente">Clientes
					Empresa</a></li>
			<li class="nav-item"><a class="nav-link" href="#alumno">Colaborador</a>
			</li>
			<li class="nav-item"><a class="nav-link" href="#alumno">Accidentes</a>
			</li>
			<li class="nav-item"><a class="nav-link" href="#alumno">Resumen</a>
			</li>
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" data-toggle="dropdown" href="#"
				role="button" aria-haspopup="true" aria-expanded="false">${user.sNombre}</a>
				<div class="dropdown-menu">
					<a class="dropdown-item" href="/editar">Editar</a>
					<div role="separator" class="dropdown-divider"></div>
					<a class="dropdown-item" href="/logout">Cerrar sesión</a>
				</div></li>
		</ul>
	</nav>
	<div class="fondo-registro-cliente">
		<div class="container py-5">
			<div class="row">
				<div class="col-12">
					<div class="card">
						<div class="card-header">Despliegue Reporte Empresas</div>
						<div class="card-body">

							<div id="clientes">
								<table class="table">
									<thead>
										<tr>
											<th scope="col">#</th>
											<th scope="col">Nombre</th>
											<th scope="col">RUT</th>
											<th scope="col">Giro</th>
											<th scope="col">Contacto</th>
											<th scope="col">Telefono</th>
											<th scope="col">Correo</th>
											<th scope="col">Detalle</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${listaEmpresa}" var="empresa">
											<tr>
												<td scope="row">${empresa.id}</td>
												<td>${empresa.sNombreEmpresa}</td>
												<td>${empresa.sRutEmpresa}</td>
												<td>${empresa.sGiroEmpresa}</td>
												<td>${empresa.sNombreContacto}</td>
												<td>${empresa.sTelefono}</td>
												<td>${empresa.sCorreo}</td>
												<td><a href="/empresa/${empresa.id}"></a></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
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
