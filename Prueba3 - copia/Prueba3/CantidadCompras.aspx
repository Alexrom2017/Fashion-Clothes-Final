<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="CantidadCompras.aspx.cs" Inherits="Prueba3.CantidadCompras" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        
            <link href="css1/bootstrap.min.css" type="text/css" rel="stylesheet">
      <br />
      <br />
        <div class="container" style="width:80%;  margin-left:10%; margin-right:10%; background-color:beige; border:solid; border-style:solid;">
        <br />
        <br />
            <center>
             proveedor:
                <br />
                <br />
                <asp:DropDownList CssClass="dropdown-header" Width="30%" ID="ListProveedor" runat="server" DataSourceID="SqlDataSource1" DataTextField="Nombre" DataValueField="IdProveedor"></asp:DropDownList>
            <br />
            
             Cantidad: 
            <br />
            <br />
                <asp:TextBox class="form-control" Width="30%" ID="txtCantidad" runat="server"></asp:TextBox>
            <br />
                <br />
            <asp:Button CssClass="btn btn-block btn-info" Width="30%" ID="btnCantidad" runat="server" Text="Agregar" OnClick="BtnCantidad_Click" />
            <br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtCantidad" ErrorMessage="Ingrese solo números" ForeColor="Red" ValidationExpression="^\d+$"></asp:RegularExpressionValidator>
            <br />
            <br />
                </center>
         </div>     
      <br />
      <br />
      <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DB_A4212A_FashionClothesConnectionString %>" SelectCommand="SELECT * FROM [Proveedores]"></asp:SqlDataSource>
            <br />
            <br />
      <br />
</asp:Content>
