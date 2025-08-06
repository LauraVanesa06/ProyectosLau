<html>

<head>
  <title>Problema</title>
</head>

<body>
  <?php
  $ar = fopen("datos.doc", "a") or
    die("Problemas en la creacion");
  fputs($ar, $_REQUEST['nombre']);
  fputs($ar, "\n");
  fputs($ar, $_REQUEST['comentarios']);
  fputs($ar, "\n");
  fputs($ar, "--------------------------------------------------------");