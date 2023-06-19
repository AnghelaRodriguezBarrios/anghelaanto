<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>CASSIATEC</title>
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

<style>
html, body {
	height: 100%;
	overflow: hidden;
}

.nav-pills li a:hover {
	background-color: orange;
}

.nav-link.active {
	background-color: orange !important;
}
</style>
<body>
	<div class="container-fluid">
		<div class="row flex-nowrap">
			<div
				class="bg-danger col-auto col-md-4 col-lg-2 min-vh-100 d-flex align-items-center">
				<div class="bg-danger p-2 align-items-center">
					<a href="#"
						class="d-flex text-decoration-none mt-1 align-items-center justify-content-center text-white">
						<img src="img\Insignia SRC.png" alt="Logo CASSIATEC"
						class="logo-img" style="height: 7rem">
					</a>
					<ul class="nav nav-pills flex-column mt-4">
						<li class="nav-item py-2 py-sm-0 align-items-center"><a
							href="HOME.jsp" class="nav-link text-white text-center"> <span
								class="fs-4 ms-3 d-none d-sm-inline">HOME</span>
						</a></li>
						<li class="nav-item py-2 py-sm-0 align-items-center"><a
							href="#" class="nav-link text-white text-center"> <span
								class="fs-4 ms-3 d-none d-sm-inline">ACTUALIZAR MIS DATOS</span>
						</a></li>
						<li class="nav-item py-2 py-sm-0 align-items-center"><a
							href="#" class="nav-link text-white text-center"> <span
								class="fs-4 ms-3 d-none d-sm-inline">REGISTRAR ASISTENCIA</span>
						</a></li>
						<li class="nav-item py-2 py-sm-0 align-items-center"><a
							href="AgregarStudent.jsp" class="nav-link text-white text-center">
								<span class="fs-4 ms-3 d-none d-sm-inline">AGREGAR
									ESTUDIANTE</span>
						</a></li>
						<li class="nav-item py-2 py-sm-0 align-items-center"><a
							href="#" class="nav-link text-white text-center active"> <span
								class="fs-4 ms-3 d-none d-sm-inline">AGREGAR PERSON</span>
						</a></li>
						<li class="nav-item py-2 py-sm-0"><a href="#"
							class="nav-link text-white"> <i class="fs-5 fa fa-list"></i>
								<span class="fs-4 ms-3 d-none d-sm-inline">ACTUALIZAR
									ESTUDIANTE</span>
						</a></li>
					</ul>
				</div>
			</div>

			<div class="col p-0">
				<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
					<div class="container-fluid">
						<button class="navbar-toggler" type="button"
							data-bs-toggle="collapse" data-bs-target="#navbarNav"
							aria-controls="navbarNav" aria-expanded="false"
							aria-label="Toggle navigation">
							<span class="navbar-toggler-icon"></span>
						</button>
						<div class="collapse navbar-collapse justify-content-end"
							id="navbarNav">
							<ul class="navbar-nav">
								<li class="nav-item dropdown"><a
									class="nav-link dropdown-toggle text-white" href="#"
									id="logoutDropdown" role="button" data-bs-toggle="dropdown"
									aria-expanded="false"> Cerrar sesión </a>
									<ul class="dropdown-menu dropdown-menu-end"
										aria-labelledby="logoutDropdown">
										<li>
											<div class="d-flex flex-column align-items-center p-3">
												<img src="img\iconoUSUARIO.png" alt="Logo CASSIATEC"
													class="logo-img" style="height: 6rem"><span
													class="align-self-center">Auxiliar</span>
												<button class="btn btn-danger mt-2" data-bs-toggle="modal"
													data-bs-target="#confirmLogoutModal">Cerrar sesión</button>
											</div>
										</li>
									</ul></li>
							</ul>
						</div>
					</div>
				</nav>

				<!-- Modal -->
				<div class="modal fade" id="confirmLogoutModal" tabindex="-1"
					aria-labelledby="confirmLogoutModalLabel" aria-hidden="true">
					<div class="modal-dialog modal-dialog-centered">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title" id="confirmLogoutModalLabel">Confirmar
									cierre de sesión</h5>
								<button type="button" class="btn-close" data-bs-dismiss="modal"
									aria-label="Close"></button>
							</div>
							<div class="modal-body">
								<div class="text-center mx-auto">
									<img src="img\cerrarSESION.png" alt="Logo CASSIATEC"
										class="logo-img" style="height: 6rem">
									<H4>
										<span>¿Desea cerrar <br>sesion?
										</span>
									</H4>
								</div>
							</div>
							<div class="modal-footer">
								<div class="text-center mx-auto">
									<button type="button" class="btn btn-danger"
										onclick="cerrarSesion()">Cerrar sesión</button>
									<script>
										function cerrarSesion() {
											// Redireccionar a la página de inicio de sesión
											window.location.href = "index.jsp";
										}
									</script>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="p-0">
					<div
						class="container bg-white my-5 rounded-5 text-secondary shadow custom-padding"
						style="width: 70rem">
						<div class="card-body">
							<form action="Controlador" method="POST">
								<!-- 				<div class="form-group"> -->
								<!-- 					<label for="txtid">ID:</label> <input type="text" -->
								<!-- 						class="form-control" name="txtid"> -->
								<!-- 				</div> -->
								<div class="row">
									<div class="container">
										<h3 class="text-center">AGREGAR PERSON</h3>
									</div>
									<div
										class="col-lg-6 mb-3 text-center d-flex justify-content-center">
										<img src="img/iconoUSUARIO.png" alt="Usuario" width="100"
											height="100" class="align-self-center">
									</div>
									<div class="col-lg-6">
										<div class="mb-3">
											<label for="txtDocument_type">TIPO DOC:</label> <select
												class="form-control" name="txtDocument_type">
												<option value="" disabled selected>Elegir documento</option>
												<option value="DNI">DNI</option>
												<option value="CNE">CNE</option>
											</select>
										</div>
										<div class="mb-3">
											<label for="txtDocument_number">N° DOC:</label> <input
												type="text" class="form-control" name="txtDocument_number"
												placeholder="Escribe numero de dccumento">
										</div>
									</div>
								</div>


								<!-- 				<div class="form-group"> -->
								<!-- 					<label for="txtStatus">STATUS:</label> <input type="text" -->
								<!-- 						class="form-control" name="txtStatus" -->
								<!-- 						placeholder="Escribe tu estado"> -->
								<!-- 				</div> -->
								<div class="row">
									<div class="col-4 mb-3">
										<div class="form-group">
											<label for="txtTurn">TURNO:</label> <select
												class="form-control" name="txtTurn">
												<option value="" disabled selected>Elegir el turno</option>
												<option value="D">Mañana</option>
												<option value="T">Tarde</option>
											</select>
										</div>
									</div>

									<div class="col-4 mb-3">
										<div class="form-group">
											<label for="txtRole">ROLE:</label> <select
												class="form-control" name="txtRole">
												<option value="" disabled selected>Elegir el rol</option>
												<option value="A">Auxiliar</option>
												<option value="D">Director</option>
											</select>
										</div>
									</div>

									<div class="col-4 mb-3">
										<div class="form-group">
											<label for="txtGender">GENERO:</label> <select
												class="form-control" name="txtGender">
												<option value="" disabled selected>Elegir tu genero</option>
												<option value="F">Femenino</option>
												<option value="M">Masculino</option>
											</select>
										</div>
									</div>
								</div>


								<div class="row">
									<div class="col-6 mb-3">
										<div class="form-group">
											<label for="txtNames">NOMBRE:</label> <input type="text"
												class="form-control" name="txtNames">
										</div>
									</div>

									<div class="col-6 mb-3">
										<div class="form-group">
											<label for="txtLast_names">APELLIDO:</label> <input
												type="text" class="form-control" name="txtLast_names">
										</div>
									</div>
								</div>


								<div class="row">
									<div class="col-6 mb-3">
										<div class="form-group">
											<label for="txtPhone">TELEFONO:</label> <input type="text"
												class="form-control" name="txtPhone">
										</div>
									</div>

									<div class="col-6 mb-3">
										<div class="form-group">
											<label for="txtEmail">EMAIL:</label> <input type="text"
												class="form-control" name="txtEmail">
										</div>
									</div>
								</div>



								<div class="row">
									<div class="col-3 mb-3">
										<label for="txtBirthdate">NACIMIENTO:</label> <input
											type="date" class="form-control" name="txtBirthdate">
									</div>

									<div class="col-6 mb-3">
										<div class="form-group">
											<label for="txtCode_ubigeo">UBIGEO:</label> <select
												class="form-control" name="txtCode_ubigeo">
												<option value="">Eliga su ubigeo segun su DNI</option>
												<option value="010101">AMAZONAS, CHACHAPOYAS,
													CHACHAPOYAS</option>
												<option value="010102">AMAZONAS, CHACHAPOYAS,
													ASUNCION</option>
												<option value="010103">AMAZONAS, CHACHAPOYAS,
													BALSAS</option>
												<option value="010104">AMAZONAS, CHACHAPOYAS, CHETO</option>
												<option value="010105">AMAZONAS, CHACHAPOYAS,
													CHILIQUIN</option>
												<option value="010106">AMAZONAS, CHACHAPOYAS,
													CHUQUIBAMBA</option>
											</select>
										</div>
									</div>
								</div>



								<div class="text-center">
									<input type="submit" class="btn btn-success w-50" name="accion"
										value="Guardar">
								</div>


							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="https://kit.fontawesome.com/3d22aaea26.js"
		crossorigin="anonymous"></script>

	<%-- Mostrar modal si hay un mensaje de resultado --%>
	<%
	if (request.getAttribute("mensajeResultado") != null
			&& !request.getAttribute("mensajeResultado").toString().isEmpty()) {
	%>
	<div id="resultadoModal" class="modal">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title">Resultado del Proceso</h5>
				<button type="button" class="close" data-bs-dismiss="modal"
					aria-label="Cerrar">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<%-- Mostrar el mensaje de resultado --%>
				<p>${mensajeResultado}</p>
			</div>
		</div>
	</div>

	<script>
		document.addEventListener('DOMContentLoaded', function() {
			var modal = document.getElementById('resultadoModal');
			var mensajeResultado = "${requestScope.mensajeResultado}";

			// Mostrar el modal correspondiente
			if (mensajeResultado) {
				if (mensajeResultado.includes("exito")) {
					// Proceso exitoso
					modal.classList.add('modal-success');
				} else {
					// Proceso rechazado
					modal.classList.add('modal-error');
				}

				modal.style.display = 'block';
			}

			// Cerrar el modal al hacer clic en el botón "Cerrar"
			var closeButton = modal.querySelector('.close');
			closeButton.addEventListener('click', function() {
				modal.style.display = 'none';
			});
		});
	</script>

	<style>
/* Estilos del modal */
.modal {
	display: none;
	position: fixed;
	z-index: 1;
	padding-top: 100px;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	overflow: auto;
	background-color: rgba(0, 0, 0, 0.4);
}

.modal-content {
	background-color: #fefefe;
	margin: auto;
	padding: 20px;
	border: 1px solid #888;
	width: 80%;
	max-width: 600px;
	border-radius: 5px;
}

.modal-header {
	display: flex;
	justify-content: space-between;
	align-items: center;
	padding-bottom: 10px;
}

.modal-title {
	margin: 0;
}

.close {
	background: none;
	border: none;
	cursor: pointer;
}

.close:hover {
	color: red;
}

.modal-body {
	padding-bottom: 10px;
}

/* Estilos para resultado exitoso */
.modal-success {
	border-color: green;
}

.modal-success .modal-title {
	color: green;
}

/* Estilos para resultado rechazado */
.modal-error {
	border-color: red;
}

.modal-error .modal-title {
	color: red;
}
</style>
	<%
	}
	%>
</body>
</html>