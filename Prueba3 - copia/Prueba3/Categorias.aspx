<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Categorias.aspx.cs" Inherits="Prueba3.Categorias" %>
<%@ Register assembly="DevExpress.Web.v18.1, Version=18.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" EnableTheming="True" KeyFieldName="IdCategoria" Theme="Material">
        <SettingsAdaptivity>
            <AdaptiveDetailLayoutProperties ColCount="1">
            </AdaptiveDetailLayoutProperties>
        </SettingsAdaptivity>
        <SettingsSearchPanel Visible="True" />
        <EditFormLayoutProperties ColCount="1">
        </EditFormLayoutProperties>
        <Columns>
            <dx:GridViewCommandColumn ShowEditButton="True" ShowNewButtonInHeader="True" VisibleIndex="0">
            </dx:GridViewCommandColumn>
            <dx:GridViewDataTextColumn FieldName="IdCategoria" ReadOnly="True" VisibleIndex="1">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Nombre" VisibleIndex="2">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Detalles" VisibleIndex="3">
            </dx:GridViewDataTextColumn>
        </Columns>
    </dx:ASPxGridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:DB_A4212A_FashionClothesConnectionString %>" DeleteCommand="DELETE FROM [CategoriaProducto] WHERE [IdCategoria] = @original_IdCategoria AND [Nombre] = @original_Nombre AND [Detalles] = @original_Detalles" InsertCommand="INSERT INTO [CategoriaProducto] ([IdCategoria], [Nombre], [Detalles]) VALUES (@IdCategoria, @Nombre, @Detalles)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [CategoriaProducto]" UpdateCommand="UPDATE [CategoriaProducto] SET [Nombre] = @Nombre, [Detalles] = @Detalles WHERE [IdCategoria] = @original_IdCategoria AND [Nombre] = @original_Nombre AND [Detalles] = @original_Detalles">
        <DeleteParameters>
            <asp:Parameter Name="original_IdCategoria" Type="Int32" />
            <asp:Parameter Name="original_Nombre" Type="String" />
            <asp:Parameter Name="original_Detalles" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="IdCategoria" Type="Int32" />
            <asp:Parameter Name="Nombre" Type="String" />
            <asp:Parameter Name="Detalles" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Nombre" Type="String" />
            <asp:Parameter Name="Detalles" Type="String" />
            <asp:Parameter Name="original_IdCategoria" Type="Int32" />
            <asp:Parameter Name="original_Nombre" Type="String" />
            <asp:Parameter Name="original_Detalles" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
