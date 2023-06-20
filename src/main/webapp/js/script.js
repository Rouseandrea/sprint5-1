/**
 * 
 */

// evento para el select de crear usuario.

const tipoUsuario = document.getElementById("tipoUsuario");
const divsOcultos = document.querySelectorAll(".hidden");

tipoUsuario.addEventListener("change", function(){
	//ocultamos los divs del formulario
	divsOcultos.forEach(div => {
			div.style.display ="none";
		}
	);
	switch(tipoUsuario.value){
		case "1": //usuario administrativo
			document.getElementById("areaExperiencia").style.display ="block";
			break;
		case "2": // usuario cliente
			document.getElementById("telefonoDireccion").style.display = "block";
			break;
		case "3": // usuario profesional
			document.getElementById("tituloProfesional").style.display ="block";
			break;
		default:
			break;
			
	}
})