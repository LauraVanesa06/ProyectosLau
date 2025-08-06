<header>

    <?php
//include("cabecera.php");

if(isset($_SESSION['rol'])){
    header('location: index.php');
} 

 
?>
</header>
<!doctype html>
<html lang="es">

<head>
    <title>Login</title>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">


    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">

    <style>
    .bg {
        background-image: url(imagenes/imagen1.png);
        background-position: center center;
    }

    body {
        background: #CFBBFC;
        background: linear-gradient(to right, #7287FA, #CFBBFC);
    }
    </style>
</head>

<header>
    <br>
<div class="container">

<div class="imagen6">
<div class="input-box">
    <a href="index.php">
        <span class="icon">
        <img src="imagenes/imagen8.jpg" width="20" height="20">
        </span>
    </a>
</div>
</div>
</div>
</header>


<body>
    <div class="container w-75 bg-primary mt-5 rounded shadow">


        <div class="row align-items-streetch">
            <div class="col bg d-none d-lg-block col-md-5 col-lg col-xl-6 rounded">

            </div>
            <div class="col bg-white p-5 rounded-end">
                <div class="text-end">
                    <div class="input-box">
                        <a href="index.php">
                            <span class="icon">
                                <img src="imagenes/imagen5.jpg" width="50" alt="">
                            </span>
                        </a>
                    </div>
                </div>

                <h2 class="fw-bold text-center py-5"> INICIO DE SESIÓN </h2>
                <form action="auth.php" method="post">
                    <div class="mb-4">

                        <label for="usuario" class="form-label" minlength="9"><strong>Número de
                                documento</strong></label>
                        <input class="form-control" type="text" name="usuario" placeholder=" Ingrese su usuario"
                            id="usuario"> <br>
                    </div>

                    <div class="mb-4">
                        <label for="contrasena" class="form-label"><strong>Contraseña</atrong></label>
                        <input class="form-control" type="password" name="contrasena"
                            placeholder=" Ingrese su contraseña" id="contrasena" maxlength="10" size="10"><br>
                    </div>

                    <div class="mb-4 form-check">
                        <input type="checkbox" name="connected" class="form-check-input">
                        <label for="connected" class="form-chech-label">Mantener conectado</label>
                    </div>



                    <div class="d-grid">
                        <button type="submit" name="accion" value="isesion" class="btn btn-primary">Inicio de
                            Sesión</button>
                    </div>

                    <div class="my-3">
                        <span>¿No tienes cuenta? <a href="nwu.php">Registrate</a></span><br>

                    </div>
                </form>
            </div>
        </div>
    </div>
    <br>
    <br>
    <br>
    <br>

    <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
    <script src="bootstrap.bundle.min.js"></script>
</body>

</html>