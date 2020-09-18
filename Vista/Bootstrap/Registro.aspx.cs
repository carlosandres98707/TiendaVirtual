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
    public partial class Registro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox7_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["connDB"].ConnectionString))
            {

                SqlCommand cmd = new SqlCommand();

                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "guardarUsuario";
                cmd.Parameters.Add("@tarjeta", SqlDbType.BigInt).Value = cedula.Text.Trim();
                cmd.Parameters.Add("@nom", SqlDbType.VarChar).Value = nombre.Text.Trim();
                cmd.Parameters.Add("@apel", SqlDbType.VarChar).Value = apellido.Text.Trim();
                cmd.Parameters.Add("@tel", SqlDbType.BigInt).Value = telefono.Text.Trim();
                cmd.Parameters.Add("@corr", SqlDbType.VarChar).Value = correo.Text.Trim();
                cmd.Parameters.Add("@usu", SqlDbType.VarChar).Value = usuarios.Text.Trim();
                cmd.Parameters.Add("@con", SqlDbType.VarChar).Value = contraseñas.Text.Trim();
                cmd.Connection = conn;
                conn.Open();
                cmd.ExecuteNonQuery();
                Response.Redirect("Login.aspx");
            }
        }
    }
}