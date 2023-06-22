package servelts.usuario;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UsuarioDAO;
import modelo.Usuario;
/**
 * Servlet implementation class CrearUsuario
 */
@WebServlet("/crear-usuario")
public class CrearUsuario extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CrearUsuario() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		request.getRequestDispatcher("/crear_usuario.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String nombre = request.getParameter("nombre");
		String apellido = request.getParameter("apellido");
		int run = Integer.parseInt(request.getParameter("run"));
		String contrasenia = request.getParameter("contrasenia");
		String correo = request.getParameter("correo");
		String tipoUsuario = request.getParameter("tipoUsuario");
		String area = request.getParameter("area");
		String experienciaPrevia = request.getParameter("experienciaPrevia");
		String telefono = request.getParameter("telefono");
		String direccion = request.getParameter("direccion");
		String titulo = request.getParameter("titulo");
		
		Usuario nuevoUsuario = new Usuario();
		
		nuevoUsuario.setNombre(nombre);
		nuevoUsuario.setApellido(apellido);
		nuevoUsuario.setRun(run);
		nuevoUsuario.setContrasenia(contrasenia);
		nuevoUsuario.setCorreo(correo);
		nuevoUsuario.setTipoUsuario(tipoUsuario);
		nuevoUsuario.setArea(area);
		nuevoUsuario.setExperienciaPrevia(experienciaPrevia);
		nuevoUsuario.setTelefono(telefono);
		nuevoUsuario.setDireccion(direccion);
		nuevoUsuario.setTitulo(titulo);
		
		UsuarioDAO usuarioDao = UsuarioDAO.getInstancia();
		usuarioDao.agregarUsuario(nuevoUsuario);
		response.sendRedirect("listar-usuario");
		
		
	}

}
