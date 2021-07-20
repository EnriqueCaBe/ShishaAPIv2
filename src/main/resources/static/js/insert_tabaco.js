$(document).ready(function(){

  getMarcas();



    // jQuery methods go here...
  
  });


  function doIt(){
    console.log("Hole");
  }

  async function getMarcas(){
    const marcas = await getJsonMarcas();

    marcas.map((marca)=>{
        document.getElementById("marca").insertAdjacentHTML("beforeend",`<option value="${marca.name_marca}">${marca.name_marca}</option>`)
    })
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