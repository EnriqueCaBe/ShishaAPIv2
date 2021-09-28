$(document).ready(function () {

  if (localStorage.getItem("token") == null) {
    window.location = "login.html";
  }

  comprovarNovedades();
});

async function comprovarNovedades() {
  const novedades = await cargarNovedades();
  if (novedades.length > 0) {
    document.getElementById("links").insertAdjacentHTML("afterbegin", `<a class="link_novedades" href="novedades.html" style="font-size: 1.25rem;" data-aos="zoom-in-down"><img src="/images/new_icon.png" class="newImage" >Novedades</a>`)
  }
}


function cargarNovedades() {
  return new Promise((resolve) => {
    $.ajax({
      headers: {
        Authorization: localStorage.getItem("token")
      },
      url: `/tabaco/new`,
      type: "GET",
      dataType: "json",
      success: function (data) {
        resolve(data);
      },
      error: function () {},
    });
  });
}