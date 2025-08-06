<?php 
session_start();
if (!isset($_SESSION['usuario'])) {
    header('location: login.php');
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
        <style>
        body{
            background: #CFBBFC;
            background: linear-gradient(to right, #7287FA, #CFBBFC);
        }
        .bg{
            background-image: url(imagenes/imagen1.png);
            background-position:center center;
        }
    </style>
</head>

<header>
    <br>
    <div class="container">
        <div class="imagen6">
            <a href="index.php">
                <span class="icon">
                    <img src="imagenes/imagen8.jpg" width="35" height="30">
                </span>
            </a>
        </div>
    </div>
</header>

<body>

 <br><br>
<div class="container">
<div class="shadow-lg p-2 mb-5 bg-body rounded">
<div class="col bg-white p-6 rounded">
    <div class="container-sm" style="margin: top 0px;">
        <div class="col bg-white p-6 rounded-end">
            <h2 class="fw-bold text-center py-5">RESERVE SU VUELO</h2>

    <form action="regreso.php" method="post">
        <ul>
        <div class="mb-4">
                <label class="form-label" for="nombre"><strong>Nombre y Apellidos:</strong></label>
                    <input class="form-control" type="text" name="nombre" id="nombre"
                        placeholder="Nombre completo" required>
                </div>
                <div class="mb-4">
                    <label for="paisorigen"><strong>Lugar de origen:</strong></label>
                    <input type="text" class="form-control" name="paisorigen" placeholder="Ingrese su pais de origen "
                        required>
                </div>
                <div class="mb-4">
                    <label for="paisdestino"><strong>Lugar de destino:</strong></label>
                    <input type="text" class="form-control" name="paisdestino" placeholder="Ingrese su pais de destino "
                        required>
                </div>
               <br><br>
                <div>
                <label for="Ntiquetes"><strong>Número de tiquetes:</strong></label>
                <input class="form-control" type="number" name="Ntiquetes" id="Ntiquetes" placeholder="Ingrese la cantidad de tiqeutes deseadas. "
                        required>
                </div>
                <br><br>
                 
                <div class="mb-4">
                    <label for="tipo"><strong>Seleccione el tipo </strong></label>
                    ida/regreso 
                    <input type="radio" class="form-control" name="tipo" id="tipo1" value="ida/regreso" >
                Sin regreso.
                <input type="radio" name="tipo" id="tipo2" value="sin regreso">   
                <br><br>
                <div class="d grid">
                    <button type="submit" class="btn btn-primary"> siguiente</button>
                </div>
                 
             </ul>          
            </form> 

        </div>
    </div>
    </div>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
        integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous">
    </script>
    <script src="js/validacion.js" async defer></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js"
        integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz" crossorigin="anonymous">
    </script>

    </form>
</body>
</html>

 