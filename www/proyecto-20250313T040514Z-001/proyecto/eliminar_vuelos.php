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


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="style.css">
    
    </head>
<body>


<div class="container-sm" style="margin-top:1%">
<div class="alert alert-danger" role="alert">
    <b><strong>Aviso:</strong></b> El vuelo será eliminada permanentemente
</div>
<br>
<br>
<form action="eliminar_vuelos.php" method="POST">
    
    <div class="form-group">
        <label for="ID_Vuelo"><strong>Ingrese "ID" de vuelo:</strong></label>
        <input type="text" class="form-control" name="ID_Vuelo" placeholder="Eliminar ID de vuelos" required>
    </div>
    <br>
    <input type="submit" class="btn btn-danger" value="ELIMINAR 💀">
</form>
</body>
</html>

<?php 
if ($_POST) {
    $ID_Vuelo = $_POST['ID_Vuelo'];
    

    require_once('conexion.php');
    $conexion->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $sql= 'DELETE FROM `info_vuelos` WHERE ID_Vuelo=:ID_Vuelo';
    $stmt= $conexion->prepare($sql);
    $stmt->bindParam('ID_Vuelo', $ID_Vuelo);

    $stmt->execute();
    print("<script> alert('Registro eliminado con éxito');</script>");
}
?>
</div>