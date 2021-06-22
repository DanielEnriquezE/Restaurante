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
        String fechaSeleccionada;
        String horaSeleccionada;
        int numeroReservacionRandom;
        



        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {

            fechaSeleccionada = fecha.Text.Substring(0, 4) + fecha.Text.Substring(5, 2) + fecha.Text.Substring(8, 2);
            horaSeleccionada = DropDownHorario.Text.Substring(0, 2) + "00";

            SqlConnection cn = new SqlConnection("Data Source=alanserver-1200.database.windows.net;DATABASE=Restaurante;uid=usuario;pwd=Aprendeaprogramar123;integrated security=false");

            cn.Open();

            SqlCommand cmd = new SqlCommand("Select NumMesa, NUmSilla from Mesa where not exists (select 1 from Reservacion where Reservacion.Mesa_id = Mesa.NumMesa and Fecha = @fechaSelect and Hora=@horaSelect)", cn);
            cmd.Parameters.AddWithValue("@fechaSelect", int.Parse(fechaSeleccionada));
            cmd.Parameters.AddWithValue("@horaSelect", int.Parse(horaSeleccionada));
            SqlDataAdapter sa = new SqlDataAdapter(cmd);
            DataTable tablaResult = new DataTable();
            sa.Fill(tablaResult);
            gvMesas.DataSource = tablaResult;
            gvMesas.DataBind();


            cn.Close();

            /*SqlDataSource1.SelectCommand= "Select NumMesa, NUmSilla from Mesa where not exists (select 1 from Reservacion where Reservacion.Mesa_id = Mesa.NumMesa and Fecha = @fechaSeleccionada and Hora= @horaSeleccionada)";*/
            validarNumeroMesa.Enabled = true;
        }

        protected void gvMesas_SelectedIndexChanged(object sender, EventArgs e)
        {
            int rowindex = Convert.ToInt32(gvMesas.SelectedIndex);

            lblMesaElegida.Text = gvMesas.Rows[rowindex].Cells[1].Text;
            botonReservar.Enabled = true;
        }



        protected void botonReservar_Click(object sender, EventArgs e)
        {

            int rowindex = Convert.ToInt32(gvMesas.SelectedIndex);
            Random rnd = new Random();
            numeroReservacionRandom = rnd.Next(1000, 10000);


            lblMesaElegida.Text = gvMesas.Rows[rowindex].Cells[1].Text;

            SqlConnection cn = new SqlConnection("Data Source=alanserver-1200.database.windows.net;DATABASE=Restaurante;uid=usuario;pwd=Aprendeaprogramar123;integrated security=false");

            cn.Open();
            SqlCommand cmd = cn.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into Cliente (Cliente_id, Nombre, ApellidoP, ApellidoM, Edad) values ('" + numeroReservacionRandom + "', '" + txtNombre.Text + "', '" + txtApellidoP.Text + "', '" + txtApellidoM.Text + "' ,'" + txtEdad.Text + "') insert into Reservacion (Cliente_id, Mesa_id, Fecha, Hora) values ('"+numeroReservacionRandom+"', '" + gvMesas.Rows[rowindex].Cells[1].Text + "', '"+fecha.Text.Substring(0,4) + fecha.Text.Substring(5, 2) + fecha.Text.Substring(8, 2)+ "', '" + DropDownHorario.Text.Substring(0, 2) + "00"+"')";
            cmd.ExecuteNonQuery();
            cn.Close();

            txtNombre.Text = "";
            txtApellidoP.Text = "";
            txtApellidoM.Text = "";
            txtEdad.Text = "";
            fecha.Text = "";

            Session["crearReserv"] = numeroReservacionRandom;

            Response.Redirect("VentanaConfirmarReservacion.aspx");

        }

        protected void fecha_TextChanged(object sender, EventArgs e)
        {
            DropDownHorario.Enabled = true;
                                    
            


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

        protected void txtNombre_TextChanged(object sender, EventArgs e)
        {

        }
    }
}