$(document).ready(function(){
  getMarcas();
  });


  function doIt(){
    const tabaco = `{"name_tabaco": "${document.getElementById("name_tabaco").value}" ,"name_api": "${document.getElementById("name_api").value}" ,"descripcion": "${document.getElementById("descripcion").value}" ,"marca": "${document.getElementById("marca").value}"}`;
    
    await insertTabaco(tabaco);
    location.reload();
  }

  function insertMarca(tabaco){
    return new Promise((resolve) => {
      fetch(`/tabaco`, {
        method: 'POST',
        body: tabaco,
        headers: {
          'Content-Type': 'application/json'
        }
      }).then((res)=>resolve(res));
    });
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