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

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            if (Session["IdCompra"] == null)
            {
                Response.Redirect("Catalogo.aspx");
            }
            else
            {
                var id = int.Parse(Session["IdCompra"].ToString());

                var compra = dbproductos.Compras.Find(id);

                int cont = compra.DetalleCompra.ToList().Count;
                int i = 0;

                foreach (var item in compra.DetalleCompra)
                {
                    var stock = dbproductos.Stock.Where(c => c.IdProducto == item.Productos.IdProductos).First();

                    stock.CantidadTotal = stock.CantidadTotal + item.Unidades;


                    if (dbproductos.SaveChanges() > 0)
                    {
                        i++;
                    }
                }

                if (cont == i)
                {
                    Session["IdCompra"] = null;
                    Response.Redirect("Catalogo.aspx");
                }
            }
        }
    }
    
}