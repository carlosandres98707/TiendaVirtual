<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="ProyectoCiberVentas.Vista.Bootstrap.Registro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Registro</title>
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v5.12.1/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
    <style type="text/css">
        #form1 {
            height: 293px;
        }
    </style>
</head>
<body>
    <!-- Navigation-->
        <nav class="navbar navbar-expand-lg bg-secondary text-uppercase fixed-top" id="mainNav">
            <div class="container">
                <a class="navbar-brand js-scroll-trigger" href="Inicio.aspx">CyberVentas</a><button class="navbar-toggler navbar-toggler-right text-uppercase font-weight-bold bg-primary text-white rounded" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">Menu <i class="fas fa-bars"></i></button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ml-auto">
                        <h2><li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" >Registra tus datos</a></li></h2>
                        
                </div>
            </div>
        </nav>


    <header class="masthead bg-transparent  text-center">
          <form id="form1" runat="server">
              <h1>Crea tu cuenta</h1><br />
              <label for="cedula">Cedula:</label>
              <asp:TextBox ID="cedula" runat="server" TextMode="Number"></asp:TextBox>
&nbsp;&nbsp &nbsp &nbsp
              <label for="nombre">Nombre:</label>
              <asp:TextBox ID="nombre" runat="server"></asp:TextBox>
&nbsp;&nbsp &nbsp &nbsp
              <label for="apellido">Apellido:</label>&nbsp;
              <asp:TextBox ID="apellido" runat="server"></asp:TextBox>
              &nbsp &nbsp &nbsp
              <label for="telefono">Telefono:</label>
              <asp:TextBox ID="telefono" runat="server" TextMode="Number"></asp:TextBox>
              <br /><br />
              <label for="correo">Correo:</label>
              <asp:TextBox ID="correo" runat="server" TextMode="Email"></asp:TextBox>
&nbsp;&nbsp &nbsp &nbsp
              <label for="usuarios">Usuario:</label>
              <asp:TextBox ID="usuarios" runat="server"></asp:TextBox>
&nbsp;&nbsp &nbsp &nbsp
              <label for="contraseñas">Contraseña:</label>
              <asp:TextBox ID="contraseñas" runat="server" OnTextChanged="TextBox7_TextChanged" TextMode="Password"></asp:TextBox>
              <br /><br />

              &nbsp;<asp:Button ID="Button1" runat="server" BackColor="#00CC66" BorderStyle="None" ForeColor="White" Text="Registrarme" Height="38px" Width="166px" OnClick="Button1_Click" />
          </form>
          </header>
</body>
</html>
