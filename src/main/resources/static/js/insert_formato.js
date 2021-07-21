$(document).ready(function(){


});


  async function doIt(){
    var formato = `{"gramos":${parseFloat(document.getElementById("gramos").value)}, "precio": ${parseFloat(document.getElementById("precio").value)}}`;

    await insertFormato(formato);
    limpiarCampos();
  }

  function limpiarCampos(){
    document.getElementById("gramos").value = 0;
    document.getElementById("precio").value = 0;

  }

  function insertFormato(formato){
    return new Promise((resolve) => {
      fetch(`/formato`, {
        method: 'POST',
        body: formato,
        headers: {
          'Content-Type': 'application/json'
        }
      }).then(function(response){
        if(response.ok) {
          toastr.success("Formato añadido correctamente");
        } else {
          toastr.error("Formato ya existe");
        }
      }).then((res)=>resolve(res));
    });
  }