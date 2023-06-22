package servelts;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.UsuarioDAO;
import modelo.Usuario;

/**
 * Servlet implementation class Login
 */
@WebServlet("/login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.getRequestDispatcher("/login.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String correo = request.getParameter("correo");
		String contrasenia = request.getParameter("contrasenia");
		
		
		
		UsuarioDAO buscarUser = UsuarioDAO.getInstancia();
		
		Usuario userEncontrado = buscarUser.obtenerUsuarioPorEmail(correo);
		
		
		if (userEncontrado != null && userEncontrado.getContrasenia().equals(contrasenia)) {
	        // correctisimo
	        HttpSession session = request.getSession();
	        session.setAttribute("usuario", userEncontrado);
	        response.sendRedirect(request.getContextPath() + "/contacto");
	    } else {
	        // correctisimo'nt
	        response.sendRedirect(request.getContextPath() + "/login");
	    }
		

	}

}
