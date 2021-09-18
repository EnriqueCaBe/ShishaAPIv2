var tabacos;
var porcentaje = 2;
var total_porcentajes = ["1"];
$(document).ready(function () {
  getTabacos();
});

async function doIt() {
  await insertMezcla(`
    {"id":null,"name":"${
      document.getElementById("name_mezcla").value
    }","estilo":"${document.getElementById("estilo").value}","paqueo":"${
    document.getElementById("paqueo").value
  }","tabacos":null}`);

  const o = await getMezclaByName(document.getElementById("name_mezcla").value);

  var json_porcetajes = [];

  total_porcentajes.map((porcetaje) => {
    json_porcetajes.push(JSON.parse(`
    {
      "id": 0,
      "porcentaje":${document.getElementById(`porcentaje${porcetaje}`).value},
      "tabaco":${document.getElementById(`tabaco${porcetaje}`).value},
      "tabaco_name":"${$(`#tabaco${porcetaje} option:selected`).text()}",
      "mezcla":${o}
    }`));
  });

  await insertPorcentajes(json_porcetajes,o);
}

function insertPorcentajes(porcentajes,mezcla){
  return new Promise((resolve) => {
    fetch(`/porcentajes/${mezcla}`, {
      method: "POST",
      body: JSON.stringify(porcentajes),
      headers: {
        "Content-Type": "application/json",
      },
      success: function (data) {
        resolve(data);
      }
    })
      .then(function (response) {
        if (response.ok) {
          toastr.success("Mezcla añadida correctamente");
        } else {
          toastr.error("Error al insertar Mezcla");
        }
      })
      .then((res) => {
        resolve(res);
      });
  });
}

function getMezclaByName(name) {
  return new Promise((resolve) => {
    $.ajax({
      url: `/mezcla/name/${name}`,
      type: "GET",
      dataType: "json",
      success: function (data) {
        resolve(data);
      },
      error: function () {},
    });
  });
}

function insertMezcla(json) {
  return new Promise((resolve) => {
    fetch(`/mezcla`, {
      method: "POST",
      body: json,
      headers: {
        "Content-Type": "application/json",
      },
    })
      .then(function (response) {
        if (response.ok) {
          toastr.success("Porcentajes añadidos correctamente");
        } else {
          toastr.error("Error al insertar los porcentajes");
        }
      })
      .then((res) => {
        resolve(res);
      });
  });
}

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
      <input type='number' id='porcentaje${porcentaje}' placeholder='%' class='form-input-size' style="width: 98%" required/>
  </div>`
  );
  total_porcentajes.push(`${porcentaje}`);
  porcentaje++;
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
