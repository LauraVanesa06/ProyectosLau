<?php 
include("cabecera.php");
//include('adminHead.php');
// if (!isset($_SESSION['usuario'])) {
//     header('location: login.php');
// }

?>
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
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mis Vuelos</title>
    <link rel="stylesheet" href="style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
    
</body>
</html>
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

<header>
    <br>
    <div class="container">
        <div class="imagen6">
            <a href="adminHead.php">
                <span class="icon">
                    <img src="imagenes/imagen8.jpg" width="35" height="30">
                </span>
            </a>
        </div>
    </div>
</header>

<body>
    <br><br>
<div class="container-sm">
    <table border="3"  class="table caption-top">
        <thead>
            <tr>
            <th scope="col"> ID de su reserva</th>
            <!-- <th scope="col"> ID del vuelo</th> -->
                <th scope="col"> Nombre</th>
                <th scope="col"> Lugar de partida</th>
                <th scope="col">Lugar de destino</th>
                <th scope="col">Fecha de ida</th>
                <th scope="col">Fecha de regreso</th>            
                <th scope="col">Número de tiquetes</th>

            </tr>
        </thead>
        <tbody>
            <?php 
            require_once('conexion.php');

             $sql='SELECT  ID_Reserva, nombre, paisorigen, paisdestino, fechaida, fecharegreso, Ntiquetes FROM reserva';

            $stmt= $conexion->prepare($sql);
            $result = $stmt->execute();
            $rows= $stmt->fetchAll(\PDO::FETCH_ASSOC);
            foreach ($rows as $row) {
                ?>
                <tr>
                    <td><?php print($row['ID_Reserva']) ?></td>
                    <!-- <td><?php print($row['ID_Vuelo']) ?></td> -->
                    <td><?php print($row['nombre']) ?></td>
                    <td><?php print($row['paisorigen']) ?></td>
                    <td><?php print($row['paisdestino']) ?></td>
                    <td><?php print($row['fechaida']) ?></td>
                    <td><?php print($row['fecharegreso']) ?></td>
                    <td><?php print($row['Ntiquetes']) ?></td> 
                </tr>                        
            <?php
            }
            ?>          
        </tbody>
    </table>  
</div>
</body>
