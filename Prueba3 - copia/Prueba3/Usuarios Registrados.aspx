<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Usuarios Registrados.aspx.cs" Inherits="Prueba3.Usuarios_Registrados" %>
<%@ Register assembly="DevExpress.Web.v18.1, Version=18.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    &nbsp;</p>
    <p>
        <strong>
        <asp:Label ID="Label8" runat="server" Font-Size="X-Large" Text="Consultar registros"></asp:Label>
        </strong>
    </p>
<p>
    <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" KeyFieldName="IdUsuario" style="font-size: x-small" Theme="Material">
<SettingsAdaptivity>
<AdaptiveDetailLayoutProperties ColCount="1"></AdaptiveDetailLayoutProperties>
</SettingsAdaptivity>

        <SettingsSearchPanel Visible="True" />

<EditFormLayoutProperties ColCount="1"></EditFormLayoutProperties>
        <Columns>
            <dx:GridViewDataTextColumn FieldName="IdUsuario" ReadOnly="True" VisibleIndex="0">
                <EditFormSettings Visible="False" />
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Nombre" VisibleIndex="1">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Apellido" VisibleIndex="2">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="NickName" VisibleIndex="3">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Correo" VisibleIndex="4">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Direccion" VisibleIndex="5">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Telefono" VisibleIndex="6">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="IdImagen" VisibleIndex="7">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Tipo" VisibleIndex="8">
            </dx:GridViewDataTextColumn>
        </Columns>
    </dx:ASPxGridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DB_A4212A_FashionClothesConnectionString %>" SelectCommand="select dbo.Usuarios.IdUsuario,
	   dbo.Usuarios.Nombre,
	   dbo.Usuarios.Apellido,
	   dbo.Usuarios.NickName,
	   dbo.Usuarios.Correo, 
	   dbo.Usuarios.Direccion,
	   dbo.Usuarios.Telefono,
	   dbo.Usuarios.IdImagen,
	   dbo.TiposdeUsuario.Descripcion As Tipo
from dbo.Usuarios
inner join dbo.TiposdeUsuario on
dbo.Usuarios.TipoUsuaro = dbo.TiposdeUsuario.IdTipos"></asp:SqlDataSource>
</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</asp:Content>
