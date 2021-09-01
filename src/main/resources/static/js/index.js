$(document).ready(function(){
  comprovarNovedades();
  notifyMe();
  });

  function  notifyMe()  {  
    if  (!("Notification"  in  window))  {   
        alert("Este navegador no soporta notificaciones de escritorio");  
    }  
    else  if  (Notification.permission  ===  "granted")  {
        var  options  =   {
            body:   "Descripción o cuerpo de la notificación",
            icon:   "url_del_icono.jpg",
            dir :   "ltr"
        };
        var  notification  =  new  Notification("Hola :D", options);
    }  
    else  if  (Notification.permission  !==  'denied')  {
        Notification.requestPermission(function (permission)  {
            if  (!('permission'  in  Notification))  {
                Notification.permission  =  permission;
            }
            if  (permission  ===  "granted")  {
                var  options  =   {
                    body:   "Descripción o cuerpo de la notificación",
		            icon:   "url_del_icono.jpg",
		            dir :   "ltr"
                };     
                var  notification  =  new  Notification("Hola :)", options);
            }   
        });  
    }
}

  async function comprovarNovedades(){
    const novedades = await cargarNovedades();
    if(novedades.length > 0){
      document.getElementById("links").insertAdjacentHTML("afterbegin",`<a class="link_novedades" href="novedades.html" style="font-size: 1.25rem;"><img src="/images/new_icon.png" class="newImage" >Novedades</a>`)
    }
  }


  function cargarNovedades(){
    return new Promise((resolve) => {
      $.ajax({
        url: `/tabaco/new`,
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

  function verInfo(){
    location.href = "info.html";
  }