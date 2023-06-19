package pe.edu.vallegrande.app.pruebas;

import pe.edu.vallegrande.app.modelo.personDao;

public class ActivacionLogico {

	public static void main(String[] args) {
		personDao personDao = new personDao(); // Instancia de la clase PersonDao

		// Supongamos que quieres eliminar lógicamente el registro con ID 1
		String id = "33";

		// Llamada al método deleteLogico
		personDao.activacionLogico(id);

		// Verificación de la eliminación lógica
		System.out.println("Registro activo lógicamente con ID: " + id);
	}

}
