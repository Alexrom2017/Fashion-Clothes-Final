
	<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="AgregarProductos.aspx.cs" Inherits="Prueba3.AgregarProductos" %>
<%@ Register assembly="DevExpress.Web.Bootstrap.v18.1, Version=18.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.Bootstrap" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v18.1, Version=18.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <!doctype html>

        <html>

        <head>
        <link href="css1/bootstrap.min.css" rel="stylesheet" type="text/css"></link>
        </head>
    
                    
           <div class="container">         
                <div class="row">
                    <div class="col-md-6">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Productos]"></asp:SqlDataSource>
  <%--*********************************************************************************************************--%>   
                        
                    <div class="col-md-8">   
                        <div class="text-left">
                                <div> 
            <br />
                                    <table class="w-25" style="width: 29%; height: 34px">
                                        <tr>
                                            <td class="right" style="width: 234px">
                                                <dx:BootstrapHyperLink ID="BootstrapHyperLink1" runat="server" NavigateUrl="~/Productos Registrados.aspx" Text="Productos registrados">
                                                </dx:BootstrapHyperLink>
                                            </td>
                                        </tr>
                                    </table>
        </div>
                    <br />
                        <asp:Label ID="Label7" runat="server" Text="Agregar Producto" Font-Bold="True" Font-Size="X-Large"></asp:Label>        <br />                        
                    <br />
                    <br />
                        <asp:Label ID="Label4" runat="server" Text="Nombre:"></asp:Label>
                        <asp:TextBox ID="TextNom" runat="server" class="form-control" Width="100%"></asp:TextBox>
                                <br />
                        <asp:Label ID="Label2" runat="server" Text="Descripcion:"></asp:Label>
                        <asp:TextBox ID="TextDesp" runat="server" class="form-control" Width="100%"></asp:TextBox>
                                <br />
                        <asp:Label ID="Label8" runat="server" Text="Proveedores:"></asp:Label>
                        <asp:TextBox ID="TextProe" runat="server" class="form-control" Width="100%"></asp:TextBox>
                                <br />
                        <asp:Label ID="Label5" runat="server" Text="Precio de Compra:"></asp:Label>
                        <asp:TextBox ID="txtPrecioCompra" runat="server" class="form-control" Width="100%"></asp:TextBox>
                                <br />
                        <asp:Label ID="Label6" runat="server" Text="Precio de Venta:"></asp:Label>
                        <asp:TextBox ID="txtPrecioVenta" runat="server" class="form-control" Width="100%"></asp:TextBox>
                                <br />
                        <asp:Label ID="Label3" runat="server" Text="Categoria:"></asp:Label>
                        <asp:DropDownList class="form-control"  ID="DDLCategoria" runat="server" Width="100%" DataTextField="Nombre" DataValueField="Nombre" >
                        </asp:DropDownList>
                        <asp:Button ID="btnGuardar" runat="server" Text="Guardar" class="btn btn-primary" Width="100%" OnClick="Button1_Click"/>
                                <br />
                        </div>
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />    
                    <br />
                    <br />    
                    <br />
                    <br />
                    <br />      
                    <br />              
                        <br />
                        <br />
                        <br />

               
<%--**********************************************************************************************************************************************--%>                    
                        
                        
                        </div>
                        </div>
                        </div>
                    </div>
               </div>
<%--**********************************************************************************************************************************************--%>                    

    </html>
    
</asp:Content>
