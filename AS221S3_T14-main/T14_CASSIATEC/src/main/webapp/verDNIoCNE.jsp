<!DOCTYPE html>
<html>
<head>
<title>B�squeda por Document Number</title>
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
<body>
	<div class="container">
		<h1 class="mt-4">B�squeda por Document Number</h1>
		<form action="Controlador" method="POST" class="mb-4">
			<div class="form-group">
				<label for="txtDocumentNumber">Document Number:</label> <input
					type="text" class="form-control" id="txtDocumentNumber"
					name="txtDocumentNumber">
			</div>
			<button type="submit" class="btn btn-primary" name="accion"
				value="ListarDNIoCNE">Buscar</button>
		</form>

		<div id="resultContainer">
			<h2>Datos encontrados:</h2>

			<div class="row">
				<div class="col-lg-6 mb-3 text-center">
					<img src="img/iconoUSUARIO.png" alt="Usuario" width="100"
						height="100">
				</div>
				<div class="col-lg-6">
					<div class="mb-3">
						<label for="txtDocument_type">TIPO DOC:</label> <select
							class="form-control" name="txtDocument_type">
							<option value="${person.getDocument_type()}">${person.getDocument_type()}</option>
							<option value="">Eliga un documento</option>
							<option value="CNE">CNE</option>
							<option value="DNI">DNI</option>
						</select>
					</div>
					<div class="mb-3">
						<div class="form-group">
							<label for="txtDocument_number">N� DOC:</label> <input
								type="text" class="form-control" name="txtDocument_number"
								value="${person.getDocument_number()}"
								placeholder="Escribe numero de dccumento">
						</div>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-6 mb-3">
					<div class="form-group">
						<label for="txtRole">ROLE:</label> <select class="form-control"
							name="txtRole">
							<option value="${person.getRole()}">${person.getRole()}</option>
							<option value="">Eliga su rol</option>
							<option value="A">Auxiliar</option>
							<option value="D">Director</option>
						</select>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-6 mb-3">
					<div class="form-group">
						<label for="txtTurn">TURNO:</label> <select class="form-control"
							name="txtTurn">
							<option value="${person.getTurn()}">${person.getTurn()}</option>
							<option value="">Eliga su Turno</option>
							<option value="D">Dia</option>
							<option value="T">Tarde</option>
						</select>
					</div>
				</div>

				<div class="col-6 mb-3">
					<div class="form-group">
						<label for="txtGender">GENERO:</label> <select
							class="form-control" name="txtGender">
							<option value="${person.getGender()}">${person.getGender()}</option>
							<option value="">Eliga su genero</option>
							<option value="M">Masculino</option>
							<option value="F">Femenino</option>
						</select>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-6 mb-3">
					<label for="txtNames">NOMBRE:</label> <input type="text"
						class="form-control" name="txtNames" value="${person.getNames()}">
				</div>

				<div class="col-6 mb-3">
					<label for="txtLast_names">APELLIDO:</label> <input type="text"
						class="form-control" name="txtLast_names"
						value="${person.getLast_names()}">
				</div>
			</div>

			<div class="row">

				<div class="col-6 mb-3">
					<label for="txtPhone">TELEFONO:</label> <input type="text"
						class="form-control" name="txtPhone" value="${person.getPhone()}">
				</div>


				<div class="col-6 mb-3">
					<label for="txtEmail">EMAIL:</label> <input type="text"
						class="form-control" name="txtEmail" value="${person.getEmail()}">
				</div>
			</div>


			<div class="row">
				<div class="col-3 mb-3">
					<label for="txtBirthdate">NACIMIENTO:</label> <input type="date"
						class="form-control" name="txtBirthdate"
						value="${person.getBirthdate()}">
				</div>

				<div class="col-6 mb-3">
					<div class="form-group">
						<label for="txtCode_ubigeo">Ubigeo:</label> <input type="text"
							class="form-control" name="txtCode_ubigeo"
							value="${person.getCityFromUbigeo()}">
					</div>
				</div>

			</div>
		</div>
		<div class="text-center">
			<input type="submit" class="btn btn-success w-50" name="accion"
				value="Actualizar">
		</div>
	</div>
</body>
</html>
