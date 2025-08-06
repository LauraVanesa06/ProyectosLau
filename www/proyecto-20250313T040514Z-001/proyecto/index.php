<?php 
include('cabecera.php');
include('conexion.php');
?>


<?php
if(isset($_SESSION['rol'])) {
    ?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Index</title>
    <link rel="stylesheet" href="style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>

<body>

<?php 
$sql = "SELECT * FROM info_vuelos ";
$stmt = $conexion->prepare($sql);
$result = $stmt->execute();
$rows = $stmt->fetchAll(\PDO::FETCH_ASSOC);

// $objConexion = new Conexion();
// $sql = "SELECT * FROM `proyectos`;";
// $resultado = $objConexion->consultar($sql);
?>

<div class="container">

<div class="row row-cols-1 row-cols-md-2 g-4">
  <?php foreach ($rows as $fila) { ?>
  <div class="col">
    <div class="card" style="width: 18rem;">
    <img src="imgvuelos/<?php echo $fila['imagen'];?>" class="card-img-top" alt="...">
      <div class="card-body">
      <h5 class="card-title"><?php echo $fila['Destino'];?></h5>
    <a href="reservar.php" class="btn btn-primary">Reservar</a>
        
      </div>
    </div>
  </div>
</div>

  <?php } ?>

  </div>

</div>

</div>
</body>

</html>

<?php include("pie.php");
include("comen.php"); ?>
</div>
<?php
  }

?>