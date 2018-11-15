<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Contactos.aspx.cs" Inherits="Prueba3.Formulario_web11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <!DOCTYPE html>

    <html>
        <head>
 
                  <link href="css1/bootstrap.min.css" type="text/css" rel="stylesheet"> 
        </head>
    
    <p>
    <asp:Panel ID="Panel1" runat="server" Height="457px">
        <br />
        <center>
        <div class="container">
        <asp:Label ID="Label1" runat="server" style="font-size:xx-large;" Text="Contáctanos"></asp:Label>
        <br />
        <asp:Label ID="Label2" runat="server" Text="5°Av.Sur Barrio El Calvario, Sensuntepeque, Cabañas." Font-Size="Large"></asp:Label>
            <br />
            <br />
            <iframe id="I1" allowfullscreen="" frameborder="0" name="I1" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d30987.503112290848!2d-88.64973337415057!3d13.872745427219417!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8f64bd2d9575edbb%3A0xc212434648ef85b7!2sSensuntepeque!5e0!3m2!1ses-419!2ssv!4v1537809186865" style="border-style: none; border-color: inherit; width:100%; height:200px; border-width: 0;" ></iframe>
            <br />
            <br />
            <br />
            <asp:Button ID="btnWhatsapp" runat="server" OnClick="btnWhatsapp_Click" />
            &nbsp;<asp:Button ID="btnGmail" runat="server" />
            <br />
            <br />
        <br />
        </div>
            </center>
        <br />

        
            </asp:Panel>
        
        </html>
</asp:Content>
