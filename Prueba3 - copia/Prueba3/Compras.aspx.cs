using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Prueba3
{
    public partial class Compras1 : System.Web.UI.Page
    {
        public N6 db = new N6();
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (DatosEstaticos.TipoUser != "Cliente" && DatosEstaticos.logeado != true)
            //{

            //    Response.Redirect("~/Iniciar Sesion.aspx");
            //}
            
        }

        protected void BtnAgregar_Click(object sender, EventArgs e)
        {
           


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var conn = new N6();
            var compras = new Compras()
            {
                //IdEmpleados = Convert.ToInt16(TxtIdEmpleados.Text),
                //IdProveedores = Convert.ToInt32(TxtIdProveedores.Text),
                //FechaCompra = Convert.ToDateTime(TxtFecha.Text),
            };
            conn.Compras.Add(compras);
            conn.SaveChanges();
            Response.Redirect("~/Compras Registradas.aspx");

            //if (DatosEstaticos.Comprasx.ToString() == null)
            //{
            //    Response.Redirect("Catalogo.aspx");
            //}
            //else
            //{
            //    var id = int.Parse(DatosEstaticos.Comprasx.ToString().ToString());

            //    var compras = db.Compras.Find(id);

            //    compras.IdCompras = Convert.ToUInt16(TxtProductos.Text);
            //    compras.IdCompras = new N6().DetalleCompra.Where(ST => ST.Unidades == Convert.ToUInt16(TxtCantidad.Text)).First().IdDetalleCompra;  
            //    compras.FechaCompra = Convert.ToDateTime(TxtFecha.Text);

            //    int cont = compras.DetalleCompra.ToList().Count;
            //    int i = 0;

            //    foreach (var item in compras.DetalleCompra)
            //    {
            //        var stock = db.Stock.Where(c => c.IdProducto == item.Productos.IdProductos).First();

            //        stock.CantidadTotal = stock.CantidadTotal + item.Unidades;


            //        if (db.SaveChanges() > 0)
            //        {
            //            i++;
            //        }
            //    }

            //    if (cont == i)
            //    {

            //        Response.Redirect("~/Compras Registradas.aspx");
            //    }
            //}
        }

        protected void BtnCancenlarCompra_Click(object sender, EventArgs e)
        {

        }
    }
}