<jsp:include page='template/header.jsp'>
	<jsp:param name='title' value='Formulario Login' />
	<jsp:param name='description' value='Formulario Login' />
</jsp:include>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<body class="body-css-login">
<div class="container h-80">
<div class="row align-items-center h-100">
    <div class="col-3 mx-auto">
        <div class="text-center">
        <br>
            <img id="profile-img" class="rounded-circle profile-img-card" src="https://i.imgur.com/6b6psnA.png" />
            <p id="profile-name" class="profile-name-card"></p>
          <form:form action="/login" method="POST"
									modelAttribute="usuario">
									<div class="form-group">
										<form:label path="sEmail">Email: </form:label>
										<form:input path="sEmail" required="required"
											class="form-control" placeholder="Ingrese Correo" />
										<br>
										<form:label path="sPassword">Password: </form:label>
										<form:input path="sPassword" required="required"
											type="password" class="form-control" placeholder="Ingrese Password" />
										<br>
                <button class="btn btn-lg btn-primary btn-block btn-signin" type="submit">Entrar</button>
         </form:form>
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

