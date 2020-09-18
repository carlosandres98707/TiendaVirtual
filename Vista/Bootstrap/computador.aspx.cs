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
    public partial class computador : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void comprar_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(computadores.Text))
            {


                mensaje.Text = "No ingresaste ninguna cantidad";

            }
            else
            {
                using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["connDB"].ConnectionString))
                {

                    SqlCommand cmd = new SqlCommand();

                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.CommandText = "guardarProducto";
                    cmd.Parameters.Add("@nombre", SqlDbType.VarChar).Value = "Lenovo A340";
                    cmd.Parameters.Add("@precio", SqlDbType.BigInt).Value = 1587000;
                    cmd.Parameters.Add("@cantidad", SqlDbType.BigInt).Value = computadores.Text.Trim();

                    Int32 total = 1587000 * Int32.Parse(computadores.Text.Trim());
                    cmd.Parameters.Add("@total", SqlDbType.BigInt).Value = total;

                    cmd.Connection = conn;
                    conn.Open();
                    cmd.ExecuteNonQuery();
                    Response.Redirect("carrito.aspx");
                }
            }
        }
    }
}