$(document).ready(function () {
    if (localStorage.getItem("token") == null) {
        window.location = "login.html";
    }
});