$(document).ready(function () {
    getTabacos();
    getMarcas();
  });
  
  async function getTabacos() {
    const tabacos = await getJsonTabacos();
    tabacos.map((tabaco) => {
      document
        .getElementById("tabaco")
        .insertAdjacentHTML(
          "beforeend",
          `<option value="${tabaco.id}">${tabaco.name_tabaco}</option>`
        );
    });
  }
  
  function getJsonTabacos() {
    return new Promise((resolve) => {
      $.ajax({
        url: `/tabaco/all`,
        type: "GET",
        dataType: "json",
        success: function (data) {
          resolve(data);
        },
        error: function () {},
      });
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
  
  function getJsonMarcas(){
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

  async function submit1() {
    var assFormato = `{"tabaco_id":${
      document.getElementById("tabaco").value
    }, "formato_id":${document.getElementById("formato").value} }`;
    await insertAssFormato(assFormato);
    limpiarCampos();
  }