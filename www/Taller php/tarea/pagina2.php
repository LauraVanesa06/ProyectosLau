<html>

<head>
  <title>Problema</title>
</head>

<body>
  <?php
  $nombre = $_REQUEST['nombre'];
  $apellido = $_REQUEST['apellido'];
  $direccion = $_REQUEST['dir'];
    echo("Señor(a) " . $nombre . " " . $apellido . " los datos que usted nos proporcionó son:" . "<br>");
    echo ("Direccion: " . $direccion );
    ?>
    Telefono <?php echo $_POST["tel"]
    ?> <br>
    Correo electronico: <?php echo $_POST["email"]; ?> <br>
<?php

    if ($_REQUEST['genero'] == "fem") {
        echo " Usted es mujer";
      } else if ($_REQUEST['genero'] == "mas") {
            echo " Usted es hombre";
        }
      
      echo("<br>");
  echo("A usted le gusta: ");
    if (isset($_REQUEST['uno'])) {
        echo (" leer" );
    }

    if (isset($_REQUEST['dos'])) {
    echo (", bailar" );
    }
    if (isset($_REQUEST['tres'])) {
        echo (", cantar" );
    }
    
    if (isset($_REQUEST['cuatro'])) {
        echo (", dibujar" );
    }; 
    echo("." . "<br>");


  if ($_REQUEST['operacion'] == "ts") {
    echo "Usted tiene un total de 200 puntos";
  } elseif ($_REQUEST['operacion'] == "mc") {
    echo "Usted tiene un total de 300 puntos";
  } elseif ($_REQUEST['operacion'] == "ta") {
    echo "Usted tiene un total de 500 puntos";

  } 
  ?>
</body>

</html>