using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Prueba3
{
    public partial class Usuarios_Registrados : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (DatosEstaticos.TipoUser != "Cliente" && DatosEstaticos.logeado != true)
            {

                Response.Redirect("~/Iniciar Sesion.aspx");
            }
            
        }
    }
}