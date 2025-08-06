<?php 
include('conexion.php');
//include('cabecera.php');
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

<header>
    <br>
    <div class="container">
        <div class="imagen6">
            <a href="index.php">
                <span class="icon">
                    <img src="imagenes/imagen8.jpg" width="20" height="20">
                </span>
            </a>
        </div>
    </div>
</header>


<body>
    <div class="container" id="vuelos">
        <div class="table_header">
            <h2>VUELOS</h2>
            <button>Crear nuevo</button>
            <select name="select" id="select">
                <option value="option">Tipo</option>
                <option value="option">Tipo1</option>
                <option value="option">Tipo2</option>
            </select>
            <div class="input_search">
               <input type="search" placeholder="Buscar"/>
               <ion-icon name="search"></ion-icon>
            </div>
        </div>
<!-- 
         <table>
            <thead>
                <tr>
                    <th>Precio <ion-icon name="arrow-dropdown"></th>
                    <th>Horario <ion-icon name="arrow-dropdown"></ion-icon></th>
                    <th>Destino <ion-icon name="arrow-dropdown"></ion-icon></th>
                    <th>Operaciones <ion-icon name="arrow-dropdown"></ion-icon></th>
                    <th>Otro<ion-icon name="arrow-dropdown"></ion-icon></th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Poducto 1</td>
                    <td>TipoProducto01</td>
                    <td>LocalProducto01</td>
                    <td>PrecioProducto01</td>
                    <td><ion-icon name="create" id="icons"></ion-icon> 
                    <ion-icon name="trash" id="icons"></ion-icon></td>
                </tr>
                <tr>
                    <td>Poducto 1</td>
                    <td>TipoProducto01</td>
                    <td>LocalProducto01</td>
                    <td>PrecioProducto01</td>
                    <td><ion-icon name="create" id="icons"></ion-icon> 
                    <ion-icon name="trash" id="icons"></ion-icon></td>
                </tr>
                <tr>
                    <td>Poducto 1</td>
                    <td>TipoProducto01</td>
                    <td>LocalProducto01</td>
                    <td>PrecioProducto01</td>
                    <td><ion-icon name="create" id="icons"></ion-icon> 
                    <ion-icon name="trash" id="icons"></ion-icon></td>
                </tr>
                <tr>
                    <td>Poducto 1</td>
                    <td>TipoProducto01</td>
                    <td>LocalProducto01</td>
                    <td>PrecioProducto01</td>
                    <td><ion-icon name="create" id="icons"></ion-icon> 
                    <ion-icon name="trash" id="icons"></ion-icon></td>
                </tr>
                <tr>
                    <td>Poducto 1</td>
                    <td>TipoProducto01</td>
                    <td>LocalProducto01</td>
                    <td>PrecioProducto01</td>
                    <td><ion-icon name="create" id="icons"></ion-icon> 
                    <ion-icon name="trash" id="icons"></ion-icon></td>
                </tr>
                <tr>
                    <td>Poducto 1</td>
                    <td>TipoProducto01</td>
                    <td>LocalProducto01</td>
                    <td>PrecioProducto01</td>
                    <td><ion-icon name="create" id="icons"></ion-icon> 
                    <ion-icon name="trash" id="icons"></ion-icon></td>
                </tr>
            </tbody>
        </table> 
     <div class="table_fotter">
            <p>Total de filas: 06</p>
        </div>  -->

        <table>
        <thead>
            <tr>    
                <th scope="col">Vuelos</th>           
                <th scope="col">Precio</th>
                <th scope="col">horario</th>
                <th scope="col"></th>
                <th scope="col">Destino</th>
            </tr>
        </thead>
        <tbody>
        </div>
 <?php 
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
            <td><?php print($row['Vuelos']) ?></td>
            <td><?php print($row['Precio']) ?></td>
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
            <td><?php print($row['ID_Vuelo']) ?></td> 
            <td><?php print($row['Precio']) ?></td>
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
    </div>





























    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="https://unpkg.com/ionicons@4.5.10-0/dist/ionicons.js"></script>

</body>
</html>