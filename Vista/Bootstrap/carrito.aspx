<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="carrito.aspx.cs" Inherits="ProyectoCiberVentas.Vista.Bootstrap.carrito" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Carrito</title>
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
                        <h2><li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" >Carrito de compras</a></li></h2>
                        
                </div>
            </div>
        </nav>
      </div>
    <br /><br /><br /><br /><br /><br />
    
    <div>
        <center>
               <h1>Mis Productos</h1>
        <form id="form1" runat="server">
        <div style="height: 440px">
            <asp:GridView ID="usuario" runat="server" AutoGenerateColumns="false" DataKeyNames="Codigo" OnRowDeleting="usuario_RowDeleting" Height="139px" Width="447px" HorizontalAlign="Center" OnSelectedIndexChanged="usuario_SelectedIndexChanged1" >
                <Columns>
                    
                    <asp:BoundField DataField="Codigo" HeaderText="Codigo" />
                    <asp:BoundField DataField="Nombre Producto" HeaderText="Nombre Producto"  />
                    <asp:BoundField DataField="Precio Unidad" HeaderText="Precio Unidad" />
                    <asp:BoundField DataField="Cantidad a Comprar" HeaderText="Cantidad a Comprar" />
                    <asp:BoundField DataField="Precio Total" HeaderText="Precio Total" />
                    <asp:CommandField ShowDeleteButton="true"  EditText="Eliminar" HeaderText="Eliminar Producto" />
                </Columns>
                <HeaderStyle HorizontalAlign="Center" />
                <RowStyle HorizontalAlign="Center" />
                <SelectedRowStyle HorizontalAlign="Center" />
            </asp:GridView>
            <br />
             
           
           
        </div>
           <div id="paypal-button-container"></div>
<script src="https://www.paypal.com/sdk/js?client-id=sb&currency=USD" data-sdk-integration-source="button-factory"></script>
<script>
    paypal.Buttons({
        style: {
            shape: 'pill',
            color: 'blue',
            layout: 'vertical',
            label: 'pay',

        },
        createOrder: function (data, actions) {
            return actions.order.create({
                purchase_units: [{
                    amount: {
                        value: '1'
                    }
                }]
            });
        },
        onApprove: function (data, actions) {
            return actions.order.capture().then(function (details) {
                alert('Transaction completed by ' + details.payer.name.given_name + '!');
            });
        }
    }).render('#paypal-button-container');
</script>
             <h1>Total a pagar: <asp:Label ID="mensaje" runat="server" ForeColor="Red"></asp:Label> </h1>
    </form>
            
    
        </center>
     
         
    </div>
    
</body>
</html>
