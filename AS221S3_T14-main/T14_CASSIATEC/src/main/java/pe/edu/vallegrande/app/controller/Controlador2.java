package pe.edu.vallegrande.app.controller;

import java.io.IOException;

import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



import pe.edu.vallegrande.app.modelo.person;
import pe.edu.vallegrande.app.modelo.student;
import pe.edu.vallegrande.app.service.personDao;
import pe.edu.vallegrande.app.service.studentDao;

/**
 * Servlet implementation class Controlador
 */
@WebServlet("/Controlador2")
public class Controlador2 extends HttpServlet {

	studentDao dao = new studentDao();
	student s = new student();
	student st = new student();

	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Controlador2() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String accion = request.getParameter("accion");
		switch (accion) {
			case "Listar":
				List<student>datos = dao.listar();
				request.setAttribute("datos", datos);
				request.getRequestDispatcher("crudCompletoStudent.jsp").forward(request, response);
				break;
			case "ListarDNIoCNE":
			    String documentNumber = request.getParameter("txtDocumentNumber");
			    personDao studentDao = new personDao();
			    person student = studentDao.listarDNIoCNE(documentNumber);
			    request.setAttribute("student", student);
			    request.getRequestDispatcher("ResultadoVerDoc.jsp").forward(request, response);
			    break;
			case "ListarEliminados":
				List<student>datos1 = dao.listarInactivos();
				request.setAttribute("datos", datos1);
				request.getRequestDispatcher("actualizarStudent.jsp").forward(request, response);
				break;
			case "Nuevo":
				request.getRequestDispatcher("add.jsp").forward(request, response);
				break;
			case "Guardar":
			    	String id = request.getParameter("txtid");
					String Document_type = request.getParameter("txtDocument_type");
					String Document_number = request.getParameter("txtDocument_number");
					String Status = request.getParameter("txtStatus");
					String Turn = request.getParameter("txtTurn");
					String Names = request.getParameter("txtNames");
					String Last_names = request.getParameter("txtLast_names");
					String Birthdate = request.getParameter("txtBirthdate");
					String Section = request.getParameter("txtSection");
					String Grade = request.getParameter("txtGrade");
					String Email = request.getParameter("txtEmail");
					String Phone_proxy = request.getParameter("txtPhone");
					String Code_ubigeo = request.getParameter("txtCode_ubigeo");
					s.setId(id);
					s.setDocument_type(Document_type);
					s.setDocument_number(Document_number);
					s.setStatus(Status);
					s.setTurn(Turn);
					s.setNames(Names);
					s.setLast_names(Last_names);
					s.setBirthdate(Birthdate);
					s.setSection(Section);
					s.setGrade(Grade);
					s.setEmail(Email);
					s.setPhone_proxy(Phone_proxy);
					s.setCode_ubigeo(Code_ubigeo);

					// Realizar la inserción en la base de datos
					int resultadoInsercion = dao.agregar(s);

					// Verificar el resultado de la inserción
					boolean insercionExitosa = (resultadoInsercion > 0);
					String mensajeResultado;

					if (insercionExitosa) {
					    mensajeResultado = "Se ha agregado una estudiante nuevo con exito";
					} else {
					    mensajeResultado = "No se pudo agregar al estudiante. Por favor, verifique sus datos sean unicos y no dejar campos vacios";
					}

					// Guardar el resultado en una variable
					request.setAttribute("mensajeResultado", mensajeResultado);

					request.getRequestDispatcher("AgregarStudent.jsp").forward(request, response);
					break;
//			case "Editar":
//				String ide = request.getParameter("id");
//				person p = dao.listarID(ide);
//				request.setAttribute("person", p );
//				request.getRequestDispatcher("edit.jsp").forward(request, response);
//				break;
//			case "Actualizar":
//				String id1 = request.getParameter("txtid");
//				String Document_type1 = request.getParameter("txtDocument_type");
//				String Document_number1 = request.getParameter("txtDocument_number");
//				String Role1 = request.getParameter("txtRole");
//				String Status1 = request.getParameter("txtStatus");
//				String Turn1 = request.getParameter("txtTurn");
//				String Names1 = request.getParameter("txtNames");
//				String Last_names1 = request.getParameter("txtLast_names");
//				String Birthdate1 = request.getParameter("txtBirthdate");
//				String Birthdate1 = request.getParameter("txtBirthdate");
//				String Birthdate1 = request.getParameter("txtBirthdate");
//				String Email1 = request.getParameter("txtEmail");
//				String Phone_proxy1 = request.getParameter("txtPhone");
//				String Code_ubigeo1 = request.getParameter("txtCode_ubigeo");
//				st.setId(id1);
//				st.setDocument_type(Document_type1);
//				st.setDocument_number(Document_number1);
//				st.setRole(Role1);
//				st.setStatus(Status1);
//				st.setTurn(Turn1);
//				st.setGender(Gender1);
//				st.setNames(Names1);
//				st.setLast_names(Last_names1);
//				st.setBirthdate(Birthdate1);
//				st.setEmail(Email1);
//				st.setPhone_proxy(Phone_proxy1);
//				st.setCode_ubigeo(Code_ubigeo1);
//				dao.actualizar(st);
//				request.getRequestDispatcher("Controlador?accion=Listar").forward(request, response);
//				break;
//			case "Delete":
//				String id2 = request.getParameter("id");
//				dao.deleteLogico(id2);
//				request.getRequestDispatcher("Controlador?accion=Listar").forward(request, response);
//				break;
//			case "Reactivar":
//				String id3 = request.getParameter("id");
//				dao.activacionLogico(id3);
//				request.getRequestDispatcher("Controlador?accion=Listar").forward(request, response);
//				break;
			default:
				throw new AssertionError();
		}
		
	}

}
