﻿function edit(cedula, nombre, apellido, departamento, municipio, sexo, telefono, correo, direccion) {
    document.getElementById('MainContent_Mcedula').value = cedula;
    document.getElementById('MainContent_Mnombre').value = nombre;
    document.getElementById('MainContent_Mapellido').value = apellido;
    document.getElementById('MainContent_Mdepartamento').value = departamento;
    document.getElementById('MainContent_Mmunicipio').value = municipio;
    document.getElementById('MainContent_Mdireccion').value = direccion;
    document.getElementById('MainContent_Msexo').value = sexo;
    document.getElementById('MainContent_Mtelefono').value = telefono;
    document.getElementById('MainContent_Mcorreo').value = correo;
}

function eliminar(url)
{

    if (window.confirm()){

        window.Location = url;

    }

}
