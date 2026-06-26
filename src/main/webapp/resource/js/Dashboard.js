function actualizarFechaHora(){

    const ahora = new Date();

    const opcionesFecha = {
        weekday:'long',
        year:'numeric',
        month:'long',
        day:'numeric'
    };

    document.getElementById("fechaActual").innerHTML =
        ahora.toLocaleDateString('es-PE',opcionesFecha);

    document.getElementById("horaActual").innerHTML =
        ahora.toLocaleTimeString('es-PE',{
            hour:'2-digit',
            minute:'2-digit',
            second:'2-digit'
        });

}

actualizarFechaHora();

setInterval(actualizarFechaHora,1000);