$(document).ready(function () {
    getTabacos();
    getFormatos();
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
  
  async function getFormatos() {
    const formatos = await getJsonFormatos();
  
    formatos.map((formato) => {
      document
        .getElementById("formato")
        .insertAdjacentHTML(
          "beforeend",
          `<option value="${formato.id}">${formato.gramos}g | ${
            formato.precio
          } ${"&#x20ac"}</option>`
        );
      document
        .getElementById("formato1")
        .insertAdjacentHTML(
          "beforeend",
          `<option value="${formato.id}">${formato.gramos}g | ${
            formato.precio
          } ${"&#x20ac"}</option>`
        );
    });
  }
  function getJsonFormatos() {
    return new Promise((resolve) => {
      $.ajax({
        url: `/formato/all`,
        type: "GET",
        dataType: "json",
        success: function (data) {
          resolve(data);
        },
        error: function () {},
      });
    });
  }
  
  async function submit() {
    var assFormato = `{"tabaco_id":${
      document.getElementById("tabaco").value
    }, "formato_id":${document.getElementById("formato").value} }`;
    await insertAssFormato(assFormato);
    limpiarCampos();
  }
  
  async function submit1() {
    await mergeMarcaFormato(
      document.getElementById("marca").value,
      document.getElementById("formato1").value
    );
  }
  
  function mergeMarcaFormato(marca, formato) {
    return new Promise((resolve) => {
      fetch(`/ass_formato/all/${marca}/${formato}`, {
        method: "POST",
      })
        .then(function (response) {
          if (response.ok) {
            toastr.success("Merge correcto");
          } else {
            toastr.error("Merge erroneo");
          }
        })
        .then((res) => resolve(res));
    });
  }
  
  function limpiarCampos() {
    document.getElementById("formato").value = 0;
    document.getElementById("tabaco").value = 0;
  }
  
  function insertAssFormato(assFormato) {
    return new Promise((resolve) => {
      fetch(`/ass_formato`, {
        method: "POST",
        body: assFormato,
        headers: {
          "Content-Type": "application/json",
        },
      })
        .then(function (response) {
          if (response.ok) {
            toastr.success("Añadido correctamente");
          } else {
            toastr.error("Ya existe");
          }
        })
        .then((res) => resolve(res));
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