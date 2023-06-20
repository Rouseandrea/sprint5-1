package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import modelo.Capacitacion;

public class CapacitacionDAO {
	private static CapacitacionDAO instancia;
	private Connection conexion;

	private CapacitacionDAO() {
		// Establecer la conexión a la base de datos en el constructor privado
		// Usar Singleton para asegurar que solo haya una instancia de UsuarioDAO
		// y una única conexión a la base de datos en todo el proyecto
		conexion = obtenerConexion(); // Implementar este método
	}

	public static CapacitacionDAO getInstancia() {
		if (instancia == null) {
			instancia = new CapacitacionDAO();
		}
		return instancia;
	}

	public List<Capacitacion> obtenerCapacitacion() {

		List<Capacitacion> capacitaciones = new ArrayList<>();
		String consulta = "SELECT id, rutCliente, dia, hora, lugar, duracion,cantidadAsistentes FROM capacitacion";

		try (PreparedStatement statement = conexion.prepareStatement(consulta);

				ResultSet resultSet = statement.executeQuery()) {

			while (resultSet.next()) {
				Capacitacion capacitacion = new Capacitacion();
				capacitacion.setId(resultSet.getInt("id"));
				capacitacion.setRutCliente(resultSet.getString("rutCliente"));
				capacitacion.setDia(resultSet.getString("dia"));
				capacitacion.setHora(resultSet.getString("hora"));
				capacitacion.setLugar(resultSet.getString("lugar"));
				capacitacion.setDuracion(resultSet.getString("duracion"));
				capacitacion.setCantidadAsistentes(resultSet.getInt("cantidadAsistentes"));

				capacitaciones.add(capacitacion);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return capacitaciones;
	}

	public void agregarCapacitacion(Capacitacion capacitacion) {
		String consulta = "INSERT INTO capacitacion (rutCliente, dia, hora, lugar, duracion,cantidadAsistentes) VALUES (?,?,?,?,?,?)";

		try (

				PreparedStatement statement = conexion.prepareStatement(consulta)) {
			statement.setString(1, capacitacion.getRutCliente());
			statement.setString(2, capacitacion.getDia());
			statement.setString(3, capacitacion.getHora());
			statement.setString(4, capacitacion.getLugar());
			statement.setString(5, capacitacion.getDuracion());
			statement.setInt(6, capacitacion.getCantidadAsistentes());

			statement.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public void eliminarCapacitacion(int id) {
		 String consulta = "DELETE FROM capacitacion WHERE id = ?";

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

	public Capacitacion obtenerCapacitacionPorId(int id) {
		Capacitacion capacitacion = null;
        String consulta = "SELECT id, rutCliente, dia, hora, lugar, duracion,cantidadAsistentes FROM capacitacion WHERE id = ?";

        try (PreparedStatement statement = conexion.prepareStatement(consulta)) {
            statement.setInt(1, id);

            try (ResultSet resultSet = statement.executeQuery()) {
                if (resultSet.next()) {
                	capacitacion = new Capacitacion();
                	capacitacion.setId(resultSet.getInt("id"));
                	capacitacion.setRutCliente(resultSet.getString("rutCliente"));
                	capacitacion.setDia(resultSet.getString("dia"));
                	capacitacion.setHora(resultSet.getString("hora"));
                	capacitacion.setLugar(resultSet.getString("lugar"));
                	capacitacion.setDuracion(resultSet.getString("duracion"));
                	capacitacion.setCantidadAsistentes(resultSet.getInt("cantidadAsistentes"));
                	
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return capacitacion;
	}

	public void actualizarCapacitacion(Capacitacion capacitacion) {
		// TODO Auto-generated method stub
		String consulta = "UPDATE capacitacion SET rutCliente = ?, dia = ?, hora = ?, lugar=?, duracion=?,cantidadAsistentes=? WHERE id = ?";

        try (PreparedStatement statement = conexion.prepareStatement(consulta)) {
        	statement.setString(1, capacitacion.getRutCliente());
			statement.setString(2, capacitacion.getDia());
			statement.setString(3, capacitacion.getHora());
			statement.setString(4, capacitacion.getLugar());
			statement.setString(5, capacitacion.getDuracion());
			statement.setInt(6, capacitacion.getCantidadAsistentes());
			statement.setInt(7, capacitacion.getId());
            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
	}
}
