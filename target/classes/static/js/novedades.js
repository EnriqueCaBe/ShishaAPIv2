$(document).ready(function () {
  if (localStorage.getItem("token") == null) {
    window.location = "login.html";
  }
  getNovedades();
});

async function getNovedades() {
  const novedades = await cargarNovedades();
  document.getElementById("loader").style.display = "none";
  novedades.map((tabaco) => {
    document.getElementById("links").insertAdjacentHTML(
      "beforeend",
      `
        <div class="noticia" onclick="verTabaco(${tabaco.id})" data-aos="fade-right">

            <div style="position: relative; left: 0; top: 0;">
                <img class="izquierda" src="${tabaco.imagen}" style="width: 100px; height: 100px; object-fit:contain;z-index: 0;">
                <img src="/images/new_icon.png" class="newImage" style="position: absolute;width: 40px;left: 75px;z-index: 1;">
            </div>
                <aside style="font-size: 30px; margin-top: 3%;">${tabaco.name_tabaco}</aside>
                <aside style="margin-top: 3%;">${tabaco.marca}</aside>
                <div class="reset"></div>
            </div>
        `
    );
  });
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

function verTabaco(id) {
  location.href = `tabaco.html?id=${id}`;
}
