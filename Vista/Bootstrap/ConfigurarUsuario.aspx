<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConfigurarUsuario.aspx.cs" Inherits="ProyectoCiberVentas.Vista.Bootstrap.ConfigurarUsuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Inicio</title>
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v5.12.1/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
</head>
<body>
   <!-- Navigation-->
        <nav class="navbar navbar-expand-lg bg-secondary text-uppercase fixed-top" id="mainNav">
            <div class="container">
                <a class="navbar-brand js-scroll-trigger" href="Home.aspx">CyberVentas</a><button class="navbar-toggler navbar-toggler-right text-uppercase font-weight-bold bg-primary text-white rounded" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">Menu <i class="fas fa-bars"></i></button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ml-auto">
                       <h2><li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" >Confirgurar mi perfil</a></li></h2> 
                        
                    </ul>
                </div>
            </div>
        </nav>
    <header class="masthead bg-transparent  text-center">
          <form action="" method="post">
           
              <label for="ced">Cedula:</label>
              <input type="number" name="cedula" id="ced" required/> <br /><br />
              <label for="nom">Nombre:</label>
               <input type="text" name="nombre" id="nom" required/> <br /><br />
              <label for="apell">Apellido:</label>
               <input type="text" name="apellido" id="apell" required/> <br /><br />
              <label for="tele">Telefono:</label>
               <input type="number" name="telefono" id="tele" required/><br /><br />
              <label for="corr">Correo:</label>&nbsp;
               <input type="email" name="correo" id="corr" required/><br /><br />
              <label for="usu">Usuario:</label>&nbsp;
              <input  type="text" name="usuario" id="usu" required/><br /><br />
              <label for="contr">Contraseña:</label>
              <input type="password" name="contraseña" id="contr" required/><br /><br />

              <input type="submit" class="btn btn-success" name="registro" value="Actualizar"/>

          </form>
          </header>
</body>
</html>
