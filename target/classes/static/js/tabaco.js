var tabaco_id;

$(document).ready(function () {

  if (localStorage.getItem("token") == null) {
    window.location = "login.html";
  }

  const queryString = window.location.search;
  const urlParams = new URLSearchParams(queryString)
  tabaco_id = urlParams.get('id');
  putDatos();
});

async function putDatos() {
  const tabaco = await getTabaco();

  document.getElementById("name").innerHTML = tabaco.name_tabaco;
  document.getElementById("imagen").src = tabaco.imagen;
  document.getElementById("descripcion").innerHTML = tabaco.descripcion;
  document.getElementById("imagen_flag").src = tabaco.imagen_flag;

  tabaco.formatos.map((formato) => {
    document.getElementById("formatos").insertAdjacentHTML("beforeend", `<tr>
        <td>${formato.gramos}g</td>
        <td>${formato.precio}€</td>
      </tr>`);
  })


}

function getTabaco() {
  return new Promise((resolve) => {
    $.ajax({
      headers: {
        Authorization: localStorage.getItem("token")
      },
      url: `/tabaco/${tabaco_id}`,
      type: "GET",
      dataType: "json",
      success: function (data) {
        resolve(data)
      },
      error: function () {},
    });
  });
}
