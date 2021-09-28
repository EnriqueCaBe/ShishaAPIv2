var sabor;

$(document).ready(function () {

  if (localStorage.getItem("token") == null) {
    window.location = "login.html";
  }

  const queryString = window.location.search;
  const urlParams = new URLSearchParams(queryString)
  sabor = utf8Decode(urlParams.get('sabor'));
  getTabacosBySabor(sabor);
});

async function getTabacosBySabor(sabor) {
  const tabacos = await getTabacosBySaborJSON(sabor);
  var letras = [];
  document.getElementById("loader").style.display = "none";
  tabacos.map((tabaco) => {
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

function getTabacosBySaborJSON(sabor) {
  return new Promise((resolve) => {
    fetch(`/tabaco/sabor`, {
      method: 'POST',
      body: `{"sabor": "${sabor}"}`,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ' + localStorage.getItem("token")
      }
    }).then(res => resolve(res.json()))
  });
}

function verTabaco(id) {
  location.href = `tabaco.html?id=${id}`;
}

function utf8Decode(utf8String) {
  if (typeof utf8String != 'string') throw new TypeError('parameter ‘utf8String’ is not a string');
  // note: decode 3-byte chars first as decoded 2-byte strings could appear to be 3-byte char!
  const unicodeString = utf8String.replace(
    /[\u00e0-\u00ef][\u0080-\u00bf][\u0080-\u00bf]/g, // 3-byte chars
    function (c) { // (note parentheses for precedence)
      var cc = ((c.charCodeAt(0) & 0x0f) << 12) | ((c.charCodeAt(1) & 0x3f) << 6) | (c.charCodeAt(2) & 0x3f);
      return String.fromCharCode(cc);
    }
  ).replace(
    /[\u00c0-\u00df][\u0080-\u00bf]/g, // 2-byte chars
    function (c) { // (note parentheses for precedence)
      var cc = (c.charCodeAt(0) & 0x1f) << 6 | c.charCodeAt(1) & 0x3f;
      return String.fromCharCode(cc);
    }
  );
  return unicodeString;
}