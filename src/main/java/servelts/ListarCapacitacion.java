package servelts;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.CapacitacionDAO;
import modelo.Capacitacion;

/**
 * Servlet implementation class ListarCapacitacion
 */
@WebServlet(name = "ListarCapacitacion", urlPatterns = "/listar-capacitacion")
public class ListarCapacitacion extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ListarCapacitacion() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
		// TODO Auto-generated method stub
		
		HttpSession session = request.getSession(false);
        if (session != null && session.getAttribute("usuario") != null) {
            // Hay una sesión de usuario activa, despliega el diseño de Contacto
        	CapacitacionDAO capacitacionDAO = CapacitacionDAO.getInstancia();

    		List<Capacitacion> capacitaciones = capacitacionDAO.obtenerCapacitacion();

    		request.setAttribute("capacitaciones", capacitaciones);

    		RequestDispatcher dispatcher = request.getRequestDispatcher("/listarCapacitaciones.jsp");
    		dispatcher.forward(request, response);
        } else {
            // No hay sesión de usuario, redirecciona al login
        	
            response.sendRedirect(request.getContextPath() + "/login");
        }
		

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
