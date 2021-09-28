$(document).ready(function () {
  if (localStorage.getItem("token") == null) {
    window.location = "login.html";
  }
});


async function doIt() {
  var newMarca = `{"name_marca":"${document.getElementById("name_marca").value}", "pais":"${document.getElementById("pais").value}",
    "pais_api":"${document.getElementById("pais_api").value}", "descripcion":"${document.getElementById("descripcion").value}", "imagen":"${document.getElementById("url_marca").value}", "imagen_flag":"${document.getElementById("url_pais").value}" }`;

  await insertMarca(newMarca);
  limpiarCampos();
}

function limpiarCampos() {
  document.getElementById("name_marca").value = "";
  document.getElementById("name_api").value = "";
  document.getElementById("pais").value = "";
  document.getElementById("pais_api").value = "";
  document.getElementById("descripcion").value = "";
  document.getElementById("url_marca").value = "";
  document.getElementById("url_pais").value = "";
}

function insertMarca(marca) {
  return new Promise((resolve) => {
    fetch(`/marca`, {
      method: 'POST',
      body: marca,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ' + localStorage.getItem("token")
      }
    }).then(function (response) {
      if (response.ok) {
        toastr.success("Marca añadida correctamente");
      } else {
        toastr.error("Marca ya existe");
      }
    }).then((res) => resolve(res));
  });
}


function myFunction() {
  var x = document.getElementById("myTopnav");
  if (x.className === "topnav") {
    x.className += " responsive";
  } else {
    x.className = "topnav";
  }
}