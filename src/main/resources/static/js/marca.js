var marca_id;

$(document).ready(function(){
    const queryString = window.location.search;
    const urlParams = new URLSearchParams(queryString)
    marca_id = urlParams.get('id');
    putDatos();
});

async function putDatos(){
    const marca = await getTabacosByMarca();
    console.log(marca);

    document.getElementById("name_marca").innerHTML = marca.name_marca;
    document.getElementById("imagen").src = marca.imagen;

    marca.tabacos.map((tabaco)=>{
        document.getElementById("links").insertAdjacentHTML("beforeend",
        `<div class="noticia" onclick="verTabaco(${tabaco.id})">
            <img class="izquierda" src="${tabaco.imagen}"
                style="width: 100px; height: 100px; object-fit:contain;">
            <aside style="font-size: 30px; margin-top: 3%;">${tabaco.name_tabaco}</aside>
            <aside style="margin-top: 3%;">${tabaco.marca}</aside>
            <div class="reset"></div>
        </div>`);
    })
}

function getTabacosByMarca(){
    return new Promise((resolve) => {
        $.ajax({
          url: `/marca/${marca_id}`,
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

function verTabaco(id){
    location.href = `tabaco.html?id=${id}`
}