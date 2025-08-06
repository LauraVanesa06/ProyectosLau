<html>

<head>
  <title>Problema</title>
</head>

<body>

  <?php
 ini_set('display_errors', 1);
 ini_set('display_startup_errors', 1);
 error_reporting(E_ALL);
  $conexion = mysqli_connect("localhost", "root", "toor", "base1") or
    die("Problemas con la conexión");

  $registros = mysqli_query($conexion, "select * from alumnos
                        where mail='$_REQUEST[E_mail]'") or
    die("Problemas en el select:" . mysqli_error($conexion));
  if ($reg = mysqli_fetch_array($registros)) {
    ?>

    <form action="uptade3.php" method="post">
      Ingrese nuevo mail:
      <input type="text" name="mailnuevo" value="<?php echo $reg['E_mail'] ?>">
      <br>
      <input type="hidden" name="mailviejo" value="<?php echo $reg['E_mail'] ?>">
      <input type="submit" value="Modificar">
    </form>

  <?php
  } else
    echo "No existe alumno con dicho mail";
  ?>
</body>

</html>