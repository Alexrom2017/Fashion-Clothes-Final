<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Compras Registradas.aspx.cs" Inherits="Prueba3.Compras_Registradas" %>
<%@ Register assembly="DevExpress.Web.v18.1, Version=18.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.Bootstrap.v18.1, Version=18.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.Bootstrap" tagprefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
        <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" KeyFieldName="IdCompras" Theme="Material">
<SettingsAdaptivity>
<AdaptiveDetailLayoutProperties ColCount="1"></AdaptiveDetailLayoutProperties>
</SettingsAdaptivity>

            <SettingsSearchPanel Visible="True" />

<EditFormLayoutProperties ColCount="1"></EditFormLayoutProperties>
            <Columns>
                <dx:GridViewDataTextColumn FieldName="IdCompras" ReadOnly="True" VisibleIndex="0">
                    <EditFormSettings Visible="False" />
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="Expr1" VisibleIndex="1" ReadOnly="True">
                    <EditFormSettings Visible="False" />
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="IdUsuario" VisibleIndex="2">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="IdProveedores" VisibleIndex="3">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataDateColumn FieldName="FechaCompra" VisibleIndex="4">
                </dx:GridViewDataDateColumn>
                <dx:GridViewDataTextColumn FieldName="IdDetalleCompra" VisibleIndex="5" ReadOnly="True">
                    <EditFormSettings Visible="False" />
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="IdProducto" VisibleIndex="6">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="Unidades" VisibleIndex="7">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="CostoUnitario" VisibleIndex="8">
                </dx:GridViewDataTextColumn>
            </Columns>
        </dx:ASPxGridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DB_A4212A_FashionClothesConnectionString %>" SelectCommand="SELECT Compras.IdCompras, Compras.IdCompras AS Expr1, Compras.IdUsuario, Compras.IdProveedores, Compras.FechaCompra, DetalleCompra.IdDetalleCompra, DetalleCompra.IdProducto, DetalleCompra.Unidades, DetalleCompra.CostoUnitario FROM Compras INNER JOIN DetalleCompra ON Compras.IdCompras = DetalleCompra.IdDetalleCompra"></asp:SqlDataSource>
    </p>
                            <table class="dx-justification" __designer:mapid="129" width="100%">
                                <tr __designer:mapid="12a">
                                    <td style="width: 50px" __designer:mapid="12b">&nbsp;</td>
                                    <td style="width: 295px" __designer:mapid="12c" class="dxfm-filterViewDateCell">
                                        <dx:BootstrapHyperLink ID="BootstrapHyperLink3" runat="server" NavigateUrl="~/Compras.aspx" Text="Agregar ventas">
                                        </dx:BootstrapHyperLink>
                                    </td>
                                    <td class="right" __designer:mapid="12e" style="width: 356px">
                                        <dx:BootstrapHyperLink ID="BootstrapHyperLink4" runat="server" NavigateUrl="~/Default.aspx" Text="Inicio">
                                        </dx:BootstrapHyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    </td>
                                </tr>
                            </table>
                            <p>
    </p>
    <p>
    </p>
</asp:Content>
