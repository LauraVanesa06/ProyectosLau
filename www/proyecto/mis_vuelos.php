<?php 

include("cabecera.php");
if (!isset($_SESSION['usuario'])) {
    header('location: login.php');
}

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

<div class="container-sm">
    <table class="table caption-top">
        <thead>
            <tr>
                <th scope="col">Cod_Vuelo</th>
                <th scope="col">Avión</th>
                <th scope="col">Piloto</th>
                <th scope="col">Capacidad(Kg)</th>
                <th scope="col">Estado</th>
            
            </tr>
        </thead>
        <tbody>
            <?php 
            require_once('conexion.php');
            $sql='SELECT  ID_Vuelo, Avión, Piloto, Capacidad, ID_Estado FROM vuelos';
            $stmt= $conexion->prepare($sql);
            $result = $stmt->execute();
            $rows= $stmt->fetchAll(\PDO::FETCH_ASSOC);
            foreach ($rows as $row) {
                ?>
                <tr>
                    <td><?php print($row['ID_Vuelo']) ?></td>
                    <td><?php print($row['Avión']) ?></td>
                    <td><?php print($row['Piloto']) ?></td>
                    <td><?php print($row['Capacidad']) ?></td>
                    <td><?php print($row['ID_Estado']) ?></td>
                    
                </tr>                        
            <?php
            }
            ?>          
        </tbody>
    </table>  
</div>