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
$database = "veterinaria";
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

$query = "INSERT INTO registro (Mascota, Edad, Raza, Fecha, Hora, Amo) VALUES ('" . $_POST['Mascota'] . "', $_POST[Edad] , '" . $_POST['Raza'] . "', '" . $_POST['Fecha'] . "', '" . $_POST['Hora'] . "', '" . $_POST['Amo'] . "')";
if (!mysqli_query($conn, $query)) {
    die("Problemas en el select: " . mysqli_error($conn));
}

mysqli_close($conn);

echo "Registro hecho con exito";

?>
</body>
</html>