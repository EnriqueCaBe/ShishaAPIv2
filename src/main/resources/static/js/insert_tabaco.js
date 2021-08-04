$(document).ready(function(){
  getMarcas();
});



async function doIt(){
  const tabaco = `{"name_tabaco": "${document.getElementById("name_tabaco").value}" ,"name_api": "${document.getElementById("name_api").value}" ,
  "descripcion": "${document.getElementById("descripcion").value}" ,"marca": "${document.getElementById("marca").value}", "imagen":null, "imagen_flag":null}`;
    
  await insertTabaco(tabaco);
  limpiarCampos();
}

function limpiarCampos(){
  document.getElementById("name_tabaco").value = "";
  document.getElementById("name_api").value = "";
  document.getElementById("marca").value = "";
  document.getElementById("descripcion").value = "";
}

function insertTabaco(tabaco){
  return new Promise((resolve) => {
    fetch(`/tabaco`, {
    method: 'POST',
      body: tabaco,
      headers: {
        'Content-Type': 'application/json'
      }
    }).then(function(response){
      if(response.ok) {
        toastr.success("Tabaco añadido")
      } else {
        toastr.error("Ya existe el tabaco");
      }
    }).then((res)=>resolve(res));
  });
}

async function getMarcas(){
  const marcas = await getJsonMarcas();
  var letras_añadidas= [];
  marcas.map((marca)=>{
    if(!letras_añadidas.includes(marca.name_marca.charAt(0))){
      document.getElementById("marca").insertAdjacentHTML("beforeend",`<option disabled value="" id="${marca.name_marca.charAt(0)}">--${marca.name_marca.charAt(0)}</option>`);
      letras_añadidas.push(marca.name_marca.charAt(0));
    }
    document.getElementById(marca.name_marca.charAt(0)).insertAdjacentHTML("afterend",`<option value="${marca.name_marca}">${marca.name_marca}</option>`);
  });
}

function getJsonMarcas() {
  return new Promise((resolve) => {
    $.ajax({
      url: `/marca/all`,
      type: "GET",
      dataType: "json",
      success: function (data) {
        resolve(data)
      },
      error: function () {
      },
    });
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