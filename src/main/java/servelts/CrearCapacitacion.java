package servelts;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.CapacitacionDAO;
import modelo.Capacitacion;
/**
 * Servlet implementation class CrearCapacitacion
 */
@WebServlet(name = "capacitacion", urlPatterns="/crear-capacitacion")
public class CrearCapacitacion extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public CrearCapacitacion() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    @Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
    	HttpSession session = request.getSession(false);
        if (session != null && session.getAttribute("usuario") != null) {
            // Hay una sesión de usuario activa, despliega el diseño de Contacto
            request.getRequestDispatcher("/crearCapacitacion.jsp").forward(request, response);
        } else {
            // No hay sesión de usuario, redirecciona al login
            response.sendRedirect(request.getContextPath() + "/login");
        }
    	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
    @Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
    	 String rutCliente = request.getParameter("rutCliente");
    	 String dia= request.getParameter("dia");
    	 String hora= request.getParameter("hora");
    	 String lugar= request.getParameter("lugar");
    	 String duracion= request.getParameter("duracion");
    	 int cantidadAsistentes= Integer.parseInt(request.getParameter("cantidadAsistentes"));
    	 
    	 Capacitacion capacitacion = new Capacitacion();
    	 
    	 capacitacion.setRutCliente(rutCliente);
    	 capacitacion.setDia(dia);
    	 capacitacion.setHora(hora);
    	 capacitacion.setLugar(lugar);
    	 capacitacion.setDuracion(duracion);
    	 capacitacion.setCantidadAsistentes(cantidadAsistentes);
    	 
    	 CapacitacionDAO capacitacionDao = CapacitacionDAO.getInstancia();
    	 
    	 capacitacionDao.agregarCapacitacion(capacitacion);
    	 response.sendRedirect("listarCapacitacion");   	 
    	 
    	 
    	 
	}


}
