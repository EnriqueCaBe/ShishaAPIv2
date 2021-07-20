$(document).ready(function(){


});


  function doIt(){
    var formato = `{"gramos":${document.getElementById("gramos")}, "precio": ${document.getElementById("precio")}}`;

    await insertFormato(formato);
    location.reload();
  }

  function insertFormato(formato){
    return new Promise((resolve) => {
      fetch(`/formato`, {
        method: 'POST',
        body: formato,
        headers: {
          'Content-Type': 'application/json'
        }
      }).then((res)=>resolve(res));
    });
  }