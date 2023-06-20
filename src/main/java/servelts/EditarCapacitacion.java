package servelts;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.CapacitacionDAO;
import modelo.Capacitacion;

/**
 * Servlet implementation class editarCapacitacion
 */
@WebServlet("/editarCapacitacion")
public class EditarCapacitacion extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public EditarCapacitacion() {
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
		int id = Integer.parseInt(request.getParameter("id"));

		CapacitacionDAO capacitacionDAO = CapacitacionDAO.getInstancia();
		Capacitacion capacitacion = capacitacionDAO.obtenerCapacitacionPorId(id);

		request.setAttribute("capacitacion", capacitacion);
		request.getRequestDispatcher("editarCapacitacion.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		int id = Integer.parseInt(request.getParameter("id"));
		String rutCliente = request.getParameter("rutCliente");
		String dia = request.getParameter("dia");
		String hora = request.getParameter("hora");
		String lugar = request.getParameter("lugar");
		String duracion = request.getParameter("duracion");
		int cantidadAsistentes = Integer.parseInt(request.getParameter("cantidadAsistentes"));

		Capacitacion capacitacion = new Capacitacion();
		
		capacitacion.setId(id);
		capacitacion.setRutCliente(rutCliente);
		capacitacion.setDia(dia);
		capacitacion.setHora(hora);
		capacitacion.setLugar(lugar);
		capacitacion.setDuracion(duracion);
		capacitacion.setCantidadAsistentes(cantidadAsistentes);

		CapacitacionDAO capacitacionDao = CapacitacionDAO.getInstancia();

		capacitacionDao.actualizarCapacitacion(capacitacion);
		response.sendRedirect("listarCapacitacion");

	}

}
