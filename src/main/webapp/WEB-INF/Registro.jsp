<jsp:include page='template/header.jsp'>
<jsp:param name='title' value='Formulario Registro' />
<jsp:param name='description' value='Formulario Registro' />
</jsp:include>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<body class="body-css-registroA">
	<div class="body-css-registroB"></div>
		<div class="grad-registro"></div>
		<div class="header-registro">
			<div>Sistema<span>RRHH</span></div>
		</div>
		<br>
		<form:form action="/registro" method="POST" modelAttribute="usuario">
		<div class="registro-css">
				<input type="text" placeholder="Nombre" name="sNombre"><br><br>
      	<input type="email" placeholder="Email" name="sEmail"><br><br>
      	<input type="text" placeholder="Rut" name="sRut"><br>
				<input type="password" placeholder="Password" name="sPassword"><br>
				
			<input type="submit" value="Registrarse">
		</div>

		</form:form>
							

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