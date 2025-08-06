<?php
session_start();
include("conexion.php");

if(!isset($_SESSION['rol'])){
    header('location: login.php');
}elseif ($_SESSION['rol'] != 1) {
    header('location: index.php');
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Super Admin</title>
  <link rel="stylesheet" href="style.css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

</head>
<body>

<header>
<h2 class="logo">Opciones Super Admin </h2>
<nav class="navigation">
    <a href="index.php">Página de inicio</a>
    <a href="añadir_vuelos.php">Añadir vuelos</a>
    <a href="actualizar_vuelos.php">Modificar vuelos</a>
    <a href="eliminar_vuelos.php">Eliminar vuelos</a>

</header> 
 


</div>
</body> 

 
 <?php include("pie.php"); ?>
 </div>
