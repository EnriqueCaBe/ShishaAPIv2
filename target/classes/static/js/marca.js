var marca_id;

$(document).ready(function () {
    if (localStorage.getItem("token") == null) {
        window.location = "login.html";
    }
    const queryString = window.location.search;
    const urlParams = new URLSearchParams(queryString)
    marca_id = urlParams.get('id');
    putDatos();
});

async function putDatos() {
    const marca = await getTabacosByMarca();

    document.getElementById("name_marca").innerHTML = marca.name_marca;
    document.getElementById("imagen").src = marca.imagen;
    var letras = [];
    marca.tabacos.map((tabaco) => {

        if (tabaco.name_tabaco.charAt(0).match(/^[0-9]+$/)) {
            if (!letras.includes("num")) {
                document.getElementById("links").insertAdjacentHTML("beforeend", `<h1 id="num" style="width: 100%; text-align: center;" data-aos="fade-right">0-9</h1>`);
                letras.push("num");
            }
            document.getElementById("num").insertAdjacentHTML("beforeend",
                `<div class="noticia" onclick="verTabaco(${tabaco.id})" data-aos="fade-right">
                <img class="izquierda" src="${tabaco.imagen}"
                    style="width: 100px; height: 100px; object-fit:contain;">
                <aside style="font-size: 30px; margin-top: 3%;">${tabaco.name_tabaco}</aside>
                <aside style="margin-top: 3%;">${tabaco.marca}</aside>
                <div class="reset"></div>
            </div>`);
        } else {
            if (!letras.includes(tabaco.name_tabaco.charAt(0))) {
                document.getElementById("links").insertAdjacentHTML("beforeend", `<h1 id="${tabaco.name_tabaco.charAt(0)}" style="width: 100%; text-align: center;" data-aos="fade-right">${tabaco.name_tabaco.charAt(0)}</h1>`);
                letras.push(tabaco.name_tabaco.charAt(0));
            }
            document.getElementById(tabaco.name_tabaco.charAt(0)).insertAdjacentHTML("beforeend",
                `<div class="noticia" onclick="verTabaco(${tabaco.id})" data-aos="fade-right">
                <img class="izquierda" src="${tabaco.imagen}"
                    style="width: 100px; height: 100px; object-fit:contain;">
                <aside style="font-size: 30px; margin-top: 3%;">${tabaco.name_tabaco}</aside>
                <aside style="margin-top: 3%;">${tabaco.marca}</aside>
                <div class="reset"></div>
            </div>`);
        }
    });
}

function getTabacosByMarca() {
    return new Promise((resolve) => {
        $.ajax({
            headers: {
                Authorization: localStorage.getItem("token")
            },
            url: `/marca/${marca_id}`,
            type: "GET",
            dataType: "json",
            success: function (data) {
                resolve(data)
            },
            error: function () {},
        });
    });
}

function verTabaco(id) {
    location.href = `tabaco.html?id=${id}`
}