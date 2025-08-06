<html>

<head>
  <title>Problema</title>
</head>

<body>

  <?php
  $conexion = mysqli_connect("localhost", "root", "toor", "base1") or
    die("Problemas con la conexión");

  $registros = mysqli_query($conexion, "select codigo,Nombre,E_mail,Cod_Curso
                        from alumnos") or
    die("Problemas en el select:" . mysqli_error($conexion));
    
    $ar = fopen("info.txt", "a") or die(" Error al crear el archivo.");

    while ($reg = mysqli_fetch_array($registros)) {
      fputs($ar, "Código: " . $reg['codigo'] . "\n");
      fputs($ar, "Nombre: " . $reg['Nombre'] . "\n");
      fputs($ar, "Email: " . $reg['E_mail'] . "\n");
  
      $curso = match ($reg['Cod_Curso']) {
        1 => "PHP",
        2 => "ASP",
        3 => "JSP",
        default => "Desconocido",
      };
  
      fputs($ar, "Curso: " . $curso . "\n");
      fputs($ar, "--------------------------------------------------------\n");
  
      echo "Código: " . $reg['codigo'] . "<br>";
      echo "Nombre: " . $reg['Nombre'] . "<br>";
      echo "Email: " . $reg['E_mail'] . "<br>";
      echo "Curso: " . $curso . "<br>";
      echo "<hr>";
    }
  ?>
 
  <?php
    mysqli_close($conexion);
  ?>

</body>

</html>