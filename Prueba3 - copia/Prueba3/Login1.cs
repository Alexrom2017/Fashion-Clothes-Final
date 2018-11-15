using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace Prueba3
{
    public class Login1 : Conexion
    {
        private string usuarios;
        private string contraseña;

        public Login1()
        {
            usuarios = string.Empty;
            contraseña = string.Empty;
            this.sql = string.Empty;
        }
        public string usuario
        {
            get { return this.usuarios;}
            set { this.usuarios = value;}
        }

        public string pass
        {
            get { return this.contraseña; }
            set { this.contraseña = Encriptar.Encrypt(value); }
        }
        public bool Buscar()
        {
            bool resultado = false;
            this.sql = string.Format(@"SELECT IdUsuario FROM Usuarios WHERE NickName ='{0}' AND Contraseña='{1}'", this.usuarios, this.pass );
            this.comandosSQL = new SqlCommand(this.sql,this.cnn);
            this.cnn.Open();
            SqlDataReader Reg = null;
            Reg = this.comandosSQL.ExecuteReader();

            if (Reg.Read())
            {
                resultado = true;
                this.mensaje = "Bienvenido, Datos correctos";
            }
            else
            {
                this.mensaje = "Datos Incorrectos";
            }
            this.cnn.Close();
            return resultado;

        }

    }
}