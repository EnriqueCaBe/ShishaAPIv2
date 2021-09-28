$(document).ready(function () {

  if (localStorage.getItem("token") == null) {
    window.location = "login.html";
  }

  getMarcas();
});



async function doIt() {
  const tabaco = `{"name_tabaco": "${document.getElementById("name_tabaco").value}" ,"name_api": "${document.getElementById("name_api").value}" ,
  "descripcion": "${document.getElementById("descripcion").value}","sabor1":"${document.getElementById("sabor1").value}",
  "sabor2":"${document.getElementById("sabor2").value}","sabor3":"${document.getElementById("sabor3").value}","sabor4":"${document.getElementById("sabor4").value}",
  "sabor5":"${document.getElementById("sabor5").value}" ,"marca": "${document.getElementById("marca").value}", "imagen":"${document.getElementById("imagen").value}", "imagen_flag":null}`;

  await insertTabaco(tabaco);
  limpiarCampos();
}

function limpiarCampos() {
  document.getElementById("name_tabaco").value = "";
  document.getElementById("name_api").value = "";
  document.getElementById("marca").value = "";
  document.getElementById("descripcion").value = "";
  document.getElementById("sabor1").value = "";
  document.getElementById("sabor2").value = "";
  document.getElementById("sabor3").value = "";
  document.getElementById("sabor4").value = "";
  document.getElementById("sabor5").value = "";
  document.getElementById("imagen").value = "";
}

function insertTabaco(tabaco) {
  return new Promise((resolve) => {
    fetch(`/tabaco`, {
      method: 'POST',
      body: tabaco,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ' + localStorage.getItem("token")
      }
    }).then(function (response) {
      if (response.ok) {
        toastr.success("Tabaco añadido")
      } else {
        toastr.error("Ya existe el tabaco");
      }
    }).then((res) => resolve(res));
  });
}

async function getMarcas() {
  const marcas = await getJsonMarcas();
  var letras_añadidas = [];
  marcas.map((marca) => {
    if (!letras_añadidas.includes(marca.name_marca.charAt(0))) {
      document.getElementById("marca").insertAdjacentHTML("beforeend", `<option disabled value="" id="${marca.name_marca.charAt(0)}">--${marca.name_marca.charAt(0)}</option>`);
      letras_añadidas.push(marca.name_marca.charAt(0));
    }
    document.getElementById(marca.name_marca.charAt(0)).insertAdjacentHTML("afterend", `<option value="${marca.name_marca}">${marca.name_marca}</option>`);
  });
}

function getJsonMarcas() {
  return new Promise((resolve) => {
    $.ajax({
      headers: {
        Authorization: localStorage.getItem("token")
      },
      url: `/marca/all`,
      type: "GET",
      dataType: "json",
      success: function (data) {
        resolve(data)
      },
      error: function () {},
    });
  });
}