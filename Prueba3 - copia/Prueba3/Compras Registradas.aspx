<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Compras Registradas.aspx.cs" Inherits="Prueba3.Compras_Registradas" %>
<%@ Register assembly="DevExpress.Web.v18.1, Version=18.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.Bootstrap.v18.1, Version=18.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.Bootstrap" tagprefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
        <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" KeyFieldName="IdPedido" Theme="Material">
<SettingsAdaptivity>
<AdaptiveDetailLayoutProperties ColCount="1"></AdaptiveDetailLayoutProperties>
</SettingsAdaptivity>

            <SettingsSearchPanel Visible="True" />

<EditFormLayoutProperties ColCount="1"></EditFormLayoutProperties>
            <Columns>
                <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" VisibleIndex="0">
                </dx:GridViewCommandColumn>
                <dx:GridViewDataTextColumn FieldName="IdPedido" ReadOnly="True" VisibleIndex="1">
                    <EditFormSettings Visible="False" />
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="IdUsuario" VisibleIndex="2">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataDateColumn FieldName="FechaPedido" VisibleIndex="3">
                </dx:GridViewDataDateColumn>
                <dx:GridViewDataTextColumn FieldName="Destino" VisibleIndex="4">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="DireccionDestion" VisibleIndex="5">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="Departamento" VisibleIndex="6">
                </dx:GridViewDataTextColumn>
            </Columns>
        </dx:ASPxGridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:DB_A4212A_FashionClothesConnectionString4 %>" DeleteCommand="DELETE FROM [Pedidos] WHERE [IdPedido] = @original_IdPedido AND [IdUsuario] = @original_IdUsuario AND [FechaPedido] = @original_FechaPedido AND [Destino] = @original_Destino AND [DireccionDestion] = @original_DireccionDestion AND (([Departamento] = @original_Departamento) OR ([Departamento] IS NULL AND @original_Departamento IS NULL))" InsertCommand="INSERT INTO [Pedidos] ([IdUsuario], [FechaPedido], [Destino], [DireccionDestion], [Departamento]) VALUES (@IdUsuario, @FechaPedido, @Destino, @DireccionDestion, @Departamento)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Pedidos]" UpdateCommand="UPDATE [Pedidos] SET [IdUsuario] = @IdUsuario, [FechaPedido] = @FechaPedido, [Destino] = @Destino, [DireccionDestion] = @DireccionDestion, [Departamento] = @Departamento WHERE [IdPedido] = @original_IdPedido AND [IdUsuario] = @original_IdUsuario AND [FechaPedido] = @original_FechaPedido AND [Destino] = @original_Destino AND [DireccionDestion] = @original_DireccionDestion AND (([Departamento] = @original_Departamento) OR ([Departamento] IS NULL AND @original_Departamento IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_IdPedido" Type="Int32" />
                <asp:Parameter Name="original_IdUsuario" Type="Int32" />
                <asp:Parameter DbType="Date" Name="original_FechaPedido" />
                <asp:Parameter Name="original_Destino" Type="String" />
                <asp:Parameter Name="original_DireccionDestion" Type="String" />
                <asp:Parameter Name="original_Departamento" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="IdUsuario" Type="Int32" />
                <asp:Parameter DbType="Date" Name="FechaPedido" />
                <asp:Parameter Name="Destino" Type="String" />
                <asp:Parameter Name="DireccionDestion" Type="String" />
                <asp:Parameter Name="Departamento" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="IdUsuario" Type="Int32" />
                <asp:Parameter DbType="Date" Name="FechaPedido" />
                <asp:Parameter Name="Destino" Type="String" />
                <asp:Parameter Name="DireccionDestion" Type="String" />
                <asp:Parameter Name="Departamento" Type="String" />
                <asp:Parameter Name="original_IdPedido" Type="Int32" />
                <asp:Parameter Name="original_IdUsuario" Type="Int32" />
                <asp:Parameter DbType="Date" Name="original_FechaPedido" />
                <asp:Parameter Name="original_Destino" Type="String" />
                <asp:Parameter Name="original_DireccionDestion" Type="String" />
                <asp:Parameter Name="original_Departamento" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
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
