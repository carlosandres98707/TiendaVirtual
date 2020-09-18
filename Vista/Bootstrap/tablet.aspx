﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tablet.aspx.cs" Inherits="ProyectoCiberVentas.Vista.Bootstrap.tablet" %>

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
                  <h1 class="portfolio-modal-title text-secondary text-uppercase mb-0">Tablet Aple G8</h1>
                                        <tr>
                                            <td>  <!-- Portfolio Modal - Image--><img class="img-fluid rounded mb-5" src="assets/img/portfolio/appe.jpg" alt="" /><!-- Portfolio Modal - Text--></td>
                                             <td>
                                                  <h1 class="text-danger">Precio: $922.000</h1>
                                                  <b>Características:<br /></b> 

                                    <p align="justify">
                                      
                                     • Procesador: MT8167A/D 1.3GHZ 32BIT<br />

                                     • Sistema Operativo: ¡OS Oreo (Go Edition)<br />

                                     • Memoria: 1GB<br />

                                     • Almacenamiento: 8GB<br />

                                     • Pantalla: 7" Pulgadas

                                    </p>
                                                      <form id="form3" runat="server">
                                         <label for="tablets">Cantidad a comprar:</label>
                                    <asp:TextBox ID="tablets" runat="server"  TextMode="Number" min="1"></asp:TextBox><br /><br />
                                     
                                        
                                        <asp:Button ID="comprar" runat="server" BackColor="#0099FF" ForeColor="White" Height="42px" Text="Comprar Producto" Width="197px" BorderStyle="None" OnClick="comprar_Click"/><br /><br />
                                        <asp:Label ID="mensaje" runat="server" ForeColor="Red"></asp:Label>
                                    </form>
                                             </td>
                                        </tr>
                                    </table>

        </center>

        </div>
</body>
</html>
