<header>
<?php 
include('adminHead.php');
?>
</header>

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
                <form action="actualizar_vuelos.php" method="post">



<div class="container-sm" style="margin-top:1%">
    <form action="actualizar_datos_vuelos.php" method="post">
        <div class="form-group">
            
        </div>
        <div class="form-group">
            <label for="txtDoc">INGRESE ID DEL VUELO A ACTUALIZAR</label>
            <input type="text" class="form-control" name="ID_Vuelo" placeholder="ID Vuelo" required>
        </div>
        <input type="submit" class="btn btn-success" value="Buscar">
    </form>
    <?php
    if ($_POST) {
        $id = $_POST['ID_Vuelo'];
        require_once('conexion.php');
        $conexion->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $sql = 'SELECT * FROM info_vuelos WHERE ID_Vuelo =:id';
        $stmt = $conexion->prepare($sql);
        $stmt->bindParam('id', $id);
        $result = $stmt->execute();
        $rows = $stmt->fetchAll(\PDO::FETCH_ASSOC);
        if  (count($rows)) {
            foreach ($rows as $row) {
    ?>
                <form action="actualizar_datos_vuelos.php" method="post">
                    <p>Por favor, diligencie todos los campos de este formulario, para actualizar.</p>
                    
                    <!-- <input type="hidden" name="Precio" readonly value="<?php print($row['id']) ?>"> -->
                    <div class="form-group">
                    <label for="Precio">Precio  <label>
                    <input type="number" name="Precio" class="form-control" placeholder="Ingrese el valor del vuelo" required value="<?php print($row['Precio']) ?>">
                    </div>

                    <div class="form-group">
                        <label for="Horarios">Horarios <label>
                        <input type="time" name="Horarios" class="form-control" placeholder="Ingrese el documento de identidad" required value="<?php print($row['Horarios']) ?>">
                    </div>

                    <div class="form-group">
                        <label for="ID_Vuelo">ID_Vuelo</label>
                        <input type="text" name="ID_Vuelo" class="form-control" placeholder="Ingrese el ID del vuelo." required value="<?php print($row['ID_Vuelo']) ?>">
                    </div>

                    <div class="form-group">
                        <label for="capacidad">capacidad</label>
                        <input type="number" name="capacidad" class="form-control" placeholder="Ingrese capacidad del vuelo" required value="<?php print($row['capacidad']) ?>">
                    </div>

                    <div class="form-group">
                        <label for="Destino"> Destino</label>
                        <input type="text" name="Destino" class="form-control" placeholder="Ingrese el nuevo Destino" required value="<?php print($row['Destino']) ?>">
                    </div>

                    <div class="form-group">
                        <label for="imagen">Dirección</label>
                        <input type="file" name="imagen" class="form-control" placeholder="Ingrese la dirección" required value="<?php print($row['imagen']) ?>">

                    </div>
>
                   

                    <input type="submit" value="Actualizar vuelo" class="btn btn-success">

                </form>
            <?php
            }
        } else {
            ?>
            <div class="alert alert-danger" role="alert" style="margin-top:1%">
                <b>Aviso:</b> ¡ALERTA!
            </div>
    <?php
        }
    }
    ?>
</div>