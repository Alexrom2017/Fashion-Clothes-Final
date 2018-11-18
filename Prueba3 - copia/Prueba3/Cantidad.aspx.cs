using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Prueba3
{
    public partial class Cantidad : System.Web.UI.Page
    {
        public N6 db = new N6();
        protected void Page_Load(object sender, EventArgs e)
        {
            //Label1.Text = Request.QueryString["id"];
        }

        protected void BtnCantidad_Click(object sender, EventArgs e)
        {
            if( Session["IdVenta"] == null)
            {
                Pedidos pedidos = new Prueba3.Pedidos()
                {
                    IdUsuario = DatosEstaticos.IDusuario,
                    FechaPedido = DateTime.Now,
                    Destino = "",
                    DireccionDestion = "",
                    Departamento = ""
                };

                db.Pedidos.Add(pedidos);

                var idProducto = Request.QueryString["id"];

                Productos producto = db.Productos.Find(int.Parse(idProducto));

                DetallePedido detalle = new DetallePedido()
                {
                    Productos = producto,
                    Pedidos = pedidos,
                    Cantidad = int.Parse(txtCantidad.Text),
                    PrecioUnitario = producto.PrecioVenta,
                    Descuento = producto.Promociones == null ? 0 : producto.Promociones.Descuento

                    // (Cantidad * PrecioUnitario) - ((Cantidad * PrecioUnitario)*(Descuento / 100))
                };

                db.DetallePedido.Add(detalle);

                if( db.SaveChanges() > 0)
                {
                    Session["IdVenta"] = pedidos.IdPedido;
                    Response.Redirect("Catalogo.aspx");
                }
                
            }
            else
            {

                var idProducto = Request.QueryString["id"];

                Pedidos pedidos = db.Pedidos.Find(int.Parse(Session["IdVenta"].ToString()));

                Productos producto = db.Productos.Find(int.Parse(idProducto));

                DetallePedido detalle = new DetallePedido()
                {
                    Productos = producto,
                    Pedidos = pedidos,
                    Cantidad = int.Parse(txtCantidad.Text),
                    PrecioUnitario = producto.PrecioVenta,
                    Descuento = producto.Promociones == null ? 0 : producto.Promociones.Descuento

                    // (Cantidad * PrecioUnitario) - ((Cantidad * PrecioUnitario)*(Descuento / 100))
                };

                db.DetallePedido.Add(detalle);

                if( db.SaveChanges() > 0)
                {
                    Response.Redirect("Catalogo.aspx");
                }

            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            txtCantidad.Text = "";
            Response.Redirect("~/Finalizar.aspx");
        }
    }
}