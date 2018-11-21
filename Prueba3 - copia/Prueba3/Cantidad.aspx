<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Cantidad.aspx.cs" Inherits="Prueba3.Cantidad" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

   <link href="css1/bootstrap.min.css" type="text/css" rel="Stylesheet" />
    
    <%var id = int.Parse(Request.QueryString["id"].ToString());
        var vender = new Prueba3.N1().Productos.Where(st => st.IdProductos == id).ToList().First(); %>
    <br />
    <br />
    
       <div class="container" style="width:80%;  margin-left:10%; margin-right:10%; background-color:beige; border:solid; border-style:solid;">
        <br />
           <br />
        <br />
           <div class="row">
               <div class="col-4">

               </div>
               <div class="col-4">
              <div class="card">
              <div class="card-body">
                  <h1 class="text-center"><%= vender.Nombre %></h1> 
              </div>
              <div class="card-img img-thumbnail mb-1 mt-1" style="background-color: black; width: 100%; height:200px" ">
              </div>
              <div class="card-footer">
                <div class="row">
                    <div class="col-sm-12 col-md-6">
                    <h1>Categoria: <%= vender.CategoriaProducto.Nombre %></h1>
                    </div>
                    <div class=" col-sm-12 col-md-6">
                    <h1>Precio: $<%= vender.PrecioVenta %></h1>
                    </div>
                  </div>  
                 </div>
                  <br />
               </div>
               <div class="col-4">
               </div>
               </div>
               </div>
               <br />
               <br />
           <center>
          
           Cantidad: <asp:TextBox ID="txtCantidad" runat="server"></asp:TextBox>
               <br />
               <br />
               <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCantidad" ErrorMessage="*" ForeColor="Red" ValidateRequestMode="Enabled"></asp:RequiredFieldValidator>
           <br />
               <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtCantidad" ErrorMessage="Ingrese solo números" ForeColor="Red" ValidationExpression="^\d+$"></asp:RegularExpressionValidator>
           <br />
           <asp:Button CssClass="btn btn-block btn-info" Width="30%" ID="btnCantidad" runat="server" Text="Agregar y seguir comprando" OnClick="BtnCantidad_Click" />
               
           <a href="Finalizar.aspx" style=" width:30%; margin-top:-10%;" class="btn btn-block btn-info" > Efectuar Compra!</a>

           </center>
         
     <br />
      <br />
    <br />
</asp:Content>
