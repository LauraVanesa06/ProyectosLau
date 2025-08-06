
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <br>
        <br>

        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
        <link href="css/es.css" rel="stylesheet" />
        <style>
         body{
            background: #CFBBFC;
            background: linear-gradient(to right, #7287FA, #CFBBFC);
        }
        .bg{
            background-image: url(imagenes/imagen1.png);
            background-position:center center;
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
        <!-- Comentario section-->
        <form method="POST" action="enviarcomentario.php">
            <section id="contact">
                <div class="container px-4">
                    <div class="row gx-4 justify-content-center">
                        <div class="col-lg-8">
                            <p class="lead">
                            </p>
                                <br>
    
                                <div class="col-xs-">
                                    <h3>Comentarios</h3>

                                    <br>
                                <div class="form-group">
                                    <label for="nombre" class="form-label">Nombre</label>
                                    <input class="form-control" name="nombre" type="text" id="nombre" placeholder="Escribe tu nombre" required >
                                    </div>
                            
                                    
                            <br>
                                    <div class="form-group">
                                    <label for="comentario" class="form-label">Comentario:</label>
                                    <textarea class="form-control" name="comentario" cols="30" rows="5" type="text" id="comentario" 
                                    placeholder="Escribe tu comentario......"></textarea>
                                    </div>
                            <br>
                            <input class="btn btn-primary" type="submit"  value="Enviar Comentario">
                            <br>
                            <br>
                            <br>
                                    <?php

$conexion=mysqli_connect("localhost","root","","vuelos"); 
$resultado= mysqli_query($conexion, 'SELECT * FROM comentarios');

while($comentario = mysqli_fetch_object($resultado)){

    ?>

    <b><?php echo($comentario->nombre);  ?></b>(<?php echo ($comentario->fecha); ?>) dijo: 
    <br />
    <?php echo ($comentario->comentario);?>
    <br />
    <hr />




    <?php
}

                                    ?>
                            
                                </form>
                          
                </div>
                
            </section>

     


    </body>
</html>

