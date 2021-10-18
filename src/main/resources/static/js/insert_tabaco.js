
var formatosJSON = [];
$(document).ready(function () {

  // if (localStorage.getItem("token") == null) {
  //   window.location = "login.html";
  // }

  getMarcas();

  const selectElement = document.getElementById("marca");

  selectElement.addEventListener('change', (event) => {
    putTabacos(event.target.value);
    $("#tabaco").removeAttr("disabled");
  });

  const tabacoSelect = document.getElementById("tabaco");

  tabacoSelect.addEventListener('change', (event) => {
    putFormatos(event.target.value);
  });
});

async function putTabacos(id){
  const tabacos = await getTabacosJSON(id);
  var letras = [];
  tabacos.map((tabaco) => {
    if (!letras.includes(tabaco.name_tabaco.charAt(0))) {
      document.getElementById("tabaco").insertAdjacentHTML("beforeend", `<option disabled value="" id="${tabaco.name_tabaco.charAt(0)}">--${tabaco.name_tabaco.charAt(0)}</option>`);
      letras.push(tabaco.name_tabaco.charAt(0));
    }
    document.getElementById(tabaco.name_tabaco.charAt(0)).insertAdjacentHTML("afterend", `<option value="${tabaco.id}">${tabaco.name_tabaco}</option>`);
  });
}

async function putFormatos(id){
  const tabaco = await getTabacoByID(id);
  formatosJSON = tabaco.formatos;
  tabaco.formatos.map((formato) => {
    document.getElementById("formatos").insertAdjacentHTML("beforeend",`<label style="font-size:25px;margin-left:15%;"><input type="checkbox" id='${formato.id}' style="margin-right: 5px;">${formato.gramos}gramos &#8594; ${formato.precio}€</label>`);
  });
}


async function doIt() {
  // const tabaco = `{"name_tabaco": "${document.getElementById("name_tabaco").value}" ,"name_api": "${document.getElementById("name_api").value}" ,
  // "descripcion": "${document.getElementById("descripcion").value}","sabor1":"${document.getElementById("sabor1").value}",
  // "sabor2":"${document.getElementById("sabor2").value}","sabor3":"${document.getElementById("sabor3").value}","sabor4":"${document.getElementById("sabor4").value}",
  // "sabor5":"${document.getElementById("sabor5").value}" ,"marca": "${document.getElementById("marca").value}", "imagen":"${document.getElementById("imagen").value}", "imagen_flag":null}`;
  var formatos = [];
  $('input[type=checkbox]:checked').each(function() {
    formatos.push($(this).prop("id"));
    
  });

  console.log(formatos);

  var formatosJsonToPost = [];
  formatosJSON.map((formato) =>{
    for(var i=0; i<formatos.length; i++) {
      if(formato.id == formatos[i].id) {
        console.log(formatos[i]);
      }
    }
  })
  //await insertTabaco(tabaco);
}

async function getMarcas() {
  const marcas = await getJsonMarcas();
  var letras_añadidas = [];
  marcas.map((marca) => {
    if (!letras_añadidas.includes(marca.name_marca.charAt(0))) {
      document.getElementById("marca").insertAdjacentHTML("beforeend", `<option disabled value="" id="${marca.name_marca.charAt(0)}">--${marca.name_marca.charAt(0)}</option>`);
      letras_añadidas.push(marca.name_marca.charAt(0));
    }
    document.getElementById(marca.name_marca.charAt(0)).insertAdjacentHTML("afterend", `<option value="${marca.id}">${marca.name_marca}</option>`);
  });
}

function getTabacoByID(id){
  return new Promise((resolve) => {
    $.ajax({
      headers: {
        Authorization: localStorage.getItem("token")
      },
      url: `/admin/db/tabaco/${id}`,
      type: "GET",
      dataType: "json",
      success: function (data) {
        resolve(data)
      },
      error: function () {},
    });
  });
}

function getTabacosJSON(id){
  return new Promise((resolve) => {
    $.ajax({
      headers: {
        Authorization: localStorage.getItem("token")
      },
      url: `/admin/db/marca/tabacos/${id}`,
      type: "GET",
      dataType: "json",
      success: function (data) {
        resolve(data)
      },
      error: function () {},
    });
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