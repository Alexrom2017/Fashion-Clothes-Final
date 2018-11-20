using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Prueba3
{
    public partial class AgregarProveedores : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void txtNombre6_TextChanged(object sender, EventArgs e)
        {
            var conn = new N1();
            var m1 = new Proveedores()
            {
                Nombre = TxtNombre.Text,
                Direccion = TxtDireccion.Text,
               Telefono = TxtTelefono.Text,
                Correo = TxtEmail.Text

            };

            conn.Proveedores.Add(m1);
            if (conn.SaveChanges() > 0)
            {
                //ClientScript.RegisterStartupScript(this.GetType(), "randontext", "hola()", true);
                Response.Write("<script> alert('Proveedor registrado')</script>");
                
                TxtNombre.Text = "";
                TxtDireccion.Text = "";
                TxtTelefono.Text = "";
                TxtEmail.Text = "";
                Response.Redirect("~/PreveedoresRegistrados.aspx");
            }
        }
    }
}