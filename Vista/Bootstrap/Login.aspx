<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ProyectoCiberVentas.Vista.Bootstrap.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Login</title>
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
                <a class="navbar-brand js-scroll-trigger" href="Inicio.aspx">CyberVentas</a><button class="navbar-toggler navbar-toggler-right text-uppercase font-weight-bold bg-primary text-white rounded" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">Menu <i class="fas fa-bars"></i></button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ml-auto">
                        <h2><li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" >Inicia sesion Por favor</a></li></h2>
                        
                </div>
            </div>
        </nav>


      <header class="masthead bg-transparent  text-center">
          <form id="form1" runat="server">
              <h1>Login</h1><br /><br />
              <label for="usuario">Usuario:</label> 
              &nbsp &nbsp &nbsp  
              <asp:TextBox ID="usuario" runat="server"></asp:TextBox>
              &nbsp
              <br /><br />
              <label for="contraseña">Contraseña:</label>
              <asp:TextBox ID="contraseña" runat="server" TextMode="Password"></asp:TextBox>
              <br /><br />
              <asp:Button ID="ingresp" runat="server" BackColor="#00CC66" ForeColor="White" Height="42px" Text="Ingresar" Width="197px" BorderStyle="None" OnClick="ingreso_click"/>
              <br /><br />
              <a href="Registro.aspx">No tengo una cuenta</a>
              <br />
              <br />
              <asp:Label ID="mensaje" runat="server" ForeColor="Red"></asp:Label>


          </form>
          </header>
</body>
</html>
