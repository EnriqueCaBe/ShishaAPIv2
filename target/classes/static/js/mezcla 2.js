var mezcla_id;

$(document).ready(function () {
  const queryString = window.location.search;
  const urlParams = new URLSearchParams(queryString);
  mezcla_id = urlParams.get("id");

  putDatos();
});

async function putDatos() {

  const mezcla = await getMezcla();
  document.getElementById("name").innerHTML = mezcla.name;
  document.getElementById("estilo").innerHTML = mezcla.estilo.toUpperCase();
  document.getElementById("paqueo").innerHTML = mezcla.paqueo.toUpperCase();

  var nums = [];

  mezcla.tabacos.map((porcentaje) => {
    document.getElementById("formatos").insertAdjacentHTML(
      "beforeend",
      `<tr>
        <td onclick=verTabaco(${porcentaje.tabacoDTO})>${porcentaje.tabaco_name}</td>
        <td>${porcentaje.porcentaje}%</td>
      </tr>`
    );
    nums.push(porcentaje.porcentaje);
  });

  var ctx = document.getElementById("myChart");
  var myChart = new Chart(ctx, {
    type: "doughnut",
    data: {
      datasets: [
        {
          backgroundColor: [
            "#390099",
            "#9E0059",
            "#FF0054",
            "#FF5400",
            "#FFBD00",
          ],
          data: nums,
        },
      ],
    },
    options: {
      legend: {
        display: false,
      },
    },
  });
}

function getMezcla() {
  return new Promise((resolve) => {
    $.ajax({
      url: `/mezcla/${mezcla_id}`,
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
