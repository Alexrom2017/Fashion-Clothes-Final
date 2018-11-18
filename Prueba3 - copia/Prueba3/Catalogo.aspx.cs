using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Prueba3
{
   
    public partial class Catalogo : System.Web.UI.Page
    {
        
        public N6 dbproductos = new N6();
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void BtnFinalizar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Finalizar.aspx");
        }
    }
}