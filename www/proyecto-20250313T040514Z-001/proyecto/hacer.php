
<?php
        
           
        if($_POST){
                       
                       $nom=$_POST['nombre']; 
                       $paisorigen=$_POST['paisorigen']; 
                       $paisdestino=$_POST['paisdestino']; 
                       $tipo=$_POST['tipo']; 
                       $fechaida=$_POST['fechaida'];  
                       $fecharegreso=$_POST['fecharegreso'];  
                       $Ntiquetes=$_POST['Ntiquetes'];  
                       $ID_TipoUsu='3';
                       require_once('conexion.php');
                       $conexion->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
                       $sql= "INSERT INTO reserva (nombre, paisorigen, paisdestino, tipo, fechaida, fecharegreso, Ntiquetes) VALUES (:n, :po, :pd, :t, :fi, :fr, :nt);";
                       
                       $stmt = $conexion->prepare($sql);
                                       
                       $stmt->bindParam(":n", $nom);
                       $stmt->bindParam(":po", $paisorigen);
                       $stmt->bindParam(":pd", $paisdestino);
                       $stmt->bindParam(":t", $tipo);
                       $stmt->bindParam(":fi", $fechaida);
                       $stmt->bindParam('fr', $fecharegreso);
                       $stmt->bindParam(":nt", $Ntiquetes);
                       $stmt->execute();
                       
                       print("<script> alert('su reserva fue hecha con éxito');
                           window.location='mis_vuelos.php';
                               </script> ");
                        }
                       ?> 
                       
                   