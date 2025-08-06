<html>

<head>
  <title>Problema</title>
</head>

<body>
  <?php
  ini_set('display_errors', 1);
  ini_set('display_startup_errors', 1);
  error_reporting(E_ALL);
  
  $conexion = mysqli_connect("localhost", "root", "toor", "veterinaria") or
    die("Problemas con la conexión");

  $registros = mysqli_query($conexion, "select Fecha,Cod_Turno
                        from registro where Mascota='$_REQUEST[Mascota]'") or
    die("Problemas en el select:" . mysqli_error($conexion));

  if ($reg = mysqli_fetch_array($registros)) {
    echo "Fecha:" . $reg['Fecha'] . "<br>";
    echo "Turno:" . $reg['Cod_Turno'] . "<br>";
    
  } else {
    echo "No hay cita asignada para esa mascota.";
  }
  mysqli_close($conexion);
  ?>
</body>

</html>