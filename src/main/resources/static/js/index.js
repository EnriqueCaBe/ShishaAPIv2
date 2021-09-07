$(document).ready(function(){
  comprovarNovedades();
  });

  async function comprovarNovedades(){
    const novedades = await cargarNovedades();
    if(novedades.length > 0){
      document.getElementById("links").insertAdjacentHTML("afterbegin",`<a class="link_novedades" href="novedades.html" style="font-size: 1.25rem;"><img src="/images/new_icon.png" class="newImage" >Novedades</a>`)
    }
  }


  function cargarNovedades(){
    return new Promise((resolve) => {
      $.ajax({
        url: `/tabaco/new`,
        type: "GET",
        dataType: "json",
        success: function (data) {
          resolve(data);
        },
        error: function () {
        },
      });
    });
  }

  function verInfo(){
    location.href = "info.html";
  }