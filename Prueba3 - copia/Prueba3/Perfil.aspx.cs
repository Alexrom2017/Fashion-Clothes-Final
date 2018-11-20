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
        N1 b1 = new N1();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (DatosEstaticos.TipoUser != "Cliente" && DatosEstaticos.logeado != true)
            {
                
                Response.Redirect("~/Iniciar Sesion.aspx");
            }
            else
            this.lblNombre.Text = (new N1().Usuarios.Where(st => st.IdUsuario == DatosEstaticos.IDusuario).First().Nombre)+ (new N1().Usuarios.Where(st => st.IdUsuario == DatosEstaticos.IDusuario).First().Apellido); ;
            this.lblNickname.Text = new N1().Usuarios.Where(st => st.IdUsuario == DatosEstaticos.IDusuario).First().NickName;
            this.lblDireccion.Text = new N1().Usuarios.Where(st => st.IdUsuario == DatosEstaticos.IDusuario).First().Direccion;
            this.lblCorreo.Text = new N1().Usuarios.Where(st => st.IdUsuario == DatosEstaticos.IDusuario).First().Correo;
            //this.lblCompras.Text = new N1().Pedidos.Where(st => st.IdUsuario == DatosEstaticos.IDusuario).First().IdUsuario.ToString();
            this.lblTelefono.Text = new N1().Usuarios.Where(st => st.IdUsuario == DatosEstaticos.IDusuario).First().Telefono;
            this.lblRol.Text = new N1().TiposdeUsuario.Where(st => st.Descripcion == DatosEstaticos.TipoUser).First().Descripcion;

        }

        protected void btnCerrarSesion_Click(object sender, EventArgs e)
        {
            DatosEstaticos.TipoUser = "nada";
            DatosEstaticos.logeado = false;
            Response.Redirect("~/Iniciar Sesion.aspx");
        }
    }
}