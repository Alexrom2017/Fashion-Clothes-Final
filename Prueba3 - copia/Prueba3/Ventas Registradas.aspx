<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Ventas Registradas.aspx.cs" Inherits="Prueba3.Ventas_Registradas" %>
<%@ Register assembly="DevExpress.Web.v18.1, Version=18.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" KeyFieldName="Pedido" Theme="Metropolis">
<SettingsAdaptivity>
<AdaptiveDetailLayoutProperties ColCount="1"></AdaptiveDetailLayoutProperties>
</SettingsAdaptivity>

            <SettingsSearchPanel Visible="True" />

<EditFormLayoutProperties ColCount="1"></EditFormLayoutProperties>
            <Columns>
                <dx:GridViewDataTextColumn FieldName="Pedido" ReadOnly="True" VisibleIndex="0">
                    <EditFormSettings Visible="False" />
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="IdUsuario" VisibleIndex="3">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataDateColumn FieldName="Fecha" VisibleIndex="4">
                </dx:GridViewDataDateColumn>
                <dx:GridViewDataTextColumn FieldName="Destino" VisibleIndex="5">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="DireccionDestion" VisibleIndex="6">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="Departamento" VisibleIndex="7">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="Detalle" ReadOnly="True" VisibleIndex="8">
                    <EditFormSettings Visible="False" />
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="Producto" VisibleIndex="9">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="Cantidad" VisibleIndex="10">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="Precio" VisibleIndex="11">
                </dx:GridViewDataTextColumn>
            </Columns>
        </dx:ASPxGridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DB_A4212A_FashionClothesConnectionString2 %>" SelectCommand="SELECT Pedidos.IdPedido as Pedido, Pedidos.IdUsuario, Pedidos.FechaPedido as Fecha, Pedidos.Destino, Pedidos.DireccionDestion, Pedidos.Departamento, DetallePedido.IdDetallePedido as Detalle, DetallePedido.IdProducto as Producto, DetallePedido.Cantidad, DetallePedido.PrecioUnitario as Precio FROM Pedidos INNER JOIN DetallePedido ON Pedidos.IdPedido = DetallePedido.IdPedido"></asp:SqlDataSource>
    </p>
    <p>
        <dx:ASPxHyperLink ID="ASPxHyperLink1" runat="server" NavigateUrl="~/Ventas.aspx" Text="Agregar ventas" />
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
<p>
        &nbsp;</p>
</asp:Content>
