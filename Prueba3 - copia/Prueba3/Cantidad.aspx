<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Cantidad.aspx.cs" Inherits="Prueba3.Cantidad" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <link href="css1/bootstrap.min.css" type="text/css" rel="Stylesheet" />
    

    <br />
    <br />
    
       <div class="container" style="width:80%;  margin-left:10%; margin-right:10%; background-color:lightskyblue; border:solid; border-style:solid;">
        <br />
        <br />


           <center>
           Cantidad: <asp:TextBox ID="txtCantidad" runat="server"></asp:TextBox>
           <br />
           <br />
           <asp:Button CssClass="btn btn-block btn-info" Width="40%" ID="btnCantidad" runat="server" Text="Agregar al carrito y seguir comprando" OnClick="BtnCantidad_Click" />
           <br />
           <asp:Button CssClass="btn btn-block btn-info" Width="40%" ID="btnFinalizar" runat="server" OnClick="Button2_Click" Text="Terminar Compra!" />
           <br />
                  </center>
           </div>
     
      <br />
    <br />
</asp:Content>
