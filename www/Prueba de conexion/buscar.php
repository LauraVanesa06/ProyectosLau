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

  $registros = mysqli_query($conexion, "select Codigo,Nombre,Cod_Curso
                        from alumnos where E_mail='$_REQUEST[mail]'") or
    die("Problemas en el select:" . mysqli_error($conexion));

  if ($reg = mysqli_fetch_array($registros)) {
    echo "Nombre:" . $reg['Nombre'] . "<br>";
    echo "Curso:";
    switch ($reg['Cod_Curso']) {
      case 1:
        echo "PHP";
        break;
      case 2:
        echo "ASP";
        break;
      case 3:
        echo "JSP";
        break;
    }
  } else {
    echo "No existe un alumno con ese mail.";
  }
  mysqli_close($conexion);
  ?>
</body>

</html>