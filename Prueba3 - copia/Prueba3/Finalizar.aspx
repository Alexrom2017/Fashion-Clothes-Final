﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Finalizar.aspx.cs" Inherits="Prueba3.Finalizar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <link href="css1/bootstrap.min.css" type="text/css" rel="Stylesheet" />
        <br />
        <br />
        <div class="container" style="width:80%;  margin-left:10%; margin-right:10%; background-color:lightskyblue; border:solid; border-style:solid;">
        <br />
        <br />
        <center>
         Destino: <asp:TextBox CssClass="form-control" Width="40%" ID="txtDestino" runat="server"></asp:TextBox>
         <br />
         Dirección: <asp:TextBox CssClass="form-control" Width="40%" ID="txtDireccion" runat="server"></asp:TextBox>
         <br />
         Departamento: <asp:TextBox CssClass="form-control" Width="40%" ID="txtDepartamento" runat="server"></asp:TextBox>
         <br />
            <br />
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Guardar" />
         </center>
           <br />
           <br />
         </div>     
      <br />
    <br />

</asp:Content>
