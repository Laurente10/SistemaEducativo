

function mostrarPassword(){

const input=document.getElementById("password");

const icono=document.getElementById("icono");

if(input.type==="password"){

input.type="text";

icono.className="bi bi-eye-slash";

}else{

input.type="password";

icono.className="bi bi-eye";

}

}

