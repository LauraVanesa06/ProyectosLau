<header>

    <?php
include("conexion.php");

if(isset($_SESSION['rol'])){
    header('location: index.php');
} 

 
?>
</header>


<!doctype html>
<html lang="es">

<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="style.css">
    <title>Nuevo registro</title>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">

    <style>
    body {
        background: #CFBBFC;
        background: linear-gradient(to right, #7287FA, #CFBBFC);
    }

    .bg {
        background-image: url(imagenes/imagen1.png);
        background-position: center center;
    }
    </style>
</head>
<header>
    <br>
    <div class="container">
        <div class="imagen6">
            <a href="index.php">
                <span class="icon">
                    <img src="imagenes/imagen8.jpg" width="20" height="20">
                </span>
            </a>
        </div>
    </div>
</header>


<body>
    <br><br>
    <div class="container w-75 mt-5 rounded">
        <div class="row align-items-stretch">
            <!-- <div class="col bg d-none d-lg-block col-md-5 col-lg-5 col-xl-6 rounded"> -->

        </div>
        <div class="col bg-white p-5 rounded-end">
            <img src="imagenes/imagen5.jpg" width="60" height="60" class="imagen5">
            <h2 class="fw-bold text-center py-5">REGISTRATE</h2>

            <form action="nwu.php" method="POST">
                <div class="mb-4">
                    <label class="form-label" for="nusuario"><strong>Documento</strong></label>
                    <input class="form-control" type="text" name="nusuario" id="nusuario"
                        placeholder="Ingrese número de documento" required> <br>
                </div>
                <div class="mb-4">
                    <label for="Nombre"><strong>Nombres:</strong></label>
                    <input type="text" class="form-control" name="Nombre" placeholder="Ingrese sus nombres"
                        required><br>
                </div>
                <div class="mb-4">
                    <label for="Apellido"><strong>Apellidos</strong></label>
                    <input type="text" class="form-control" name="Apellido" placeholder="Ingrese sus apellidos"
                        required><br>
                </div>
                <div class="mb-4">
                    <label for="Correo"><strong>Correo</strong></label>
                    <input type="email" class="form-control" name="Correo" placeholder="Ingrese su correo electronico"
                        required><br>
                </div>
                <div class="mb-4">
                    <label for="pais"><strong>País</strong></label>
                    <input type="text" class="form-control" name="pais"
                        placeholder="Ingrese cual es su país de partida " required><br>
                </div>

                <div class="mb-4">
                    <label for="f_nacimiento"><strong>Fecha de nacimiento</strong></label>
                    <input type="date" class="form-control" name="f_nacimiento"
                        placeholder="Ingrese su fecha de nacimiento" required><br>
                </div>
                <div class="mb-4">
                    <label class="form-label" for="ncontrasena"> <strong>Nueva Contraseña</strong></label>
                    <input class="form-control" type="password" name="ncontrasena" id="ncontrasena" minlength="9"
                        maxlength="10" size="10" placeholder="**********"><br>
                </div>

                <div class="d grid">
                    <button type="submit" class="btn btn-primary">CREAR CUENTA</button>
                </div>
            </form>
        </div>
    </div>
    </div>

    <br>
    <br>   
    <br>
    <br>

    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
        integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous">
    </script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js"
        integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz" crossorigin="anonymous">
    </script>

    <?php


if($_POST){


                
$doc=$_POST['nusuario']; 
$nom=$_POST['Nombre']; 
$ape=$_POST['Apellido']; 
$f_nacimiento=$_POST['f_nacimiento']; 
$correo=$_POST['Correo']; 
$pais=$_POST['pais'];  
$password = password_hash($_POST['ncontrasena'], PASSWORD_BCRYPT);
$ID_TipoUsu='3';
require_once('conexion.php');
$conexion->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
$sql= "INSERT INTO usuario (ID_Usu, Nombre, Apellido, f_nacimiento, Correo, pais, pass, ID_TipoUsu) VALUES (:id, :n, :a, :f, :c, :p, :pss, :idtu);";

$stmt = $conexion->prepare($sql);
                
$stmt->bindParam(":id", $doc);
$stmt->bindParam(":n", $nom);
$stmt->bindParam(":a", $ape);
$stmt->bindParam(":f", $f_nacimiento);
$stmt->bindParam(":c", $correo);
$stmt->bindParam(":p", $pais);
$stmt->bindParam('pss', $password);
$stmt->bindParam(":idtu", $ID_TipoUsu);
$stmt->execute();

print("<script> alert('registro guardado con éxito');
    window.location='login.php'
        </script> ");
 }

?>

</body>

</html>