<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Catalogo.aspx.cs" Inherits="Prueba3.Catalogo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <link href="css1/bootstrap.min.css" rel="stylesheet" />
    <br />
    <br />
    <br />
       <div class="container" style="width:80%;  margin-left:10%; margin-right:10%; background-color:lightskyblue; border:solid; border-style:solid;">
        <br />
        <asp:Label ID="BuscarP" runat="server" Text="Buscar: "></asp:Label>

        <asp:TextBox CssClass="form-control" Width="40%" ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <asp:Button CssClass="btn btn-block btn-lg btn-primary" Width="40%" ID="btnBuscar" runat="server" Text="Buscar" />
        <br />
        <a href="Finalizar.aspx>" style="float:right; width:40%; margin-top:-10%;" class="btn btn-block btn-info"> Efectuar Compra!</a>
       </div>
      <br />
   <div class="container" style="background-color:lightskyblue; border:solid; border-style:solid; width:80%;">
       <br />
        <br />
        <div class="row">

              <% 
    //abajo es para logueados, arriba es para un visitante del sitio
    if (Prueba3.DatosEstaticos.logeado == true)
    {
        if (Prueba3.DatosEstaticos.TipoUser == "Cliente")
        {
                  %>
                        <!--Opciones Cliente-->
       <% foreach (var producto in new Prueba3.N5().Productos.ToList())
        { %>
    <div class="col-md-4">
        <div class="card bg-light" style="width:80%;  margin-left:10%; margin-right:10%;">
            <div class="card-body">
           <h1 class="text-center"><%= producto.Nombre %></h1>   
            </div>    
            <div class="card-img img-thumbnail mb-1 mt-1" style="background-color: black; width: 100%; height:200px">
                <asp:Image ID="Image1" runat="server" />
            </div>
            <div class="card-footer">
                <div class="row">
                    <div class="col-sm-12 col-md-6">
                    <h1>Categoria: <%= producto.CategoriaProducto.Nombre %></h1>
                    </div>
                    <div class=" col-sm-12 col-md-6">
                    <h1>Precio: $<%= producto.PrecioVenta %></h1>
                    </div>
                </div>      
                <hr />
                <a href="Cantidad.aspx?id=<%= producto.IdProductos %>"  class="btn btn-block btn-info"> Comprar!</a>
                
            </div>
            </div>
            <br />
         </div>
            <%} %>
          <%}
    else if (Prueba3.DatosEstaticos.TipoUser == "Administrador")
    {%>                      <!--Opciones admin-->
          <% foreach (var producto in new Prueba3.N5().Productos.ToList())
        { %>
    <div class="col-md-4">
        <div class="card bg-light" style="width:80%;  margin-left:10%; margin-right:10%;">
            <div class="card-body">
            <%--<asp:Label ID="NombreProducto" runat="server" Text="Label"></asp:Label>--%>
            <%--<% NombreProducto.Text = producto.Nombre;%>--%>
           <h1 class="text-center"><%= producto.Nombre %></h1>   
            </div>    
            <div class="card-img img-thumbnail mb-1 mt-1" style="background-color: black; width: 100%; height:200px">
                <asp:Image ID="Image2" runat="server" />
            </div>
            <div class="card-footer">
                <div class="row">
                    <div class="col-sm-12 col-md-6">
                    <h1>Categoria: <%= producto.CategoriaProducto.Nombre %></h1>
                    </div>
                    <div class=" col-sm-12 col-md-6">
                    <h1>Precio: $<%= producto.PrecioVenta %></h1>
                    </div>
                </div>      
                <hr />
                <%--<asp:HyperLink ID="HyperLink1" CssClass="btn card-link btn-block" runat="server">Comprar</asp:HyperLink>
                <% HyperLink1.NavigateUrl = "Cantidad.aspx?id=" + producto.IdProductos;%>--%>
                <a href="Cantidad.aspx?id=<%= producto.IdProductos %>"  class="btn btn-block btn-info"> Comprar!</a>    
                <a href="Compras.aspx?id=<%= producto.IdProductos %>"  class="btn btn-block btn-info"> Añadir mas productos!</a>
              </div>
            </div>
            <br />
         </div>
          <% }
    } else
    { %>
         <!--  <li><a href="Perfil.aspx">logeate o comes kk</a></li>-->
          <% foreach (var producto in new Prueba3.N5().Productos.ToList())
        { %>
    <div class="col-md-4">
        <div class="card bg-light" style="width:80%;  margin-left:10%; margin-right:10%;">
            <div class="card-body">
            <%--<asp:Label ID="NombreProducto" runat="server" Text="Label"></asp:Label>--%>
            <%--<% NombreProducto.Text = producto.Nombre;%>--%>
           <h1 class="text-center"><%= producto.Nombre %></h1>   
            </div>    
            <div class="card-img img-thumbnail mb-1 mt-1" style="background-color: black; width: 100%; height:200px">
                <asp:Image ID="Image3" runat="server" />
            </div>
            <div class="card-footer">
                <div class="row">
                    <div class="col-sm-12 col-md-6">
                    <h1>Categoria: <%= producto.CategoriaProducto.Nombre %></h1>
                    </div>
                    <div class=" col-sm-12 col-md-6">
                    <h1>Precio: $<%= producto.PrecioVenta %></h1>
                    </div>
                </div>      
                <hr />
                <%--<asp:HyperLink ID="HyperLink1" CssClass="btn card-link btn-block" runat="server">Comprar</asp:HyperLink>
                <% HyperLink1.NavigateUrl = "Cantidad.aspx?id=" + producto.IdProductos;%>--%>
                <a href="Cantidad.aspx?id=<%= producto.IdProductos %>"  class="btn btn-block btn-info"> Comprar!</a>
              
            </div>
            </div>
            <br />
         </div>
                   <% }%>
                <% }%>
             <% }%>
      

    
       </div> 
     </div>
    <br />
    <br />
  
</asp:Content>

 

