package pe.edu.vallegrande.app.pruebas;

import pe.edu.vallegrande.app.modelo.personDao;

public class DeleteLogico {

	public static void main(String[] args) {
		personDao personDao = new personDao(); // Instancia de la clase PersonDao

		// Supongamos que quieres eliminar lógicamente el registro con ID 1
		String id = "1";

		// Llamada al método deleteLogico
		personDao.deleteLogico(id);

		// Verificación de la eliminación lógica
		System.out.println("Registro eliminado lógicamente con ID: " + id);
	}

}
