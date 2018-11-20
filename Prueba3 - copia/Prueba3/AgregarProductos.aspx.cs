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
            //Response.Write("<script> alert('El producto se registro exitosamente')</script>");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var conn = new N1();
            var m1 = new Productos()
            {     
                Nombre = TextNom.Text,
                Detalles = TextDesp.Text,
                PrecioCompra = Convert.ToDecimal(txtPrecioCompra.Text),
                IdProveedor = int.Parse(DDLProveedores.Text),
                PrecioVenta = Convert.ToDecimal(txtPrecioVenta.Text),
                IdCategoria = int.Parse(DDLCategoria.Text)

            };

            conn.Productos.Add(m1);
            if (conn.SaveChanges() > 0)
            {
                Response.Write("<script> alert('El producto se registro exitosamente')</script>");
                //Response.Redirect("~/AgregarProductos.aspx");
                TextNom.Text = "";
                TextDesp.Text = "";
               txtPrecioCompra.Text = "";
                //IdProveedor = int.Parse(DDLProveedores.Text),
               txtPrecioVenta.Text = "";
                //IdCategoria = int.Parse(DDLCategoria.Text)
            }
            

        }
    }
}