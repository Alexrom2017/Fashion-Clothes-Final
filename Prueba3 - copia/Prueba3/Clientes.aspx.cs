using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Data.SqlClient;
using System.Data;

namespace Prueba3
{
    public partial class Clientes : System.Web.UI.Page
    {
        string cadenaConexion = @"Data Source=sql7003.site4now.net;Persist Security Info=True;User ID=DB_A4212A_FashionClothes_admin;Password=75082282Alex";

        protected void Page_Load(object sender, EventArgs e)
        {
            
            
        }

        protected void btnbuscar_Click(object sender, EventArgs e)
        {

        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
          
            if (String.IsNullOrWhiteSpace(txtContraseña.Text) || String.IsNullOrWhiteSpace(txtConfirmarContraseña.Text))
            {
               LblContraseña.Text = "Ingrese una contraseña";
            }
            //else if (txtContraseña.Text != txtConfirmarContraseña.Text)
            //{
            //    LblContraseña.Text = "Los datos no coinciden";
            //}          
            else
            {
                var conn = new N6();
                SqlConnection n2 = new SqlConnection(cadenaConexion);

                int i = conn.Usuarios.Where(c => c.NickName.ToUpper() == txtNickName.Text.ToUpper()).ToList().Count;

                if (i != 0)
                {
                    LblUsuario.Text = "Ingrese otro nombre de usuario";
                }
                else
                {
                    var User1 = new Usuarios()
                    {

                        IdEmpresa = 1,
                        Nombre = txtNombre.Text,
                        Apellido = txtApellido.Text,
                        NickName = txtNickName.Text,
                        Contraseña = Encriptar.Encrypt(txtContraseña.Text),                        
                        TipoUsuaro = 1,
                        Direccion = txtDireccion.Text,
                        Correo = txtCorreo.Text,
                        Telefono = txtTelefono.Text
                    };

                    var cmd = new SqlCommand(cadenaConexion);
                    int tamaño = FuploadImgen1.PostedFile.ContentLength;
                    byte[] ImagenOriginal = new byte[tamaño];

                    FuploadImgen1.PostedFile.InputStream.Read(ImagenOriginal, 0, tamaño);

                    //Bitmap imagenOriginalBinaria = new Bitmap(FuploadImgen.PostedFile.InputStream);

                    //Insertar en la base de datos

                    cmd.CommandText = "INSERT INTO Imagenes(Imagen) VALUES (@imagen)";
                    cmd.Parameters.Add("@imagen", SqlDbType.Image).Value = ImagenOriginal;

                    cmd.CommandType = CommandType.Text;
                    cmd.Connection = n2;
                    n2.Open();
                    cmd.ExecuteNonQuery();
                    conn.Usuarios.Add(User1);
                    conn.SaveChanges();
                    Response.Redirect("~/Iniciar Sesion.aspx");
                }

            }    


            ////****************************************************************************************************************************

        }

        protected void btnSubir_Click(object sender, EventArgs e)
        {
            
            ImgPreview.ImageUrl = ImagenX.subirImagen(FuploadImgen1);

        }
        public System.Drawing.Image Redimensionar(System.Drawing.Image ImagenOriginal, int Alto)
        {
            var Radio = (double)Alto / ImagenOriginal.Height;
            var NuevoAncho = (int)(ImagenOriginal.Width * Radio);
            var NuevoAlto = (int)(ImagenOriginal.Height * Radio);
            var NuevaImagen = new Bitmap(NuevoAncho, NuevoAlto);
            var g = Graphics.FromImage(NuevaImagen);
            g.DrawImage(ImagenOriginal, 0, 0, NuevoAncho, NuevoAlto);
            return NuevaImagen;
        }
    }
}