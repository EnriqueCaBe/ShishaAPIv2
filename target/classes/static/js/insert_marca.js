$(document).ready(function () {
  if (localStorage.getItem("token") == null) {
    window.location = "login.html";
  }
  getMarcas();
});

async function getMarcas(){
  const marcas = await getMarcasJSON();
  var letras_añadidas = [];
  marcas.map((marca) => {
    if (!letras_añadidas.includes(marca.name_marca.charAt(0))) {
      document.getElementById("marca").insertAdjacentHTML("beforeend", `<option disabled value="" id="${marca.name_marca.charAt(0)}">--${marca.name_marca.charAt(0)}</option>`);
      letras_añadidas.push(marca.name_marca.charAt(0));
    }
    document.getElementById(marca.name_marca.charAt(0)).insertAdjacentHTML("afterend", `<option value="${marca.id}">${marca.name_marca}</option>`);
  });
}

async function doIt(){
  const marca = await getMarcaByID(document.getElementById("marca").value);
  await insertMarca(marca);
}


function getMarcasJSON() {
  return new Promise((resolve) => {
    $.ajax({
      headers: {
        Authorization: localStorage.getItem("token")
      },
      url: `/admin/db/marcas`,
      type: "GET",
      dataType: "json",
      success: function (data) {
        resolve(data)
      },
      error: function () {},
    });
  });
}

function getMarcaByID(id){
  return new Promise((resolve) => {
    $.ajax({
      headers: {
        Authorization: localStorage.getItem("token")
      },
      url: `/admin/db/marca/${id}`,
      type: "GET",
      dataType: "json",
      success: function (data) {
        resolve(data)
      },
      error: function () {},
    });
  });
}

function insertMarca(marca) {
  return new Promise((resolve) => {
    fetch(`/admin/marca`, {
      method: 'POST',
      body: JSON.stringify(marca),
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