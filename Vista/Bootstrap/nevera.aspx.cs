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
    public partial class nevera : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void comprar_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(neveras.Text))
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
                    cmd.Parameters.Add("@nombre", SqlDbType.VarChar).Value = "Samsung RT29 Gris";
                    cmd.Parameters.Add("@precio", SqlDbType.BigInt).Value = 2150000;
                    cmd.Parameters.Add("@cantidad", SqlDbType.BigInt).Value = neveras.Text.Trim();

                    Int32 total = 2150000 * Int32.Parse(neveras.Text.Trim());
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