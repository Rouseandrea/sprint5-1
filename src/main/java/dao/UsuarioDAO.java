package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import modelo.Usuario;

public class UsuarioDAO {
    private static UsuarioDAO instancia;
    private Connection conexion;

    private UsuarioDAO() {
        // Establecer la conexión a la base de datos en el constructor privado
        // Usar Singleton para asegurar que solo haya una instancia de UsuarioDAO
        // y una única conexión a la base de datos en todo el proyecto
        conexion = obtenerConexion(); // Implementar este método
    }

    public static UsuarioDAO getInstancia() {
        if (instancia == null) {
            instancia = new UsuarioDAO();
        }
        return instancia;
    }

    // Métodos CRUD

    public List<Usuario> obtenerUsuarios() {

        List<Usuario> usuarios = new ArrayList<>();
        String consulta = "SELECT id, nombre, correo FROM usuario";

        try (
        	 PreparedStatement statement = conexion.prepareStatement(consulta);

             ResultSet resultSet = statement.executeQuery()) {

            while (resultSet.next()) {
                Usuario usuario = new Usuario();
                usuario.setId(resultSet.getInt("id"));
                usuario.setNombre(resultSet.getString("nombre"));
                usuario.setCorreo(resultSet.getString("correo"));
                usuarios.add(usuario);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return usuarios;
    }

    public Usuario obtenerUsuarioPorId(int id) {
        Usuario usuario = null;
        String consulta = "SELECT id, nombre, correo FROM usuario WHERE id = ?";

        try (PreparedStatement statement = conexion.prepareStatement(consulta)) {
            statement.setInt(1, id);

            try (ResultSet resultSet = statement.executeQuery()) {
                if (resultSet.next()) {
                    usuario = new Usuario();
                    usuario.setId(resultSet.getInt("id"));
                    usuario.setNombre(resultSet.getString("nombre"));
                    usuario.setCorreo(resultSet.getString("correo"));
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return usuario;
    }

    public void agregarUsuario(Usuario usuario) {
        String consulta = "INSERT INTO usuario (nombre, correo) VALUES (?, ?)";

        try (

        	PreparedStatement statement = conexion.prepareStatement(consulta)) {
            statement.setString(1, usuario.getNombre());
            statement.setString(2, usuario.getCorreo());

            statement.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void actualizarUsuario(Usuario usuario) {
        String consulta = "UPDATE usuario SET nombre = ?, correo = ? WHERE id = ?";

        try (PreparedStatement statement = conexion.prepareStatement(consulta)) {
            statement.setString(1, usuario.getNombre());
            statement.setString(2, usuario.getCorreo());
            statement.setInt(3, usuario.getId());
            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void eliminarUsuario(int id) {
        String consulta = "DELETE FROM usuario WHERE id = ?";

        try (PreparedStatement statement = conexion.prepareStatement(consulta)) {
            statement.setInt(1, id);
            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }


    private Connection obtenerConexion() {
        Connection conexion = null;
        try {
            String url = "jdbc:mysql://localhost:3306/test_java";
            String usuario = "root";
            String password = "";
            Class.forName("com.mysql.cj.jdbc.Driver");
            conexion = DriverManager.getConnection(url, usuario, password);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return conexion;
    }
}