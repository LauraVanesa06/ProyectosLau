<?php 
include("conexion.php");
include("auth.php");
session_start();
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Troncal Airport</title>
   <link rel="stylesheet" href="style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

</head>    

<header>
  <h2 class="logo">AEREOLÍNEA TROCAL </h2>
  <nav class="navigation">
  <a href="index.php">Página de inicio</a>
  <a href="comen.php">Cometarios</a>

<?php

if(!isset($_SESSION['rol'])) {
  ?>
  <a href="login.php">Ingresar</a>
  <a href="nwu.php">Registrar</a>
  <a href="reservar.php">Reservar</a>
  <a href="comen.php">Comentarios</a>

  <?php
  
}
?>
  
  <a href="vuelos.php">Vuelos</a>

<?php



if(isset($_SESSION['rol'])) {
  ?>
  <a href="cerrar.php">Cerrar sesión</a>
  <a href="reservar.php">Reservar</a>


  <?php
  if ($_SESSION['rol']==1) {

    ?>
    <a href="adminhead.php"> Opciones super admin</a>
    <?php
  } 
}
?>

<body>


  </nav>
</header> 
 <div class="container"> 


    </div>
</body>


<?php include("pie.php"); ?>
</div>