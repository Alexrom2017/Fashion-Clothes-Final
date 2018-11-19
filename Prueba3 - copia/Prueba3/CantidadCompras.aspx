<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="CantidadCompras.aspx.cs" Inherits="Prueba3.CantidadCompras" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

      proveedor: <asp:DropDownList ID="ListProveedor" runat="server" DataSourceID="SqlDataSource1" DataTextField="Nombre" DataValueField="IdProveedor"></asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DB_A4212A_FashionClothesConnectionString %>" SelectCommand="SELECT * FROM [Proveedores]"></asp:SqlDataSource>
    Cantidad: <asp:TextBox ID="txtCantidad" runat="server"></asp:TextBox>

    <asp:Button ID="btnCantidad" runat="server" Text="Agregar" OnClick="BtnCantidad_Click" />
</asp:Content>
