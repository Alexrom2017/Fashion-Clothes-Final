<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="AgregarProveedores.aspx.cs" Inherits="Prueba3.AgregarProveedores" %>
<%@ Register assembly="DevExpress.Web.v18.1, Version=18.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.Bootstrap.v18.1, Version=18.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.Bootstrap" tagprefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <dx:BootstrapHyperLink ID="BootstrapHyperLink1" runat="server" Text="Contar Proveedores">
     </dx:BootstrapHyperLink>
     <br />
               <!DOCTYPE html>
    <html>
        <head>
               <link href="css1/bootstrap.min.css" type="text/css" rel="stylesheet"> 
        </head>
     <div class="container">
         <div class="row">
            <div class="col-md-4" style="left:5%;">
                <br />
                <asp:Label ID="Label4" runat="server" Text="Agregar proveedores" Font-Bold="True" Font-Size="XX-Large"></asp:Label>
                <br />
                <br />
                
  
                <form action="" method="post" enctype="multipart/form-data">
                    <div class="text-left">
                        <br />
                        <dx:ASPxLabel ID="ASPxLabel1" runat="server" AssociatedControlID="ASPxTextBox1" Text="Nombre" Theme="iOS">
                        </dx:ASPxLabel>
                        <br />
           <asp:TextBox ID="TxtNombre" runat="server" class="form-control" Width="50%" Height="21px"></asp:TextBox>
                        <br />
                        <dx:ASPxLabel ID="ASPxLabel2" runat="server" Text="Dirección" Theme="iOS">
                        </dx:ASPxLabel>
                        <br />
           <asp:TextBox ID="TxtDireccion" runat="server" class="form-control" Width="50%" Height="21px"></asp:TextBox>
                        <br />
                        <dx:ASPxLabel ID="ASPxLabel3" runat="server" Text="Teléfono" Theme="iOS">
                        </dx:ASPxLabel>
                        <br />
           <asp:TextBox ID="TxtTelefono" runat="server" class="form-control" Width="50%" Height="21px"></asp:TextBox>
                        <br />
                        <dx:ASPxLabel ID="ASPxLabel4" runat="server" Text="Email" Theme="iOS">
                        </dx:ASPxLabel>
           <asp:TextBox ID="TxtEmail" runat="server" class="form-control" Width="50%" Height="21px"></asp:TextBox>
                        <br />
                        <asp:Button ID="BtnAgregarProveedor" runat="server" Text="Agregar" />
                        <br />
                        <br />
                    </div>
                <br />
                    <br />
                    <br />
                    <br />
                </form>
                </div>
             </div>
         </div>
        </html>
</asp:Content>
