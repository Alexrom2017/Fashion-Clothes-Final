<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Perfil.aspx.cs" Inherits="Prueba3.Formulario_web1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <link href="css1/bootstrap.min.css" type="text/css" rel="Stylesheet" />
    
   <p class="right">
        &nbsp;<div class="container" style="width:80%;  margin-left:10%; margin-right:10%; background-color:white; border:solid; border-style:solid;">
        <br />
        <br />
           <div class="row">
                    <div class="col-sm-12 col-md-6">
                    <div class="container-fluid" style="margin-left:20%;">
                        <asp:Image ID="ImgPreview" Width="200" imageUrl="~/Imagenes/login.jpg" runat="server" />
                    </div>
                    </div>
                    <div class=" col-sm-12 col-md-6" style="color:black;">
                        <asp:Label ID="Label2" runat="server" Text="Nombre:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblNombre" runat="server" Text="Nombre:"></asp:Label>
                        <br />
                        <asp:Label ID="Label3" runat="server" Text="Usuario"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblNickname" runat="server" Text="Nombre de Usuario"></asp:Label> 
                        <br />
                        <asp:Label ID="Label4" runat="server" Text="Direccion"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblDireccion" runat="server" Text="Direccion"></asp:Label>
                        <br />
                        <asp:Label ID="Label5" runat="server" Text="Correo"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblCorreo" runat="server" Text="Correo"></asp:Label>
                        <br />
                        <asp:Label ID="Label6" runat="server" Text="Telefono"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblTelefono" runat="server" Text="Telefono"></asp:Label>
                        <br />
                        <asp:Label ID="Label7" runat="server" Text="Compras"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblCompras" runat="server" Text="Compras"></asp:Label> 
                        <br />
                        <asp:Label ID="Label8" runat="server" Text="Rol"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblRol" runat="server" Text="Rol"></asp:Label>
                        <br />
                        <br />
        <asp:Button CssClass="btn btn-block btn-info" Width="40%" ID="btnCerrarSesion" runat="server" OnClick="btnCerrarSesion_Click" Text="Cerrar Sesión" />
                        <br />


                    </div>
               </div>   
            
            <br />
           <br />
         </div>     
 
        <br />
        <br />

           


</asp:Content>
