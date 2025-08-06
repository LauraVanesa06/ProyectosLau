var fecharegresoL = document.getElementById("fecharegresoL");
var tipo2 = document.getElementById("tipo2");
tipo2.addEventListener("click", function () {
    fecharegresoL.style.display = "none";
});
var tipo1 = document.getElementById("tipo1");
var fecharegreso = document.getElementById("fecharegreso");
tipo1.addEventListener("click", function () {
    fecharegresoL.style.display = "block";
    fecharegreso.required = true;
});