using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
namespace ProyectoCiberVentas.Vista.Bootstrap
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public string con = "123";
        public string use = "car";
        public void validarUsuario() {
            if (usuario.Text.Equals(use) && contraseña.Text.Equals(con)) {

                Response.Redirect("Administrador.aspx");
                mensaje.Text = "";
            }
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["connDB"].ConnectionString)) {

                SqlCommand cmd = new SqlCommand();

                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "validarUsuario";
                cmd.Parameters.Add("@user", SqlDbType.VarChar).Value = usuario.Text;
                cmd.Parameters.Add("@password", SqlDbType.VarChar).Value = contraseña.Text;
                cmd.Connection = conn;
                conn.Open();

                SqlDataReader dr = cmd.ExecuteReader();
               

                if (dr.Read())
                {

                    Response.Redirect("Home.aspx");
                    mensaje.Text = "";
                }
                else {

                    mensaje.Text = "Usuario y/o contraseña incorrectos";
                    usuario.Text = "";
                    contraseña.Text = "";
                }
            }
        
        }

        protected void ingreso_click(object sender, EventArgs e)
        {
            validarUsuario();
        }
    }
}