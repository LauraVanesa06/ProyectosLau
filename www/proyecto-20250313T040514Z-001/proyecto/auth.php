<?php
include("conexion.php");


$accion = (isset($_POST["accion"])) ? $_POST["accion"] : "";


switch ($accion) {
    case 'registro':
        
        header('Location: nwu.php');
        break;
    case 'isesion':
        
        if (!isset($_POST['usuario'], $_POST['contrasena'])) {
            
            echo "<script> alert('Complete los campos');
                        location.assign('login.php');
                        </script> ";
        } 
            require_once('conexion.php');
            session_start();
            $conexion->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

            $sql = "SELECT ID_Usu, pass, ID_TipoUsu FROM usuario WHERE ID_Usu = :user";
            $stmt = $conexion->prepare($sql);
            
            $stmt->bindParam('user', $_POST['usuario']);
            $result = $stmt->execute();
            $rows = $stmt->fetchAll(\PDO::FETCH_ASSOC);
            if (count($rows)) {
                foreach ($rows as $row) {
                    $hash = $row['pass'];
                    $pass = $_POST['contrasena'];
                    $rol = $row['ID_TipoUsu'];
                    $verificacion =password_verify($pass, $hash);
                    

                    if ($verificacion==true) {
                        $_SESSION["usuario"] = $_POST['usuario'];
                        $_SESSION['rol'] = $rol;
                        header('location: index.php');
                        
                            
                    } else {
                        
                        echo "<script> alert('Contraseña incorrecta');
                        location.assign('login.php');
                        </script> ";
                        
                    }
                }
            } else {

                echo "<script> alert('Usuario incorrecto');
                        location.assign('login.php');
                        </script> ";
                
            }
        
            break;
    
    } 





