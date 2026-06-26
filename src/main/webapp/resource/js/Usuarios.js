document.addEventListener("DOMContentLoaded", function(){

    const rol = document.querySelector("select[name='idRol']");
    const divAlumno = document.getElementById("divAlumno");

    function validarRol(){

        const texto =
            rol.options[rol.selectedIndex].text.trim().toUpperCase();

        if(texto === "ALUMNO"){
            divAlumno.style.display = "block";
        }else{
            divAlumno.style.display = "none";
        }

    }

    rol.addEventListener("change", validarRol);

    validarRol();

});

function confirmarEliminacion(url, nombre) {

    Swal.fire({
        title: '¿ESTÁS SEGURO DE ELIMINAR ESTE REGISTRO?',
        html: '<b>' + nombre + '</b><br>No podrás revertir esta acción.',
        icon: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#0d6efd',
        cancelButtonColor: '#dc3545',
        confirmButtonText: 'Sí, eliminar',
        cancelButtonText: 'Cancelar'
    }).then((result) => {

        if (result.isConfirmed) {
            window.location.href = url;
        }

    });

}