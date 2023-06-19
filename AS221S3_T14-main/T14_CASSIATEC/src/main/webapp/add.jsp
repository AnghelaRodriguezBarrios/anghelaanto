<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSP Page</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
	crossorigin="anonymous"></script>
</head>
<body style="background-color: yellow;">
	<div class="position-relative">
		<a href="actualizarPIZZA.jsp"><button
				class="btn btn-primary position-absolute top-0 start-0">Back</button></a>
	</div>
	<center>
		<div class="container">
			<h3 class="text-center">AGREGAR perrson</h3>
		</div>
		<hr>
		<div class="container">
			<form action="Controlador" method="POST">
				<!-- 				<div class="form-group"> -->
				<!-- 					<label for="txtid">ID:</label> <input type="text" -->
				<!-- 						class="form-control" name="txtid"> -->
				<!-- 				</div> -->
				<div class="form-group">
					<label for="txtDocument_type">TIPO DOC:</label> <select
						class="form-control" name="txtDocument_type">
						<option value="" disabled selected>Elegir documento</option>
						<option value="DNI">DNI</option>
						<option value="CNE">CNE</option>
					</select>
				</div>
				<div class="form-group">
					<label for="txtDocument_number">N° DOC:</label> <input type="text"
						class="form-control" name="txtDocument_number"
						placeholder="Escribe numero de dccumento">
				</div>
				<div class="form-group">
					<label for="txtRole">ROLE:</label> <select class="form-control"
						name="txtRole">
						<option value="" disabled selected>Elegir el rol</option>
						<option value="A">Auxiliar</option>
						<option value="D">Director</option>
					</select>
				</div>
				<!-- 				<div class="form-group"> -->
				<!-- 					<label for="txtStatus">STATUS:</label> <input type="text" -->
				<!-- 						class="form-control" name="txtStatus" -->
				<!-- 						placeholder="Escribe tu estado"> -->
				<!-- 				</div> -->
				<div class="form-group">
					<label for="txtTurn">TURNO:</label> <select class="form-control"
						name="txtTurn">
						<option value="" disabled selected>Elegir el turno</option>
						<option value="D">Mañana</option>
						<option value="T">Tarde</option>
					</select>
				</div>
				<div class="form-group">
					<label for="txtGender">GENERO:</label> <select class="form-control"
						name="txtGender">
						<option value="" disabled selected>Elegir tu genero</option>
						<option value="F">Femenino</option>
						<option value="M">Masculino</option>
					</select>
				</div>
				<div class="form-group">
					<label for="txtNames">NOMBRE:</label> <input type="text"
						class="form-control" name="txtNames">
				</div>
				<div class="form-group">
					<label for="txtLast_names">APELLIDO:</label> <input type="text"
						class="form-control" name="txtLast_names">
				</div>
				<div class="form-group">
					<label for="txtBirthdate">NACIMIENTO:</label> <input type="date"
						class="form-control" name="txtBirthdate">
				</div>
				<div class="form-group">
					<label for="txtEmail">EMAIL:</label> <input type="text"
						class="form-control" name="txtEmail">
				</div>
				<div class="form-group">
					<label for="txtPhone">TELEFONO:</label> <input type="text"
						class="form-control" name="txtPhone">
				</div>
				<div class="form-group">
					<label for="txtCode_ubigeo">UBIGEO:</label> <input type="text"
						class="form-control" name="txtCode_ubigeo">
				</div>
				<input type="submit" class="btn btn-primary" name="accion"
					value="Guardar">
			</form>
		</div>
	</center>

</body>
</html>