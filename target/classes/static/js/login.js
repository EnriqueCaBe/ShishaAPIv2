;(function () {
	$("#submit").click(() => {
		var settings = {
		  url: "/login",
		  method: "POST",
		  timeout: 0,
		  data: JSON.stringify({
			username: document.getElementById("usuario").value,
			password: document.getElementById("password").value,
		  }),
		  success: function (data, textStatus, request) {},
		  error: function (request, textStatus, errorThrown) {
			ErrorLogin();
		  },
		};
	
		$.ajax(settings).done(function (data, textStatus, request) {
		  localStorage.setItem("token", request.getResponseHeader("authorization"));
		  getAuthoritzation();
		});
		return false; //this is very important because of click. If not here, the page is reloaded and the ajax callback is never called.
	  });
	
	'use strict';

}());

function getAuthoritzation() {
	$.ajax({
	  headers: { Authorization: localStorage.getItem("token") },
	  url: "/user/me",
	  type: "GET",
	  dataType: "json",
	  success: function (data) {
		if (data.authority === "ROLE_ADMIN"){
            window.location = "index_admin.html";
        }
        else if (data.authority === "ROLE_USER"){
            window.location = "index.html";
        }
		  
		else toastr["error"]("Usuario no admitido.", "Error");
	  },
	  error: function () {
		ErrorLogin();
	  },
	});
  }
  
  function ErrorLogin() {
	toastr["error"](
	  "Tu usuario o contraseña no es correcta. Vuelve a comprobarla.",
	  "Error"
	);
  }