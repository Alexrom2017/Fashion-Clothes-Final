using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Prueba3
{
    public partial class CantidadCompras : System.Web.UI.Page
    {
        public N6 db = new N6();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnCantidad_Click(object sender, EventArgs e)
        {
            // GENERAR COMPRA DESDE EL ADMINITRADOR

            if (Session["IdCompra"] == null)
            {
                var proveedor = db.Proveedores.Where(c => c.IdProveedor == 1).First();
                Compras compra = new Prueba3.Compras()
                {
                    IdUsuario = DatosEstaticos.IDusuario,
                    FechaCompra = DateTime.Now,
                    // IdProveedores = DatosEstaticos.IDproveedor
                    IdProveedores = int.Parse(ListProveedor.SelectedValue),
                };

                db.Compras.Add(compra);

                var idProducto = Request.QueryString["id"];

                Productos producto = db.Productos.Find(int.Parse(idProducto));

                DetalleCompra detalle = new DetalleCompra()
                {
                    Productos = producto,
                    Compras = compra,
                    Unidades = int.Parse(txtCantidad.Text),
                    CostoUnitario = producto.PrecioVenta,
                    //Descuento = producto.Promociones == null ? 0 : producto.Promociones.Descuento

                    // (Cantidad * PrecioUnitario) - ((Cantidad * PrecioUnitario)*(Descuento / 100))
                };

                db.DetalleCompra.Add(detalle);

                if (db.SaveChanges() > 0)
                {
                    Session["IdCompra"] = compra.IdCompras;
                    Response.Redirect("Catalogo.aspx");
                }

            }
            else
            {

                var idProducto = Request.QueryString["id"];

                Compras compra = db.Compras.Find(int.Parse(Session["IdCompra"].ToString()));

                Productos producto = db.Productos.Find(int.Parse(idProducto));

                DetalleCompra detalle = new DetalleCompra()
                {
                    Productos = producto,
                    Compras = compra,
                    Unidades = int.Parse(txtCantidad.Text),
                    CostoUnitario = producto.PrecioVenta,
                    //Descuento = producto.Promociones == null ? 0 : producto.Promociones.Descuento

                    // (Cantidad * PrecioUnitario) - ((Cantidad * PrecioUnitario)*(Descuento / 100))
                };

                db.DetalleCompra.Add(detalle);

                if (db.SaveChanges() > 0)
                {
                    Response.Redirect("Catalogo.aspx");
                }

            }
        }
    }
}