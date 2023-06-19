package pe.edu.vallegrande.app.controller;

import java.io.IOException;

import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



import pe.edu.vallegrande.app.modelo.person;
import pe.edu.vallegrande.app.service.personDao;

/**
 * Servlet implementation class Controlador
 */
@WebServlet("/Controlador")
public class Controlador extends HttpServlet {

	personDao dao = new personDao();
	person p = new person();
	person pe = new person();

	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Controlador() {
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
				List<person>datos = dao.listar();
				request.setAttribute("datos", datos);
				request.getRequestDispatcher("crudCompleto.jsp").forward(request, response);
				break;
			case "ListarDNIoCNE":
			    String documentNumber = request.getParameter("txtDocumentNumber");
			    personDao personDao = new personDao();
			    person person = personDao.listarDNIoCNE(documentNumber);
			    request.setAttribute("person", person);
			    request.getRequestDispatcher("ResultadoVerDoc.jsp").forward(request, response);
			    break;
			case "ListarEliminados":
				List<person>datos1 = dao.listarInactivos();
				request.setAttribute("datos", datos1);
				request.getRequestDispatcher("crudCompleto.jsp").forward(request, response);
				break;
			case "Nuevo":
				request.getRequestDispatcher("add.jsp").forward(request, response);
				break;
			case "Guardar":
				String id = request.getParameter("txtid");
				String Document_type = request.getParameter("txtDocument_type");
				String Document_number = request.getParameter("txtDocument_number");
				String Role = request.getParameter("txtRole");
				String Status = request.getParameter("txtStatus");
				String Turn = request.getParameter("txtTurn");
				String Gender = request.getParameter("txtGender");
				String Names = request.getParameter("txtNames");
				String Last_names = request.getParameter("txtLast_names");
				String Birthdate = request.getParameter("txtBirthdate");
				String Email = request.getParameter("txtEmail");
				String Phone = request.getParameter("txtPhone");
				String Code_ubigeo = request.getParameter("txtCode_ubigeo");
				p.setId(id);
				p.setDocument_type(Document_type);
				p.setDocument_number(Document_number);
				p.setRole(Role);
				p.setStatus(Status);
				p.setTurn(Turn);
				p.setGender(Gender);
				p.setNames(Names);
				p.setLast_names(Last_names);
				p.setBirthdate(Birthdate);
				p.setEmail(Email);
				p.setPhone(Phone);
				p.setCode_ubigeo(Code_ubigeo);
				// Realizar la inserción en la base de datos
				int resultadoInsercion = dao.agregar(p);

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

				request.getRequestDispatcher("AgregarPerson.jsp").forward(request, response);
				break;
			case "Editar":
				String ide = request.getParameter("id");
				person p = dao.listarID(ide);
				request.setAttribute("person", p );
				request.getRequestDispatcher("EditarPerson.jsp").forward(request, response);
				break;
			case "Actualizar":
				String id1 = request.getParameter("txtid");
				String Document_type1 = request.getParameter("txtDocument_type");
				String Document_number1 = request.getParameter("txtDocument_number");
				String Role1 = request.getParameter("txtRole");
				String Status1 = request.getParameter("txtStatus");
				String Turn1 = request.getParameter("txtTurn");
				String Gender1 = request.getParameter("txtGender");
				String Names1 = request.getParameter("txtNames");
				String Last_names1 = request.getParameter("txtLast_names");
				String Birthdate1 = request.getParameter("txtBirthdate");
				String Email1 = request.getParameter("txtEmail");
				String Phone1 = request.getParameter("txtPhone");
				String Code_ubigeo1 = request.getParameter("txtCode_ubigeo");
				pe.setId(id1);
				pe.setDocument_type(Document_type1);
				pe.setDocument_number(Document_number1);
				pe.setRole(Role1);
				pe.setStatus(Status1);
				pe.setTurn(Turn1);
				pe.setGender(Gender1);
				pe.setNames(Names1);
				pe.setLast_names(Last_names1);
				pe.setBirthdate(Birthdate1);
				pe.setEmail(Email1);
				pe.setPhone(Phone1);
				pe.setCode_ubigeo(Code_ubigeo1);
				dao.actualizar(pe);
				request.getRequestDispatcher("Controlador?accion=Listar").forward(request, response);
				break;
			case "Delete":
				String id2 = request.getParameter("id");
				dao.deleteLogico(id2);
				request.getRequestDispatcher("Controlador?accion=Listar").forward(request, response);
				break;
			case "Reactivar":
				String id3 = request.getParameter("id");
				dao.activacionLogico(id3);
				request.getRequestDispatcher("Controlador?accion=Listar").forward(request, response);
				break;
			default:
				throw new AssertionError();
		}
		
	}

}
