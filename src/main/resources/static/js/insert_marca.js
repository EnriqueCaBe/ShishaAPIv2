$(document).ready(function(){



    // jQuery methods go here...
  
  });


async function doIt(){
    var newMarca = `{"name_marca":"${document.getElementById("name_marca").value}", "pais":"${document.getElementById("pais").value}",
    "pais_api":"${document.getElementById("pais_api").value}", "descripcion":"${document.getElementById("descripcion").value}", "imagen":"${document.getElementById("url_marca").value}", "imagen_flag":"${document.getElementById("url_pais").value}" }`;
    
    await insertMarca(newMarca);
}


  function insertMarca(marca){
    return new Promise((resolve) => {
      fetch(`/marca`, {
        method: 'POST',
        body: marca,
        headers: {
          'Content-Type': 'application/json'
        }
      }).then((res)=>resolve(res));
    });
  }