<?php  

// Llamando a los campos
$nombre = $_POST['nombre'];

$comentario= $_POST['comentario'];

$conexion=mysqli_connect("localhost","root","","vuelos");  

$nombre= mysqli_real_escape_string($conexion,$nombre);
$comentario= mysqli_real_escape_string($conexion,$comentario);
$resultado=mysqli_query($conexion,'INSERT INTO comentarios (nombre, comentario) VALUES ("'.$nombre.'", "'.$comentario.'")');
header('Location:index.php');




?>