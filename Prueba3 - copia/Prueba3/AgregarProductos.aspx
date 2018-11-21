<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="AgregarProductos.aspx.cs" Inherits="Prueba3.AgregarProductos" %>
<%@ Register assembly="DevExpress.Web.Bootstrap.v18.1, Version=18.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.Bootstrap" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v18.1, Version=18.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>
  
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <link href="css1/bootstrap.min.css" rel="stylesheet" type="text/css"></link> 
           <div class="container">         
                <div class="row">
                    <div class="col-md-6">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString3 %>" SelectCommand="SELECT * FROM [CategoriaProducto]"></asp:SqlDataSource>
                    <div class="text-left">
                                <div> 
                                  <br />
        </div>
                                <dx:BootstrapHyperLink ID="BootstrapHyperLink2" runat="server" NavigateUrl="~/Catalogo.aspx" Text="Agregar producto existente">
                                </dx:BootstrapHyperLink>
                    <br />
                        <asp:Label ID="Label7" runat="server" Text="Agregar nuevo producto" Font-Bold="True" Font-Size="X-Large"></asp:Label>        <br />                        
                    <br />
                    <br />
                        <asp:Label ID="Label4" runat="server" Text="Nombre:"></asp:Label>
                        <asp:TextBox ID="TextNom" runat="server" class="form-control" Width="80%"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextNom" ErrorMessage="Ingrese nombre" ForeColor="Red"></asp:RequiredFieldValidator>
                                <br />
                        <asp:Label ID="Label2" runat="server" Text="Descripcion:"></asp:Label>
                        <asp:TextBox ID="TextDesp" runat="server" class="form-control" Width="80%"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextDesp" ErrorMessage="Ingrese nombre" ForeColor="Red" ValidateRequestMode="Disabled"></asp:RequiredFieldValidator>
                                <br />
                        <asp:Label ID="Label8" runat="server" Text="Proveedores:"></asp:Label>
                        <asp:DropDownList class="form-control"  ID="DDLProveedores" runat="server" Width="80%" DataTextField="Nombre" DataValueField="IdProveedor" DataSourceID="SqlDataSource2" >
                        </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT * FROM [Proveedores]"></asp:SqlDataSource>
                                <br />
                        <asp:Label ID="Label5" runat="server" Text="Precio de Compra:"></asp:Label>
                        <asp:TextBox ID="txtPrecioCompra" runat="server" class="form-control" Width="80%"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtPrecioCompra" ErrorMessage="Ingrese solo numeros" ForeColor="Red" ValidationExpression="^\d+$"></asp:RegularExpressionValidator>
                                <br />
                        <asp:Label ID="Label6" runat="server" Text="Precio de Venta:"></asp:Label>
                        <asp:TextBox ID="txtPrecioVenta" runat="server" class="form-control" Width="80%"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtPrecioVenta" ErrorMessage="Ingrese solo numeros" ForeColor="Red" ValidationExpression="^\d+$"></asp:RegularExpressionValidator>
                                <br />
                        <asp:Label ID="Label3" runat="server" Text="Categoria:"></asp:Label>
                        <asp:DropDownList class="form-control"  ID="DDLCategoria" runat="server" Width="80%" DataTextField="Nombre" DataValueField="IdCategoria" DataSourceID="SqlDataSource1" >
                        </asp:DropDownList>
                                <br />
                        <asp:Button ID="btnGuardar" runat="server" Text="Guardar" class="btn btn-primary" Width="80%" OnClick="Button1_Click"/>
                                <br />
                        </div>
                    <br />
                            <dx:BootstrapHyperLink ID="BootstrapHyperLink1" runat="server" NavigateUrl="~/Productos Registrados.aspx" Text="Productos registrados">
                            </dx:BootstrapHyperLink>
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
            
<%--**********************************************************************************************************************************************--%>                    
    
</asp:Content>
