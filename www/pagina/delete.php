<html>

<head>
  <title>Problema</title>
</head>

<body>
  <?php
  $conexion = mysqli_connect("localhost", "root", "toor", "base1") or
    die("Problemas con la conexión");

  $registros = mysqli_query($conexion, "select Nombre from alumnos
                        where Codigo='$_REQUEST[Codigo]'") or
    die("Problemas en el select:" . mysqli_error($conexion));
  if ($reg = mysqli_fetch_array($registros)) {
    mysqli_query($conexion, "delete from alumnos where Codigo='$_REQUEST[Codigo]'") or
      die("Problemas en el select:" . mysqli_error($conexion));
    echo "Se efectuó el borrado del alumno con dicho Codigo.";
  } else {
    echo "No existe un alumno con ese Codigo.";
  }
  mysqli_close($conexion);
  ?>
</body>

</html>