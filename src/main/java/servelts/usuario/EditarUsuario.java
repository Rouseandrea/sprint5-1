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
 * Servlet implementation class EditarUsuario
 */
@WebServlet("/editar-usuario")
public class EditarUsuario extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditarUsuario() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		int id = Integer.parseInt(request.getParameter("id"));
		UsuarioDAO  usuarioDAO = UsuarioDAO.getInstancia();
		Usuario usuario = usuarioDAO.obtenerUsuarioPorId(id);
		
		request.setAttribute("usuario", usuario);
		
		request.getRequestDispatcher("editar_usuario.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int id = Integer.parseInt(request.getParameter("id"));				
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
		
		
		Usuario editUser = new Usuario();
		editUser.setId(id);
		editUser.setNombre(nombre);
		editUser.setApellido(apellido);
		editUser.setRun(run);
		editUser.setContrasenia(contrasenia);
		editUser.setCorreo(correo);
		editUser.setTipoUsuario(tipoUsuario);
		editUser.setArea(area);
		editUser.setExperienciaPrevia(experienciaPrevia);
		editUser.setTelefono(telefono);
		editUser.setDireccion(direccion);
		editUser.setTitulo(titulo);
		
		
		UsuarioDAO editDao = UsuarioDAO.getInstancia();
		editDao.actualizarUsuario(editUser);
		
		response.sendRedirect("listar-usuario");
	}

}
