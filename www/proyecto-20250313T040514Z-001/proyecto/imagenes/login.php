<?php

include("cabecera.php");
include("conexion.php"); 

session_start();
if ($_POST) {
    if ($_POST["usuario"] == "Taylor Swift" && $_POST["password"] == "123") {
        $_SESSION["usuario"]="Taylor Swift";
        header("location: index.php"); 
//laindustriamusical
    } else {
        echo "<script> alert('Usuario o contraseña incorrecta') </script>"; 
    }
    
}
?>

<!doctype html>
<html lang="en">

<head>
  <title> Inicio de sesión </title>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Bootstrap CSS v5.2.1 -->
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

<body>
<div class="container w-75 bg-primary mt-5 rounded shadow">

<div class="row align-items-streetch">
    <div class="col bg d-none d-lg-block col-md-5 col-lg col-xl-6 rounded">

    </div>
    <div class="col bg-white p-5 rounded-end">
        <div class="text-end">
            <img src="imagenes/logo.png" width="48" alt="">
        </div>
        <h2 class= "fw-bold text-center py-5"> INICIO DE SESIÓN </h2>

        <form action="login.php">
            <div class="mb-4">
            <label for="usuario" class="form-label"><strong>Usuario</strong></label>
            <input type="text" class="form-control" name="usuario">
            </div>
           
            <div class="mb-4">
            <label for="contraseña" class="form-label"><strong>Contraseña</atrong></label>
            <input type="password" class="form-control" name="contraseña">
            </div>
            
            <div class="mb-4 form-check">
                <input type="checkbox" name="connected" class="form-check-input">
                <label for="connected" class="form-chech-label">Mantener conectado</label>
            </div> 

            <div class="d-grid">
                <button type="submit" class="btn btn-primary">Iniciar Sesión</button>
            </div>

            <div class="my-3">
                <span>No tienes cuenta? <a href="registrar.php">Registrate</a></span><br>
                <span><a href="">Recuperar Password</a></span>
            </div> 
        </form>

        <div class="container w-100 my-5">
            <div class="row text-center">
                <div class="col-12">Inicio sesión</div>
            </div>
            <div class="row">
                <div class="col">
                    <button class="btn btn-outline-primary w-100 my-1">
                        <div class="row align-items-center">
                            <div class="col-2">
                                <img src="imagenes/Facebook.png"  width="32" alt="">
                            </div>

                            <div class="col-10 text-center">
                                Facebook
                            </div>
                        </div>
                    </button>
                </div>
                <div class="col">
                <button class="btn btn-outline-danger w-100 my-1">
                        <div class="row align-items-center">
                            <div class="col-2">
                                <img src="imagenes/google.png"  width="26" alt="">
                            </div>

                            <div class="col-10 text-center">
                                Google
                            </div>
                        </div>
                    </button>
                </div>
            </div>

        </div>

        
       
    </div>
</div>
</div>
    
<script src="bootstrap.bundle.min.js"></script>
</body>

</html>

