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
			console.log('pasamos por aqui')
		}
	);
	switch(tipoUsuario.value){
		case "Administrativo": //usuario administrativo
			document.getElementById("areaExperiencia").style.display ="block";
			console.log('esto debe hacer cuando pongo administrativo')
			break;
		case "Cliente": // usuario cliente
			document.getElementById("telefonoDireccion").style.display = "block";
			break;
		case "Profesional": // usuario profesional
			document.getElementById("tituloProfesional").style.display ="block";
			break;
		default:
			break;
			
	}
});

function mostrarInputs(){
	console.log("holi")
	switch(tipoUsuario.value){
		case "Administrativo": //usuario administrativo
			document.getElementById("areaExperiencia").style.display ="block";
			console.log('esto debe hacer cuando pongo administrativo')
			break;
		case "Cliente": // usuario cliente
			document.getElementById("telefonoDireccion").style.display = "block";
			break;
		case "Profesional": // usuario profesional
			document.getElementById("tituloProfesional").style.display ="block";
			break;
		default:
			break;
			
	}
	
};
window.onload = mostrarInputs();
(() => {
  'use strict'

  // Fetch all the forms we want to apply custom Bootstrap validation styles to
  const forms = document.querySelectorAll('.needs-validation')
	
  // Loop over them and prevent submission
  Array.from(forms).forEach(form => {
    form.addEventListener('submit', event => {	
      if (!form.checkValidity()) {			
        event.preventDefault()
        event.stopPropagation()
      }     
	
      form.classList.add('was-validated')
    }, false)
      }
  
  )
  
})()


