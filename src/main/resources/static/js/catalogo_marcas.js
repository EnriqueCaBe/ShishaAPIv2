$(document).ready(function(){
    window.onclick = function(event) {
        if (event.target == document.getElementById("myModal")) {
            document.getElementById("myModal").style.display = "none";
        }
      }
      getMarcas();
      AOS.init();
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
    `<div class="grid-item" onclick="verMarca(${marca.id})" data-aos="zoom-in">
        <div style="width: 95%; padding: 2.5%; padding-top: 10%;">
            <img src="${marca.imagen}" style="width: 140px; height:140px; object-fit:contain; border-radius: 10px;">
            <aside style="font-size: 125%; margin-top: 3%; font-family: 'Karla',sans-serif; color: black;">${marca.name_marca}</aside>
        </div>
    </div>`)
    });
  }

  function getJsonMarcas() {
    return new Promise((resolve) => {
      $.ajax({
        url: `/marca/all`,
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