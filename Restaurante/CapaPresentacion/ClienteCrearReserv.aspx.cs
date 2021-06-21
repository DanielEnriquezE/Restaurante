using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Threading.Tasks;
using System.Data.SqlClient;

namespace Restaurante.CapaPresentacion
{
    
    public partial class ClienteCrearReserv : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            Response.Write("<script>alert('No hay mesa')</script>");


        }

        protected void gvMesas_SelectedIndexChanged(object sender, EventArgs e)
        {
            int rowindex = Convert.ToInt32(gvMesas.SelectedIndex);

            lblMesaElegida.Text = gvMesas.Rows[rowindex].Cells[1].Text;

        }



        protected void botonReservar_Click(object sender, EventArgs e)
        {

            int rowindex = Convert.ToInt32(gvMesas.SelectedIndex);

            lblMesaElegida.Text = gvMesas.Rows[rowindex].Cells[1].Text;

            SqlConnection cn = new SqlConnection("Data Source=alanserver-1200.database.windows.net;DATABASE=Restaurante;uid=usuario;pwd=Aprendeaprogramar123;integrated security=false");

            cn.Open();
            SqlCommand cmd = cn.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into Cliente (Cliente_id, Nombre, ApellidoP, ApellidoM, Edad) values (7325, '" + txtNombre.Text + "', '" + txtApellidoP.Text + "', '" + txtApellidoM.Text + "' ,'" + txtEdad.Text + "') insert into Reservacion (Cliente_id, Mesa_id, Fecha, Hora) values (7325, '"+ gvMesas.Rows[rowindex].Cells[1].Text + "', '"+fecha.Text.Substring(0,4) + fecha.Text.Substring(5, 2) + fecha.Text.Substring(8, 2)+ "', '" + DropDownHorario.Text.Substring(0, 2) + "00"+"')";
            cmd.ExecuteNonQuery();
            cn.Close();
        }

        protected void fecha_TextChanged(object sender, EventArgs e)
        {
            DropDownHorario.Enabled = true;
                                    
            if(Existe(fecha.Text.Substring(0, 4) + fecha.Text.Substring(5, 2) + fecha.Text.Substring(8, 2))==true)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('no hay mesa')", true);
            }
            else{
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record Inserted Successfully')", true);
            }
            


        }
        public bool Existe(string fecha)
        {
            string sql = @"SELECT COUNT(*) FROM Reservacion WHERE Fecha = @fechaSeleccionada";

            using (SqlConnection conn = new SqlConnection("Data Source=alanserver-1200.database.windows.net;DATABASE=Restaurante;uid=usuario;pwd=Aprendeaprogramar123;integrated security=false"))
            {
                conn.Open();

                SqlCommand cmd = new SqlCommand(sql, conn);
                cmd.Parameters.AddWithValue("@fechaSeleccionada", fecha);

                int count = Convert.ToInt32(cmd.ExecuteScalar());

                return count == 4;


            }
        }
        protected void BuscarMesa(string fecha, string hora)
        {

        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
    }
}