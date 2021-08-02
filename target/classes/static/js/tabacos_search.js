var tabaco_name;
var marca;
var precio;
var gramos;
var query;

$(document).ready(function(){
    const queryString = window.location.search;
    const urlParams = new URLSearchParams(queryString)
    var pluginArrayArg = new Array();
    tabaco_name = urlParams.get('name');
    if(!tabaco_name == ""){
        var jsonArg1 = new Object();
        jsonArg1.name = 'tabaco_name';
        jsonArg1.value = tabaco_name;
        console.log(jsonArg1);
        pluginArrayArg.push(jsonArg1);
    }
    marca = urlParams.get('marca');
    if(!marca == ""){
        var jsonArg2 = new Object();
        jsonArg2.name = 'marca';
        jsonArg2.value = marca;
        console.log(jsonArg2);
        pluginArrayArg.push(jsonArg2);
    }
    precio = urlParams.get('precio');
    if(!precio == ""){
        var jsonArg3 = new Object();
        jsonArg3.name = 'precio';
        jsonArg3.value = precio;
        console.log(jsonArg3)
        pluginArrayArg.push(jsonArg3);
    }
    gramos = urlParams.get('gramos');
    if(!gramos == ""){
        var jsonArg4 = new Object();
        jsonArg4.name = 'gramos';
        jsonArg4.value = gramos;
        console.log(jsonArg4)
        pluginArrayArg.push(jsonArg4);
    }
    var jsonArray = JSON.parse(JSON.stringify(pluginArrayArg));
    console.log(jsonArray);
});

function doIt(){
  console.log("Hole");
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

  async function getFormatos(){
    const formatos = await getJsonFormatos();

    var lista_precios = [];
    var lista_gramos = [];

    formatos.map((formato)=>{
        if(!lista_gramos.includes(formato.gramos)){
            document.getElementById("gramos").insertAdjacentHTML("beforeend",`<option value="${formato.gramos}">${formato.gramos}g</option>`);
            lista_gramos.push(formato.gramos);
        }
        if(!lista_precios.includes(formato.precio)){
            document.getElementById("precio").insertAdjacentHTML("beforeend",`<option value="${formato.gramos}">${formato.precio} ${"\&#x20ac"}</option>`);
            lista_precios.push(formato.precio);
        }
    })
  }

function getJsonFormatos() {
  return new Promise((resolve) => {
    $.ajax({
      url: `/formato/all`,
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

async function getTabacos(){
  const tabacos = await getFirstTabacos();
  document.getElementById("loader").style.display = "none";
  tabacos.map((tabaco)=>{
          document.getElementById("links").insertAdjacentHTML("beforeend",`<div class="noticia" onclick="verTabaco(${tabaco.id})">
          <img class="izquierda" src="${tabaco.imagen}" style="width: 100px; height: 100px; object-fit:contain;">
          <aside style="font-size: 30px; margin-top: 3%;">${tabaco.name_tabaco}</aside>
          <aside style="margin-top: 3%;">${tabaco.marca}</aside>
          <div class="reset"></div>
      </div>`);
  });
}

function getFirstTabacos(){
  return new Promise((resolve) => {
    $.ajax({
      url: `/tabaco/all`,
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

function verTabaco(id){
  location.href = `tabaco.html?id=${id}`;
}

function buscarTabacos(){
  location.href = `tabacos_search.html?name=${document.getElementById("name_tabaco").value}&marca=${document.getElementById("marca").value}&precio=${document.getElementById("precio").value}&gramos=${document.getElementById("gramos").value}`
}