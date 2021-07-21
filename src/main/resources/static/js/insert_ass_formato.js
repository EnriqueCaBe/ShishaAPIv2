$(document).ready(function(){
    getTabacos();
    getFormatos();
  });

  async function getTabacos(){
    const tabacos = await getJsonTabacos();
    tabacos.map((tabaco)=>{
    document.getElementById("tabaco").insertAdjacentHTML("beforeend",`<option value="${tabaco.id}">${tabaco.name_tabaco}</option>`)
    });
}

function getJsonTabacos() {
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

async function getFormatos(){
    const formatos = await getJsonFormatos();

    formatos.map((formato)=>{
        document.getElementById("formato").insertAdjacentHTML("beforeend",`<option value="${formato.id}">${formato.gramos}g | ${formato.precio} ${"\&#x20ac"}</option>`)
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

async function doIt(){
    var assFormato = `{"tabaco_id":${document.getElementById("tabaco").value}, "formato_id":${document.getElementById("formato").value} }`;
    await insertAssFormato(assFormato);
    limpiarCampos();
}

function limpiarCampos(){
  document.getElementById("formato").value = 0;
  document.getElementById("tabaco").value = 0;
}


  function insertAssFormato(assFormato){
    return new Promise((resolve) => {
      fetch(`/ass_formato`, {
        method: 'POST',
        body: assFormato,
        headers: {
          'Content-Type': 'application/json'
        }
      }).then(function(response){
        if(response.ok) {
          toastr.success("Añadido correctamente");
        } else {
          toastr.error("Ya existe");
        }
      }).then((res)=>resolve(res));
    });
  }