<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
							href="#" class="nav-link text-white text-center  active"> <span
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
							href="AgregarPerson.jsp" class="nav-link text-white text-center">
								<span class="fs-4 ms-3 d-none d-sm-inline">AGREGAR PERSON</span>
						</a></li>
						<li class="nav-item py-2 py-sm-0 align-items-center"><a
							href="ActualizarEstudiante.jsp"
							class="nav-link text-white text-center"> <span
								class="fs-4 ms-3 d-none d-sm-inline">ACTUALIZAR
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
					<center>
						<div class="container">
							<h3>CRUD person</h3>
							<form class="mb-3" action="Controlador" method="POST">
								<input class="btn btn-primary" type="submit" name="accion"
									value="Listar">


								<button type="button" class="btn btn-primary"
									onclick="window.location.href='verDNIoCNE.jsp'">Buscar
									por N° Doc</button>


								<input class="btn btn-warning" data-bs-toggle="modal"
									data-bs-target="#exampleModa2" type="submit" name="accion"
									value="ListarEliminados">



								<form class="mb-3" action="Controlador" method="POST">
									<!-- Button Reactivar Estudiante modal -->
									<button type="button" class="btn btn-warning"
										data-bs-toggle="modal" data-bs-target="#exampleModa2">Reactivar
										Estudiante</button>
								</form>





								<!-- Modal REACTIVAR estudiante -->
								<div class="modal fade" id="exampleModa2" tabindex="-1"
									aria-labelledby="exampleModalLabel" aria-hidden="true">
									<div class="modal-dialog custom-modal-dialog">

										<div class="modal-content">
											<div class="modal-header">
												<h1 class="modal-title fs-5" id="exampleModalLabel">Reactivar
													Estudiante XD</h1>
												<button type="button" class="btn-close"
													data-bs-dismiss="modal" aria-label="Close"></button>
											</div>
											<div class="modal-body">
												<form class="mb-3" action="Controlador" method="POST">
													<input class="btn btn-primary" type="submit" name="accion"
														value="ListarEliminados">
													<div class="container text-center">
														<table class="table table-bordered">
															<thead>
																<tr>
																	<!-- 					<th>ID</th> -->
																	<th>TIPO DOC</th>
																	<th>N° DOC</th>
																	<!-- 					<th>ROLE</th> -->
																	<!-- 					<th>STATUS</th> -->
																	<th>TURNO</th>
																	<th>GENERO</th>
																	<th>NOMBRE</th>
																	<th>APELLIDO</th>
																	<th>NACIMIENTO</th>
																	<th>EMAIL</th>
																	<th>TELEFONO</th>
																	<th>UBIGEO</th>
																	<th>ACCIONES</th>
																</tr>
															</thead>
															<tbody>
																<c:forEach var="dato" items="${datos}">
																	<tr>
																		<%-- 						<td>${dato.getId()}</td> --%>
																		<td>${dato.getDocument_type()}</td>
																		<td>${dato.getDocument_number()}</td>
																		<%-- 						<td>${dato.getRole()}</td> --%>
																		<%-- 						<td>${dato.getStatus()}</td> --%>
																		<td>${dato.getTurn()}</td>
																		<td>${dato.getGender()}</td>
																		<td>${dato.getNames()}</td>
																		<td>${dato.getLast_names()}</td>
																		<td>${dato.getBirthdate()}</td>
																		<td>${dato.getEmail()}</td>
																		<td>${dato.getPhone()}</td>
																		<td>${dato.getCityFromUbigeo()}</td>
																		<td>
																			<form action="Controlador" method="POST">
																				<input type="hidden" name="id"
																					value="${dato.getId()}"> <input
																					class="btn btn-info" type="submit" name="accion"
																					value="Reactivar">
																			</form>
																		</td>
																	</tr>
																</c:forEach>
															</tbody>
														</table>
													</div>
												</form>

											</div>
										</div>
									</div>
								</div>
						</div>
				</div>
				<div class="container">
					<table class="table table-bordered">
						<thead>
							<tr>
								<!-- 					<th>ID</th> -->
								<th>TIPO DOC</th>
								<th>N° DOC</th>
								<!-- 					<th>ROLE</th> -->
								<!-- 					<th>STATUS</th> -->
								<th>TURNO</th>
								<th>GENERO</th>
								<th>NOMBRE</th>
								<th>APELLIDO</th>
								<th>NACIMIENTO</th>
								<th>EMAIL</th>
								<th>TELEFONO</th>
								<th>UBIGEO</th>
								<th>ACCIONES</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="dato" items="${datos}">
								<tr>
									<%-- 						<td>${dato.getId()}</td> --%>
									<td>${dato.getDocument_type()}</td>
									<td>${dato.getDocument_number()}</td>
									<%-- 						<td>${dato.getRole()}</td> --%>
									<%-- 						<td>${dato.getStatus()}</td> --%>
									<td>${dato.getTurn()}</td>
									<td>${dato.getGender()}</td>
									<td>${dato.getNames()}</td>
									<td>${dato.getLast_names()}</td>
									<td>${dato.getBirthdate()}</td>
									<td>${dato.getEmail()}</td>
									<td>${dato.getPhone()}</td>
									<td>${dato.getCityFromUbigeo()}</td>
									<td>
										<form action="Controlador" method="POST">
											<input type="hidden" name="id" value="${dato.getId()}">

											<input class="btn btn-primary" type="submit" name="accion"
												value="Editar">

											</div>
											<input class="btn btn-danger" type="submit" name="accion"
												value="Delete">
											<!-- 									<input type="hidden" name="accion" value="Editar" /> -->
											<!-- 									<button class="delete-button" type="submit"> -->
											<!-- 										<img src="img/editarIcon.png" alt="Editar" -->
											<!-- 											style="height: 3rem;" /> -->
											<!-- 									</button>	 -->


											<!-- 									<img src="img/basurero.png" style="height: 4rem" /> -->
											<!-- 									<input type="hidden" name="accion" value="Delete" /> -->
											<!-- 									<button class="delete-button" type="submit"> -->
											<!-- 										<img src="img/basurero.png" alt="Eliminar" -->
											<!-- 											style="height: 4rem;" /> -->
											<!-- 									</button> -->
										</form>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
				</center>
			</div>
		</div>
	</div>
	</div>
	<script src="https://kit.fontawesome.com/3d22aaea26.js"
		crossorigin="anonymous"></script>
</body>
</html>