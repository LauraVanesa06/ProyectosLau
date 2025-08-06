<?php 
// class conexion {
    ini_set('display_errors', 1);
    ini_set('display_startup_errors', 1);
    error_reporting(E_ALL);
$servername = "sql202.infinityfree.com";
$database = "if0_38498383_vuelos";
$username = "if0_38498383";
$password = "kVbtTvQy2KrGS";

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
    $conexion = new PDO("mysql:host=sql202.infinityfree.com;dbname=if0_38498383_vuelos", "if0_38498383", "kVbtTvQy2KrGS");
    $conexion->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    die("Error de conexión: " . $e->getMessage());
}

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