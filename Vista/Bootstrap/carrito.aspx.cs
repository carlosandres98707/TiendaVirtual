using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI.WebControls;
namespace ProyectoCiberVentas.Vista.Bootstrap
{
    public partial class carrito : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {
                cargarDatos();
                sumarProdcuto();
               
            }

        }
        public void cargarDatos() {
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["connDB"].ConnectionString))
            {

                SqlCommand cmd = new SqlCommand();

                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "mostrarProducto1";
                cmd.Connection = conn;
                conn.Open();
                usuario.DataSource = cmd.ExecuteReader();
                usuario.DataBind();

                

               

            }
        }
        public void sumarProdcuto() {
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["connDB"].ConnectionString))
            {

                SqlCommand cmd = new SqlCommand();

                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "sumarProductos";
                cmd.Connection = conn;
                conn.Open();




                try {
                    int suma = Convert.ToInt32(cmd.ExecuteScalar());

                    mensaje.Text = suma.ToString();
                } catch (Exception e) {

                    mensaje.Text = "0";
                
                };

                    
                
                
                   
              

                
                



            }
        }
        protected void usuario_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void usuario_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            GridViewRow row = (GridViewRow)usuario.Rows[e.RowIndex];
            eliminarProducto(usuario.DataKeys[e.RowIndex].Value.ToString());
            cargarDatos();
            sumarProdcuto();
            
        }


        public void eliminarProducto(string idproducto) {

            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["connDB"].ConnectionString))
            {

                SqlCommand cmd = new SqlCommand();

                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "eliminarProducto";
                cmd.Parameters.Add("@idproducto", SqlDbType.Int).Value = Int64.Parse(idproducto);
                cmd.Connection = conn;
                conn.Open();
                cmd.ExecuteNonQuery();
            }
        }

        protected void usuario_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }
    }
}