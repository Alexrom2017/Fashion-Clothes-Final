using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Prueba3
{
    public partial class Finalizar : System.Web.UI.Page
    {
        public N6 db = new N6();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (Session["IdVenta"] == null)
            {
                Response.Redirect("Catalogo.aspx");
            }
            else
            {
                var id = int.Parse(Session["IdVenta"].ToString());

                var pedido = db.Pedidos.Find(id);

                pedido.Destino = txtDestino.Text;
                pedido.DireccionDestion = txtDireccion.Text;
                pedido.Departamento = txtDepartamento.Text;

                int cont = pedido.DetallePedido.ToList().Count;
                int i = 0;

                foreach (var item in pedido.DetallePedido)
                {
                    var stock = db.Stock.Where(c => c.IdProducto == item.Productos.IdProductos).First();
                    stock.CantidadTotal = stock.CantidadTotal - item.Cantidad;
                    if (db.SaveChanges() > 0)
                    {
                        i++;
                    }
                }

                if (cont == i)
                {
                    Session["IdVenta"] = null;
                    Response.Redirect("Catalogo.aspx");
                }
            }
        }
    }
}