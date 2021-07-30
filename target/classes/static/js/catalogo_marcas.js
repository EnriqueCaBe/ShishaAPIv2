$(document).ready(function(){
    window.onclick = function(event) {
        if (event.target == document.getElementById("myModal")) {
            document.getElementById("myModal").style.display = "none";
        }
      }
      getMarcas();

});

function doIt(){
  console.log("Hole");
}

function openFilter(){
    document.getElementById("myModal").style.display = "block";
    getMarcas();
    getFormatos();
}

function closeFilter(){
    document.getElementById("myModal").style.display = "none";
}

async function getMarcas(){
const marcas = await getJsonMarcas();
document.getElementById("loader").style.display = "none";
    marcas.map((marca)=>{
        document.getElementById("marcas").insertAdjacentHTML("beforeend",
    `<div class="grid-item" onclick="verMarca(${marca.id})">
        <div style="width: 95%; padding: 2.5%; padding-top: 10%;">
            <img src="${marca.imagen}" style="width: 80%; height:140px; object-fit:contain;">
            <aside style="font-size: 125%; margin-top: 3%; font-family: 'Karla',sans-serif;">${marca.name_marca} (${marca.tabacos.length})</aside>
        </div>
    </div>`)
    });
  }

  function getJsonMarcas() {
    return new Promise((resolve) => {
      $.ajax({
        url: `/marca/tabaco`,
        type: "GET",
        dataType: "json",
        success: function (data) {
          resolve(data)
        },
        error: function () {
        },
      });
    });
  }

function verMarca(id){
    location.href = `marca.html?id=${id}`;
}