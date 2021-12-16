$(document).ready(function () {
    if (localStorage.getItem("token") == null) {
        window.location = "login.html";
    }
    if(localStorage.getItem("rol") === "ROLE_USER"){
        window.location = "index.html";
    }
});