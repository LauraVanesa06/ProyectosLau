<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<title>Problema</title>
</head>
<body>
<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

$servername = "localhost";
$database = "base1";
$username = "root";
$password = "toor";

// Crear la conexión
$conn = mysqli_connect($servername, $username, $password, $database);

// Comprobar conexión
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

echo "Conexión con éxito"; 
echo "<br>";

$query = "INSERT INTO registro (Nombre, E_mail, Cod_Curso) VALUES ('" . $_POST['nombre'] . "', '" . $_POST['mail'] . "', " . $_POST['codigocurso'] . ")";
if (!mysqli_query($conn, $query)) {
    die("Problemas en el select: " . mysqli_error($conn));
}

mysqli_close($conn);

echo "El alumno fue dado de alta.";

?>
</body>
</html>