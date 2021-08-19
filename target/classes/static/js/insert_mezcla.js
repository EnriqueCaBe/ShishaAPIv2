var tabacos;
var porcentaje = 2;
var total_porcentajes = ["tabaco1"];
$(document).ready(function () {
  getTabacos();
});

function addDiv() {
  var stringTabacos = "";
  tabacos.map((tabaco) => {
    stringTabacos =
      stringTabacos +
      `<option value="${tabaco.id}">${tabaco.name_tabaco}</option>`;
  });
  document.getElementById("porcentaje").insertAdjacentHTML(
    "beforeend",
    `<div style="border: 1px solid grey; padding: 2%; margin-bottom:2%;">
      <label>Porcentaje ${porcentaje}</label>
       <select id='tabaco${porcentaje}' class='form-input-size' style="height: 40px; width: 98%;" required>
          <option disabled selected value="">Selecciones un tabaco</option>` +
      stringTabacos +
      `
      </select>
      <input type='number' id='name_tabaco' placeholder='%' class='form-input-size' style="width: 98%" required/>
  </div>`
  );
  porcentaje++;
  total_porcentajes.push(`tabaco${porcentaje}`);
}

async function getTabacos() {
  tabacos = await getTabacosFromBBDD();
  tabacos.map((tabaco) => {
    document
      .getElementById("tabaco1")
      .insertAdjacentHTML(
        "beforeend",
        `<option value="${tabaco.id}">${tabaco.name_tabaco}</option>`
      );
  });
}

function getTabacosFromBBDD() {
  return new Promise((resolve) => {
    $.ajax({
      url: `/tabaco/all`,
      type: "GET",
      dataType: "json",
      success: function (data) {
        resolve(data);
      },
      error: function () {},
    });
  });
}


