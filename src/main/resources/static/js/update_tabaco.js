$(document).ready(function () {
  putTabacos();

const selectElement = document.getElementById("tabaco");

selectElement.addEventListener('change', (event) => {
    console.log(event.target.value);
    putDatosTabaco(event.target.value);
    deletDisableds();
});
});

async function doIt() {
  const tabaco = `{"id":${document.getElementById("tabaco").value},
  "name_tabaco": "${document.getElementById("name_tabaco").value}", 
  "name_api": "${document.getElementById("name_api").value}",
  "descripcion": "${document.getElementById("descripcion").value}", 
  "marca": "${document.getElementById("marca").value}",
  "imagen":"${document.getElementById("imagen").value}", 
  "imagen_flag":"${document.getElementById("imagen_flag").value}"}`;

  await updateTabaco(tabaco);
}

function updateTabaco(tabaco){
    return new Promise((resolve) => {
        fetch(`/tabaco/update`, {
          method: 'POST',
          body: tabaco,
          headers: {
            'Content-Type': 'application/json'
          }
        }).then(function(response){
          if(response.ok) {
            toastr.success("Update correcto");
          } else {
            toastr.error("Update Erroneo");
          }
        }).then((res)=>resolve(res));
      });
}

function deletDisableds(){
    $("#name_tabaco").removeAttr("disabled");
    $("#name_api").removeAttr("disabled");
    $("#descripcion").removeAttr("disabled");
    $("#marca").removeAttr("disabled");
    $("#imagen").removeAttr("disabled");
    $("#imagen_flag").removeAttr("disabled");
}

async function putTabacos() {
  const tabacos = await getTabacos();

  tabacos.map((tabaco) => {
    document
      .getElementById("tabaco")
      .insertAdjacentHTML(
        "beforeend",
        `<option value="${tabaco.id}">${tabaco.name_tabaco}</option>`
      );
  });
}

async function putDatosTabaco(id){
    const tabaco = await getTabacoById(id);

    document.getElementById("name_tabaco").value = tabaco.name_tabaco;
    document.getElementById("name_api").value = tabaco.name_api;
    document.getElementById("marca").value = tabaco.marca;
    document.getElementById("descripcion").value = tabaco.descripcion;
    document.getElementById("imagen").value = tabaco.imagen;
    document.getElementById("imagen_flag").value = tabaco.imagen_flag;
}

function getTabacoById(id){
    return new Promise((resolve) => {
        $.ajax({
          url: `/tabaco/${id}`,
          type: "GET",
          dataType: "json",
          success: function (data) {
            resolve(data);
          },
          error: function () {},
        });
      });
}

function getTabacos(){
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