<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Productos Registrados.aspx.cs" Inherits="Prueba3.Formulario_web3" %>
<%@ Register assembly="DevExpress.Web.v18.1, Version=18.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.Bootstrap.v18.1, Version=18.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.Bootstrap" tagprefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <div class="col-md-8">
                        <asp:Panel ID="Panel1" runat="server">
                            <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" KeyFieldName="IdProductos" Theme="Material">
                                <SettingsAdaptivity>
                                    <AdaptiveDetailLayoutProperties ColCount="1">
                                    </AdaptiveDetailLayoutProperties>
                                </SettingsAdaptivity>
                                <SettingsPager Visible="False">
                                </SettingsPager>
                                <SettingsSearchPanel Visible="True" />
                                <EditFormLayoutProperties ColCount="1">
                                </EditFormLayoutProperties>
                                <Columns>
                                    <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" VisibleIndex="0">
                                    </dx:GridViewCommandColumn>
                                    <dx:GridViewDataTextColumn FieldName="IdProductos" ReadOnly="True" VisibleIndex="1">
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn FieldName="Nombre" VisibleIndex="2">
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn FieldName="PrecioCompra" VisibleIndex="3">
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn FieldName="PrecioVenta" VisibleIndex="4">
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn FieldName="Detalles" VisibleIndex="5">
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn FieldName="IdCategoria" VisibleIndex="6">
                                    </dx:GridViewDataTextColumn>
                                </Columns>
                            </dx:ASPxGridView>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:DB_A4212A_FashionClothesConnectionString %>" DeleteCommand="DELETE FROM [Productos] WHERE [IdProductos] = @original_IdProductos AND [Nombre] = @original_Nombre AND [PrecioCompra] = @original_PrecioCompra AND [PrecioVenta] = @original_PrecioVenta AND [Detalles] = @original_Detalles AND (([IdCategoria] = @original_IdCategoria) OR ([IdCategoria] IS NULL AND @original_IdCategoria IS NULL))" InsertCommand="INSERT INTO [Productos] ([IdProductos], [Nombre], [PrecioCompra], [PrecioVenta], [Detalles], [IdCategoria]) VALUES (@IdProductos, @Nombre, @PrecioCompra, @PrecioVenta, @Detalles, @IdCategoria)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Productos]" UpdateCommand="UPDATE [Productos] SET [Nombre] = @Nombre, [PrecioCompra] = @PrecioCompra, [PrecioVenta] = @PrecioVenta, [Detalles] = @Detalles, [IdCategoria] = @IdCategoria WHERE [IdProductos] = @original_IdProductos AND [Nombre] = @original_Nombre AND [PrecioCompra] = @original_PrecioCompra AND [PrecioVenta] = @original_PrecioVenta AND [Detalles] = @original_Detalles AND (([IdCategoria] = @original_IdCategoria) OR ([IdCategoria] IS NULL AND @original_IdCategoria IS NULL))">
                                <DeleteParameters>
                                    <asp:Parameter Name="original_IdProductos" Type="Int32" />
                                    <asp:Parameter Name="original_Nombre" Type="String" />
                                    <asp:Parameter Name="original_PrecioCompra" Type="Decimal" />
                                    <asp:Parameter Name="original_PrecioVenta" Type="Decimal" />
                                    <asp:Parameter Name="original_Detalles" Type="String" />
                                    <asp:Parameter Name="original_IdCategoria" Type="Int32" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="IdProductos" Type="Int32" />
                                    <asp:Parameter Name="Nombre" Type="String" />
                                    <asp:Parameter Name="PrecioCompra" Type="Decimal" />
                                    <asp:Parameter Name="PrecioVenta" Type="Decimal" />
                                    <asp:Parameter Name="Detalles" Type="String" />
                                    <asp:Parameter Name="IdCategoria" Type="Int32" />
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="Nombre" Type="String" />
                                    <asp:Parameter Name="PrecioCompra" Type="Decimal" />
                                    <asp:Parameter Name="PrecioVenta" Type="Decimal" />
                                    <asp:Parameter Name="Detalles" Type="String" />
                                    <asp:Parameter Name="IdCategoria" Type="Int32" />
                                    <asp:Parameter Name="original_IdProductos" Type="Int32" />
                                    <asp:Parameter Name="original_Nombre" Type="String" />
                                    <asp:Parameter Name="original_PrecioCompra" Type="Decimal" />
                                    <asp:Parameter Name="original_PrecioVenta" Type="Decimal" />
                                    <asp:Parameter Name="original_Detalles" Type="String" />
                                    <asp:Parameter Name="original_IdCategoria" Type="Int32" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                            <br />
                            <table class="dx-justification">
                                <tr>
                                    <td style="width: 50px">&nbsp;</td>
                                    <td style="width: 324px">
                                        <dx:BootstrapHyperLink ID="BootstrapHyperLink2" runat="server" NavigateUrl="~/AgregarProductos.aspx" Text="Agregar Producto">
                                        </dx:BootstrapHyperLink>
                                    </td>
                                    <td class="right">
                                        <dx:BootstrapHyperLink ID="BootstrapHyperLink1" runat="server" NavigateUrl="~/Catalogo.aspx" Text="Catalogo">
                                        </dx:BootstrapHyperLink>
                                    </td>
                                    <td class="right">&nbsp;</td>
                                </tr>
                            </table>
                            <br />
                        </asp:Panel>
                        <br />
                        <br />
                      

                        </div>
    </asp:Content>
