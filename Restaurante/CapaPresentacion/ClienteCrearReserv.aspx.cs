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

            SqlConnection cn = new SqlConnection("Data Source=alanserver-1200.database.windows.net;DATABASE=Restaurante;uid=usuario;pwd=Aprendeaprogramar123;integrated security=false");

            cn.Open();

            SqlCommand cmd = new SqlCommand("Select NumMesa, NUmSilla from Mesa", cn);
            SqlDataReader sa = cmd.ExecuteReader();
            while (sa.Read())
            {
                gvMesas.DataSource = sa.GetValue(0).ToString();
            }

            cn.Close();

        }

        protected void gvMesas_SelectedIndexChanged(object sender, EventArgs e)
        {
            string mesaSeleccionada;
            mesaSeleccionada = gvMesas.SelectedRow.Cells[0].Text;
            lblMesaElegida.Text = mesaSeleccionada;

        }

        protected void botonReservar_Click(object sender, EventArgs e)
        {

            SqlConnection cn = new SqlConnection("Data Source=alanserver-1200.database.windows.net;DATABASE=Restaurante;uid=usuario;pwd=Aprendeaprogramar123;integrated security=false");

            cn.Open();
            SqlCommand cmd = cn.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into Cliente (Cliente_id, Nombre, ApellidoP, ApellidoM, Edad) values (7325, '" + txtNombre.Text + "', '" + txtApellidos.Text + "', '" + txtApellidos.Text + "' ,'" + txtEdad.Text + "') insert into Reservacion (Cliente_id, Mesa_id, Fecha, Hora) values (7325, 3, 180621, '" + Convert.ToInt32(this.DropDownHorario.Text) + "')";

            cmd.ExecuteNonQuery();
            cn.Close();
        }
    }
}