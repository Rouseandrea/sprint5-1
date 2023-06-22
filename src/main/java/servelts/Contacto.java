package servelts;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Contacto
 */

@WebServlet(name ="contacto", urlPatterns = "/contacto")
public class Contacto extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public Contacto() {
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
            request.getRequestDispatcher("/contacto.jsp").forward(request, response);
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
		 String nombre = request.getParameter("nombre");
		 String correo = request.getParameter("correo");
		 String mensaje = request.getParameter("mensaje");
		 
		 System.out.println(nombre);
		 System.out.println(correo);
		 System.out.println(mensaje);

         response.sendRedirect("inicio");
	}

}
