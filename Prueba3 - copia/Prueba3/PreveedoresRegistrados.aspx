<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="PreveedoresRegistrados.aspx.cs" Inherits="Prueba3.PreveedoresRegistrados" %>
<%@ Register assembly="DevExpress.Web.v18.1, Version=18.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" EnableTheming="True" KeyFieldName="IdProveedor" Theme="Material">
        <SettingsAdaptivity>
            <AdaptiveDetailLayoutProperties ColCount="1">
            </AdaptiveDetailLayoutProperties>
        </SettingsAdaptivity>
        <SettingsPager NumericButtonCount="20">
        </SettingsPager>
        <SettingsSearchPanel Visible="True" />
        <EditFormLayoutProperties ColCount="1">
        </EditFormLayoutProperties>
        <Columns>
            <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" VisibleIndex="0">
            </dx:GridViewCommandColumn>
            <dx:GridViewDataTextColumn FieldName="IdProveedor" ReadOnly="True" VisibleIndex="1">
                <EditFormSettings Visible="False" />
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Nombre" VisibleIndex="2">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Direccion" VisibleIndex="3">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Telefono" VisibleIndex="4">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Correo" VisibleIndex="5">
            </dx:GridViewDataTextColumn>
        </Columns>
    </dx:ASPxGridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:DB_A4212A_FashionClothesConnectionString %>" DeleteCommand="DELETE FROM [Proveedores] WHERE [IdProveedor] = @original_IdProveedor AND [Nombre] = @original_Nombre AND (([Direccion] = @original_Direccion) OR ([Direccion] IS NULL AND @original_Direccion IS NULL)) AND [Telefono] = @original_Telefono AND (([Correo] = @original_Correo) OR ([Correo] IS NULL AND @original_Correo IS NULL))" InsertCommand="INSERT INTO [Proveedores] ([Nombre], [Direccion], [Telefono], [Correo]) VALUES (@Nombre, @Direccion, @Telefono, @Correo)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Proveedores]" UpdateCommand="UPDATE [Proveedores] SET [Nombre] = @Nombre, [Direccion] = @Direccion, [Telefono] = @Telefono, [Correo] = @Correo WHERE [IdProveedor] = @original_IdProveedor AND [Nombre] = @original_Nombre AND (([Direccion] = @original_Direccion) OR ([Direccion] IS NULL AND @original_Direccion IS NULL)) AND [Telefono] = @original_Telefono AND (([Correo] = @original_Correo) OR ([Correo] IS NULL AND @original_Correo IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_IdProveedor" Type="Int32" />
            <asp:Parameter Name="original_Nombre" Type="String" />
            <asp:Parameter Name="original_Direccion" Type="String" />
            <asp:Parameter Name="original_Telefono" Type="String" />
            <asp:Parameter Name="original_Correo" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Nombre" Type="String" />
            <asp:Parameter Name="Direccion" Type="String" />
            <asp:Parameter Name="Telefono" Type="String" />
            <asp:Parameter Name="Correo" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Nombre" Type="String" />
            <asp:Parameter Name="Direccion" Type="String" />
            <asp:Parameter Name="Telefono" Type="String" />
            <asp:Parameter Name="Correo" Type="String" />
            <asp:Parameter Name="original_IdProveedor" Type="Int32" />
            <asp:Parameter Name="original_Nombre" Type="String" />
            <asp:Parameter Name="original_Direccion" Type="String" />
            <asp:Parameter Name="original_Telefono" Type="String" />
            <asp:Parameter Name="original_Correo" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
