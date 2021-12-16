var tabacoJSON;
$(document).ready(function () {

  // if (localStorage.getItem("token") == null) {
  //   window.location = "login.html";
  // }

  getMarcas();

  const selectElement = document.getElementById("marca");

  selectElement.addEventListener('change', (event) => {
    document.getElementById("tabaco").innerHTML = '';
    document.getElementById("formatos").innerHTML = '';
    putTabacos(event.target.value);
    $("#tabaco").removeAttr("disabled");
  });

  const tabacoSelect = document.getElementById("tabaco");

  tabacoSelect.addEventListener('change', (event) => {
    document.getElementById("formatos").innerHTML = '';
    putFormatos(event.target.value);
  });
});

async function putTabacos(id){
  const tabacos = await getTabacosJSON(id);
  document.getElementById("tabaco").insertAdjacentHTML("beforeend", `<option disabled selected value="">Selecciones un tabaco</option>`);
  tabacos.map((tabaco) => {
    document.getElementById("tabaco").insertAdjacentHTML("beforeend", `<option value="${tabaco.id}">${tabaco.name_tabaco}</option>`);
  });
}

async function putFormatos(id){
  const tabaco = await getTabacoByID(id);
  tabacoJSON = JSON.stringify(tabaco);
  document.getElementById("formatos").insertAdjacentHTML("beforeend",`<h2>Que formatos teneis?</h2>`);
  tabaco.formatos.map((formato) => {
    document.getElementById("formatos").insertAdjacentHTML("beforeend",`<label style="font-size:25px;margin-left:15%;"><input type="checkbox" id='${formato.id}' style="margin-right: 5px;">${formato.gramos}gramos &#8594; ${formato.precio}€</label>`);
  });
}


async function doIt() {
  // const tabaco = `{"name_tabaco": "${document.getElementById("name_tabaco").value}" ,"name_api": "${document.getElementById("name_api").value}" ,
  // "descripcion": "${document.getElementById("descripcion").value}","sabor1":"${document.getElementById("sabor1").value}",
  // "sabor2":"${document.getElementById("sabor2").value}","sabor3":"${document.getElementById("sabor3").value}","sabor4":"${document.getElementById("sabor4").value}",
  // "sabor5":"${document.getElementById("sabor5").value}" ,"marca": "${document.getElementById("marca").value}", "imagen":"${document.getElementById("imagen").value}", "imagen_flag":null}`;
  
  // $('input[type=checkbox]:checked').each(function() {
  //   formatos.push(parseInt($(this).prop("id")));
  // });
  var formatos = [];
  $('input[type=checkbox]:checked').each(function() {
    formatos.push(parseInt($(this).prop("id")));
  });
  if(formatos.length >0){
    tabacoJSONnew = JSON.parse(tabacoJSON);
    tabacoJSONnew.formatos.map((formato) =>{
      if(!formatos.includes(parseInt(formato.id))){
        tabacoJSONnew.formatos.splice(tabacoJSONnew.formatos.findIndex(f => f.id === formato.id),1);
      }
    });
    await insertTabaco(tabacoJSONnew);
    document.getElementById("formatos").innerHTML = '';
    document.getElementById("tabaco").innerHTML = '';
    document.getElementById("marca").value = '';
    
  }else{
    alert("No hay formatos seleccionados");
  }
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

function insertTabaco(tabaco) {
  return new Promise((resolve) => {
    fetch(`/admin/tabaco`, {
      method: 'POST',
      body: JSON.stringify(tabaco),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ' + localStorage.getItem("token")
      }
    }).then(function (response) {
      if (response.ok) {
        toastr.success("Tabaco y formatos añadidos");
      } else {
        toastr.error("Error al añadir");
      }
    }).then((res) => resolve(res));
  });
}