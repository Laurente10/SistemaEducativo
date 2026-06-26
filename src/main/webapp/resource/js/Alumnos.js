function confirmarEliminar(url,nombre){

    Swal.fire({
        title: '¿ESTÁS SEGURO DE ELIMINAR ESTE REGISTRO?',
        html: '<b>'+nombre+'</b><br>No podrás revertir esta acción',
        icon: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#0d6efd',
        cancelButtonColor: '#dc3545',
        confirmButtonText: 'Sí, eliminar',
        cancelButtonText: 'Cancelar'
    }).then((result)=>{

        if(result.isConfirmed){
            window.location.href = url;
        }
    });
}

function confirmarGuardar(formulario) {
  
    const id = formulario.idAlumno.value;

    const esNuevo = (id === "0" || id === "");

    Swal.fire({
        title: esNuevo
            ? '¿DESEAS GUARDAR ESTE REGISTRO?'
            : '¿DESEAS ACTUALIZAR ESTE REGISTRO?',
        text: esNuevo
            ? 'Se registrará un nuevo alumno.'
            : 'Se guardarán los cambios realizados.',
        icon: 'question',
        showCancelButton: true,
        confirmButtonColor: '#0d6efd',
        cancelButtonColor: '#dc3545',
        confirmButtonText: esNuevo
            ? 'Sí, guardar'
            : 'Sí, actualizar',
        cancelButtonText: 'Cancelar'
    }).then((result) => {

        if (result.isConfirmed) {
            formulario.submit();
        }

    });

    return false;
}