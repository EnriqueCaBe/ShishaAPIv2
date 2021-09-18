$(document).ready(function(){
    window.onclick = function(event) {
        if (event.target == document.getElementById("myModal")) {
            document.getElementById("myModal").style.display = "none";
        }
    }

    putMezclas();

});


async function putMezclas(){
    const mezclas = await getMezclas();
    document.getElementById("loader").style.display = "none";
    mezclas.map((mezcla)=>{
        document.getElementById("links").insertAdjacentHTML("beforeend",
        `<div class="noticia" onclick="verMezcla(${mezcla.id})">
            <img class="izquierda" src="/images/mezcla.png" style="width: 100px; height: 100px; object-fit:contain;">
            <aside style="font-size: 30px; margin-top: 3%;">${mezcla.name}</aside>
            <aside style="margin-top: 3%;">${mezcla.estilo.toUpperCase()}</aside>
            <div class="reset"></div>     
        </div>`
        );
    });
}

function getMezclas(){
    return new Promise((resolve) => {
        $.ajax({
          url: `/mezcla/all`,
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

function verMezcla(id){
    location.href = `mezcla.html?id=${id}`;
}
