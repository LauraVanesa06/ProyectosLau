<?php 
//include('adminHead.php');
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Añadir vuelos</title>
    <link rel="stylesheet" href="style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
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
    <br>
    <br>
<div class="container">
<div class="shadow-lg p-1 mb-6 bg-body rounded">
<div class="col bg-white p-5 rounded">
    <div class="container-sm" style="margin: top 0px;">
        <form action="añadir_vuelos.php" method="post" enctype="multipart/form-data">
            <p>Ingrese la información de los vuelos disponibles</p>
            <div class="form-group">
            <label for="destino"><h6><strong>Destino</strong></h6></label>
                <input type="text" class="form-control" name="Destino" placeholder="Ingrese el primer destino disponible" required>
            </div>
            <br>
            <div class="form-group">
            <label for="precio"><h6><strong>Precio</strong></h6></label>
                <input type="number" class="form-control" name="Precio" placeholder="Ingrese el valor del viaje" required>
            </div>
            <br>
            <div class="form-group">
            <label for="horario"><h6><strong>Horario del vuelo</strong></h6></label>
                <input type="time" class="form-control" name="Horario" placeholder="Ingrese horario del vuelo" required>
            </div>
            <br>
            <div class="form-group">
            <label for="capacidad"><h6><strong>Capacidad del vuelo</strong></h6></label>
                <input type="number" class="form-control" name="Capacidad" placeholder="Ingrese la capacidad del avion de este vuelo" required>
            </div>
            <br>
            <div class="form-group">
            <label for="capacidad"><h6><strong>Imagen del vuelo</strong></h6></label>
                <input type="file" class="form-control" name="archivo" id="archivo" placeholder="Ingrese la imagen que represente el destino" required>
            </div>
            <br>
            
            <input type="submit" class="btn btn-dark" value="REGISTRAR">
        </form>
        
        </div>
    </div>
</div>
</div>

        <?php
        if ($_POST) {
            $destino = $_POST['Destino'];
            $precio = $_POST['Precio'];
            $horario = $_POST['Horario'];
            $capacidad = $_POST['Capacidad'];

            $fecha = new DateTime();
            $imagen = $fecha->getTimestamp()."_". $_FILES["archivo"]["name"];

            $imagenTemporal = $_FILES["archivo"]["tmp_name"];
            move_uploaded_file($imagenTemporal, "imgvuelos/".$imagen);

            
            require_once('conexion.php');
            $conexion->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            $sql = 'INSERT INTO info_vuelos (Destino, Precio, Horarios, Capacidad, imagen) VALUES (:d, :p, :h, :c, :i);';
            $stmt = $conexion->prepare($sql);
            $stmt->bindParam(":d", $destino);
            $stmt->bindParam(":p", $precio);
            $stmt->bindParam(":h", $horario);
            $stmt->bindParam(":c", $capacidad);
            $stmt->bindParam(":i", $imagen);
            // $stmt->bindParam(":pi", $Piloto);
            $stmt->execute();
            print("<script> alert('Registro del viaje guardado con éxito');</script>");
        }
        ?>
    </div>
</div>
</div>
</body>
</html>
