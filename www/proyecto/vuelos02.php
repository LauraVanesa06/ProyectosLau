<?php 
include('conexion.php');
include('cabecera.php');
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Info Vuelos</title>
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
<br><br><br><br>
<br><br><br><br>
<br><br><br><br>
<div class="container">
<table border="5">
        <thead>
            <tr>               
                <th scope="col">Precio</th>
                <th scope="col"></th>
                <th scope="col">horario</th>
                <th scope="col"></th>
                <th scope="col">Destino</th>
            </tr>
        </thead>
        <tbody>
        </div>
<!-- <?php 
if($_POST) {
    //mostrar la busqueda
    $destino= $_POST['destino'];

    if (empty($_POST['destino'])) {
        echo"<script> alert('ingresa tu destino');window.location='vuelos.php'</script>";
    }else {
        if (!empty($_POST['destino'])) {
            $sql="select * from info_vuelos where destino like'%".$destino."%'";  
        }
    }
    //$sql='SELECT * FROM vuelos';
    $stmt= $conexion->prepare($sql);
    $result = $stmt->execute();
    $rows= $stmt->fetchAll(\PDO::FETCH_ASSOC);
    foreach ($rows as $row) {
        ?>
         <tr>
           <td><?php print($row['Precio']) ?></td>
            <td></td>
            <td><?php print($row['Horarios']) ?></td>
            <td></td>
            <td><?php print($row['Destino']) ?></td>
        </tr>                        
   <?php 
   }
}else {
    //mostrar vuelos
    $sql='SELECT * FROM info_vuelos';
    $stmt= $conexion->prepare($sql);
    $result = $stmt->execute();
    $rows= $stmt->fetchAll(\PDO::FETCH_ASSOC);
    foreach ($rows as $row) {
        ?>
        <tr>
            <!-- <td><?php //print($row['ID_Vuelo']) ?></td> -->
            <td><?php print($row['Precio']) ?></td>
            <td></td>
            <td><?php print($row['Horarios']) ?></td>
            <td></td>
            <td><?php print($row['Destino']) ?></td>
        </tr>                        
    <?php
    }        
}
?>
</tbody>
</table> </br>