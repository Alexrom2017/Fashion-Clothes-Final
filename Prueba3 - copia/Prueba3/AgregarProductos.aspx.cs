using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Prueba3
{
    public partial class AgregarProductos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            foreach(var a in new N5().CategoriaProducto.ToList())
            DDLCategoria.Items.Add(a.Nombre.ToString());
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var conn = new N5();
            var n2 = new Productos()
            {
                IdProductos = 50, 
                Nombre = TextNom.Text,
                PrecioCompra = Convert.ToDecimal(txtPrecioCompra.Text),
                PrecioVenta = Convert.ToDecimal(txtPrecioVenta.Text),
                IdCategoria = new N5().CategoriaProducto.Where(ST => ST.Nombre == DDLCategoria.SelectedItem.Text).First().IdCategoria
            };
            conn.Productos.Add(n2);
            conn.SaveChanges();
            Response.Redirect("~/AgregarProductos.aspx");
        }
    }
}