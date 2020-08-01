<jsp:include page='template/header.jsp'>
<jsp:param name='title' value='Formulario Registro' />
<jsp:param name='description' value='Formulario Registro' />
</jsp:include>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<body>
	<main>
	<div class="fondo-registro">
		<div class="container">
			<div class="row vh-100">
				<div class="col-md-4 mx-auto d-flex align-items-center">
					<div class="card bg-light mb-3 shadow-lg">
						<div class="card-header">Registrar Usuario</div>
						<div class="card-body">
							<form:form action="/registro" method="POST" modelAttribute="usuario">
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
										
										  <form:label path="sPassword">Password: </form:label>
								 <form:input path="sPassword" required="required"
										class="form-control" placeholder="Ingrese Password"/><br>
									<button class="btn btn-primary float-right" type="submit">Registrarse</button>
								</div>
							</form:form>
						</div>
					</div>
				</div>
			</div>
		</div>
		</div>
	</main>



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