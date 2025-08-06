
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Document</title>
</head>
<body>
    <main> 
       <header>
            <img src="https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.vogue.es%2Fmoda%2Farticulos%2Fbolsos-lujo-imprescindibles-comprar-tiendas-online&psig=AOvVaw1GYxQrmT_bDzFrZfNXucYl&ust=1731789660922000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCMCfo7CZ34kDFQAAAAAdAAAAABAE" alt="">
            header.
            <!--  <h2 class="logo">Registro de Alumnos </h2> -->
            <nav class="navigation">
                <a href="index.php">Página de inicio</a>
                <a href="select.php">Ver todos los registros</a>
                <a href="update.php">Modificar datos</a>
                <a href="delete1.php">Eliminar registro</a>
                <a href="buscar1.php">Buscar un solo registro</a>
                
                <!--  <a href="comen.php">Comentarios</a>
                <a href="comen.php">Cometarios</a> -->
            </nav>
        </header> 
    
        <section>
            <br>
            <br>
            <br>
            <br>
            <aside> aside </aside>

            <section class="dos">
               
                <div class="container">
                    <br><br><br><br><br>
                    <br><br><br><br><br>
                    <br><br><br><br><br>
                    <div class="row">
                        <?php
                            ini_set('display_errors', 1);
                            ini_set('display_startup_errors', 1);
                            error_reporting(E_ALL);
            
                            $registros = mysqli_query($conexion, "SELECT Codigo, Documento, Nombre, E_mail, Cod_Curso, td FROM alumnos") or
                            die("Problemas en el select: " . mysqli_error($conexion));
            
                            if (mysqli_num_rows($registros) > 0) {
                                    while ($reg = mysqli_fetch_array($registros)) {
                            ?>
                            
                            <div class="col-12 col-md-6 col-lg-4">  
                                <div class="card">
                                    <div class="card-body">   
                    
                                        <p class="card-text"> <?php echo "Codigo: " . htmlspecialchars($reg['Codigo']) . "<br>"; 
                   
                                        echo "Documento: " . htmlspecialchars($reg['Documento']) . "<br>";
            
                                        echo "Tipo de documento: ";
                                            switch ($reg['td']) {
                                            case 1:
                                            echo "CC";
                                                break;
                                            case 2:
                                                echo "TI";
                                                break;
                                            case 3:
                                                echo "CE";
                                                break;
                                            default:
                                                echo "PEP";
                                                break;
                                        }  echo"<br>";
            
                                        echo "Nombre: " . htmlspecialchars($reg['Nombre']) . "<br>";
                                      
                                        echo "Email: " . htmlspecialchars($reg['E_mail']) . "<br>"; 
                                     
                                        echo "Curso: "; 
                                        switch ($reg['Cod_Curso']) {
                                            case 1:
                                                echo "ALGORITMIA";
                                                break;
                                            case 2:
                                                echo "BASE DE DATOS";
                                                break;
                                            case 3:
                                                echo "SISTEMAS OPERATIVOS";
                                                break;
                                            default:
                                                echo "Curso desconocido";
                                                break;
                                        }
                                        ?> 
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <?php
                                }
             
                                    } 
            
            
            
                            ?>    
                        </div>
                    </div>
            </section>
        
       
       </section>
       <br>
        <footer>
            <h> footer</h>
        </footer>
    </main>
</body>
</html>