package modelo;

public class Usuario {

    protected int id;
    protected String nombre;
    protected String apellido;
    protected String correo;
    protected int run;
	

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getCorreo() {
		return correo;
	}

	public void setCorreo(String correo) {
		this.correo = correo;
	}

	public int getRun() {
		return run;
	}

	public void setRun(int run) {
		this.run = run;
	}

	public Usuario(int id, String nombre, String apellido, String correo, int run) {		
		this.id = id;
		this.nombre = nombre;
		this.apellido = apellido;
		this.correo = correo;
		this.run = run;
	}
	public Usuario() {
		
	}

	
	






}
