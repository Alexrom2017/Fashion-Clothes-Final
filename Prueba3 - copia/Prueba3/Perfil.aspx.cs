using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Prueba3
{
    public partial class Formulario_web1 : System.Web.UI.Page
    {
        N6 b1 = new N6();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (DatosEstaticos.TipoUser != "Cliente" && DatosEstaticos.logeado != true)
            {
                
                Response.Redirect("~/Iniciar Sesion.aspx");
            }
            else
            this.lblNombre.Text = (new N6().Usuarios.Where(st => st.IdUsuario == DatosEstaticos.IDusuario).First().Nombre)+ (new N6().Usuarios.Where(st => st.IdUsuario == DatosEstaticos.IDusuario).First().Apellido); ;
            this.lblDireccion.Text = new N6().Usuarios.Where(st => st.IdUsuario == DatosEstaticos.IDusuario).First().Direccion;
            this.lblCorreo.Text = new N6().Usuarios.Where(st => st.IdUsuario == DatosEstaticos.IDusuario).First().Correo;
            this.lblCompras.Text = new N6().Pedidos.Where(st => st.IdUsuario == DatosEstaticos.IDusuario).First().IdUsuario.ToString();
            this.lblTelefono.Text = new N6().Usuarios.Where(st => st.IdUsuario == DatosEstaticos.IDusuario).First().Telefono;
            this.lblRol.Text = new N6().TiposdeUsuario.Where(st => st.Descripcion == DatosEstaticos.TipoUser).First().Descripcion;

        }

        protected void btnCerrarSesion_Click(object sender, EventArgs e)
        {
            DatosEstaticos.TipoUser = "nada";
            DatosEstaticos.logeado = false;
            Response.Redirect("~/Iniciar Sesion.aspx");
        }
    }
}