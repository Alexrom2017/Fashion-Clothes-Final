<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Ventas Registradas.aspx.cs" Inherits="Prueba3.Ventas_Registradas" %>
<%@ Register assembly="DevExpress.Web.v18.1, Version=18.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
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
    </p>
    <p>
        <dx:ASPxHyperLink ID="ASPxHyperLink1" runat="server" NavigateUrl="~/Ventas.aspx" Text="Agregar ventas" />
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:DB_A4212A_FashionClothesConnectionString5 %>" DeleteCommand="DELETE FROM [Pedidos] WHERE [IdPedido] = @original_IdPedido AND [IdUsuario] = @original_IdUsuario AND [FechaPedido] = @original_FechaPedido AND [Destino] = @original_Destino AND [DireccionDestion] = @original_DireccionDestion AND (([Departamento] = @original_Departamento) OR ([Departamento] IS NULL AND @original_Departamento IS NULL))" InsertCommand="INSERT INTO [Pedidos] ([IdUsuario], [FechaPedido], [Destino], [DireccionDestion], [Departamento]) VALUES (@IdUsuario, @FechaPedido, @Destino, @DireccionDestion, @Departamento)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Pedidos]" UpdateCommand="UPDATE [Pedidos] SET [IdUsuario] = @IdUsuario, [FechaPedido] = @FechaPedido, [Destino] = @Destino, [DireccionDestion] = @DireccionDestion, [Departamento] = @Departamento WHERE [IdPedido] = @original_IdPedido AND [IdUsuario] = @original_IdUsuario AND [FechaPedido] = @original_FechaPedido AND [Destino] = @original_Destino AND [DireccionDestion] = @original_DireccionDestion AND (([Departamento] = @original_Departamento) OR ([Departamento] IS NULL AND @original_Departamento IS NULL))">
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
<p>
        &nbsp;</p>
</asp:Content>
