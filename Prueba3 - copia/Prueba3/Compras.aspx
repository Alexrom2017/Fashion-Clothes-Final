<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Compras.aspx.cs" Inherits="Prueba3.Compras1" %>
<%@ Register assembly="DevExpress.Web.v18.1, Version=18.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >
  <link href="css1/bootstrap.min.css" type="text/css" rel="Stylesheet"></link>
    
    <br />
    <br />
    <p class="right">
        <dx:ASPxHyperLink ID="ASPxHyperLink2" runat="server" Text="Agregar detalle de compra" />
    </p>
       <form action="" method="post" enctype="multipart/form-data" class="center" >
           <center>
                <asp:Label ID="Label4" runat="server" Text="Agregar productos a stock" Font-Bold="True" Font-Size="XX-Large"></asp:Label>
                    <br />
                    <br/>
                    <asp:Panel ID="Panel1" runat="server" >
                    <br />
                    <asp:Label ID="Label10" runat="server" Text="ID Productos"></asp:Label>
                    <br />
                    <asp:TextBox CssClass="form-control" ID="TxtProductos" runat="server"  TextMode="Number" Width="20%" Style="text-align:center;"></asp:TextBox>
                    <br />
                    <asp:Label ID="Label11" runat="server" Text="Cantidad"></asp:Label>
                    <br />
                    <asp:TextBox CssClass="form-control" ID="TxtCantidad" runat="server" TextMode="Number" Width="20%" Style="text-align:center"></asp:TextBox>
                    <br />
                    <asp:Label runat="server" Text="Fecha de Compra"></asp:Label>
                    <br />
                    <asp:TextBox CssClass="form-control" ID="TxtFecha" runat="server" TextMode="Date" Width="20%" Style="text-align:center;" ></asp:TextBox>
                    <br />
                    <br />
                    <asp:Button class="btn btn-primary btn-block" ID="btnAgregar" runat="server" Text="Agregar" OnClick="Button1_Click" Width="20%" />
                    <br />
                    <br />
                    <dx:ASPxHyperLink ID="ASPxHyperLink1" runat="server" NavigateUrl="~/Compras Registradas.aspx" Text="Compras Registradas" />
                    <br />                  
                    </asp:Panel>
                    </center>
           <br />
           <br />

</asp:Content>
