$(document).ready(function () {

  if (localStorage.getItem("token") == null) {
    window.location = "login.html";
  }

  getSabores();
});

async function doIt() {
  location.href = `../tabacos_search.html?sabor=${document.getElementById("sabor").value}`;
}

async function getSabores() {
  const sabores = await getJsonSabores();
  var letras_añadidas = [];
  sabores.map((sabor) => {
    if (!letras_añadidas.includes(sabor.sabor_desc.charAt(0))) {
      document.getElementById("sabor").insertAdjacentHTML("beforeend", `<option disabled value="" id="${sabor.sabor_desc.charAt(0)}">--${sabor.sabor_desc.charAt(0)}</option>`);
      letras_añadidas.push(sabor.sabor_desc.charAt(0));
    }
    document.getElementById(sabor.sabor_desc.charAt(0)).insertAdjacentHTML("afterend", `<option value="${sabor.sabor_desc}">${sabor.sabor_desc}</option>`);
  });
}

function getJsonSabores() {
  return new Promise((resolve) => {
    $.ajax({
      headers: {
        Authorization: localStorage.getItem("token")
      },
      url: `/sabor/all`,
      type: "GET",
      dataType: "json",
      success: function (data) {
        resolve(data)
      },
      error: function () {},
    });
  });
}
