<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Iniciar Sesion.aspx.cs" Inherits="Prueba3.Formulario_web12" %>
<%@ Register assembly="DevExpress.Web.v18.1, Version=18.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!DOCTYPE html>
    <html>

        <head>
            <link href="css1/bootstrap.min.css" type="text/css" rel="stylesheet">
        </head>
        <br />

    <asp:Panel ID="Panel1" runat="server" BackColor="White"  >
                    <br /> 
                    <center>
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Black" Text="Iniciar Sesion" style="font-size: x-large"></asp:Label>
                    <br />
                    <br />

                    <asp:Label ID="Label2" runat="server" ForeColor="Black" Text="Usuario"></asp:Label>
                  <br />                   
                    <asp:TextBox ID="txtNombreUsuario" runat="server" Width="400px" ForeColor="#3333FF" class="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtNombreUsuario" EnableTheming="True" ErrorMessage="Ingrese un usuario" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
      
            
                    <asp:Label ID="Label3" runat="server" Text="Contraseña" ForeColor="Black"></asp:Label>
               
                    <br />
               
                    <asp:TextBox ID="txtContraseña" runat="server" TextMode="Password" Width="400px" ForeColor="#3333FF" class="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtContraseña" ErrorMessage="Ingrese las contraseña" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                    <br />
 
                    <asp:Button ID="btnIniciarSesion" runat="server" Height="43px" Text="Iniciar" Width="400px" ForeColor="#FFFFFF" class="btn btn-primary" OnClick="btnIniciarSesion_Click" />
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [NickName], [Contraseña] FROM [Usuarios]"></asp:SqlDataSource>
                    <br />
                    <br />
          
                </asp:Panel>
        <br />
                </center>
        </html>
  
</asp:Content>
