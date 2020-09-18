<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="lavadora.aspx.cs" Inherits="ProyectoCiberVentas.Vista.Bootstrap.lavadora" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Productos</title>
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v5.12.1/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
</head>
<body>
    <div>
               <nav class="navbar navbar-expand-lg bg-secondary text-uppercase fixed-top" id="mainNav">
            <div class="container">
                <a class="navbar-brand js-scroll-trigger" href="Home.aspx">CyberVentas</a><button class="navbar-toggler navbar-toggler-right text-uppercase font-weight-bold bg-primary text-white rounded" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">Menu <i class="fas fa-bars"></i></button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ml-auto">
                        <h2><li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" >Productos</a></li></h2>
                        
                </div>
            </div>
        </nav>
      </div>
    <br /><br /><br /><br /><br /><br />
    <div>
        <center>
             <table>
                  <h1 class="portfolio-modal-title text-secondary text-uppercase mb-0">Haceb 15kg WF20</h1>
                                        <tr>

                                            <td><!-- Portfolio Modal - Image--><img class="img-fluid rounded mb-5" src="assets/img/portfolio/lava.jpg" alt="" /><!-- Portfolio Modal - Text--></td>
                                            <td>
                                                <h1 class="text-danger">Precio: $1'780.000</h1>
                                    <b>Características:<br /></b> 
                                    <p align="justify">
                                        Lavadora con 15 Kg de capacidad que lava mejor las prendas con la alta capacidad del Agitador optimizando tu vida y ahorrandote tiempo. No necesitas prelavar ni tampoco calcular.
                                        EL sistema Xpert System, un ciclo de Lavado Rápido y el enjuague adicional, ofrecen una limpieza extrema con resultados excepcionales.


                                    </p>
                                                  <form id="form5" runat="server">
                                         <label for="lavadoras">Cantidad a comprar:</label>
                                    <asp:TextBox ID="lavadoras" runat="server"  TextMode="Number" min="1"></asp:TextBox><br /><br />
                                     
                                        
                                        <asp:Button ID="comprar" runat="server" BackColor="#0099FF" ForeColor="White" Height="42px" Text="Comprar Producto" Width="197px" BorderStyle="None" OnClick="comprar_Click" /><br /><br />
                                        <asp:Label ID="mensaje" runat="server" ForeColor="Red"></asp:Label>
                                    </form>
                                            </td>
                                        </tr>
                                    </table>
        </center>
    </div>
</body>
</html>
