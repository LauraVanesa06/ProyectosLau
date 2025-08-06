<?php
        if ($_POST) {
            $p = $_POST['Precio'];
            $H = $_POST['Horarios'];
            $c = $_POST['capacidad'];
            $ID_v = $_POST['ID_Vuelo'];
            $d = $_POST['Destino'];
            $imagen= $_POST['imagen'];

            
           
            require_once('conexion.php');
            $conexion->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            $sql = 'UPDATE info_vuelos SET Precio=:p, Horarios=:H, Capacidad=:c, ID_Vuelo=:ID_v, Destino=:d, imagen=:i WHERE ID_Vuelo=:ID_v'; 
            $stmt=$conexion->prepare($sql);
            $stmt->bindParam(":p", $p);
            $stmt->bindParam(":H", $H);
            $stmt->bindParam(":c", $c);
            $stmt->bindParam(":ID_v", $ID_v);
            $stmt->bindParam(":d", $d);
            $stmt->bindParam(":i", $imagen);                      
            $stmt->execute();
            print("<script> alert('Registro actualizado correctamente');</script>");
            print("<script> window.location.replace('vuelos.php');</script>");

        }
        ?>