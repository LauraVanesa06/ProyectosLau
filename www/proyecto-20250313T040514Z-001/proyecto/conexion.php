<?php 
// class conexion {
    ini_set('display_errors', 1);
    ini_set('display_startup_errors', 1);
    error_reporting(E_ALL);
$servername = "localhost";
$database = "vuelos";
$username = "root";
$password = "toor";

$conn = mysqli_connect($servername, $username, $password, $database);

// Comprobar conexión
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}
/*
echo "Conexión con éxito"; 
echo "<br>";
*/
//  }
try {
    $conexion = new PDO("mysql:host=localhost;dbname=vuelos", "root", "toor");
    $conexion->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    die("Error de conexión: " . $e->getMessage());
}
//  }


//Nos sirve para insert, delete, update)
// public function execute($sql){
//     $this->conexion->execute($sql);
    //reetorna el id de la consulta
//     return $this->conexion->lastInsertId();
// }

// public function consultar($sql){
//     $sentencia=$this->conexion->prepare($sql);
//     $sentencia->execute();
//     return $sentencia->fetchAll();
// }



// }
// return $conexion;


?>