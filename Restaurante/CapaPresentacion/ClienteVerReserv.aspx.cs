using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

namespace Restaurante
{
    public partial class About : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void botonConsultar_Click(object sender, EventArgs e)
        {
            SqlConnection cn = new SqlConnection("Data Source=alanserver-1200.database.windows.net;DATABASE=Restaurante;uid=usuario;pwd=Aprendeaprogramar123;integrated security=false");

            cn.Open();

            SqlCommand cmd = new SqlCommand("Select a.Nombre, a.ApellidoP+' '+a.ApellidoM, a.Edad, b.Hora, b.Mesa_id from Cliente A inner join Reservacion B on A.Cliente_id=B.Cliente_id where a.Cliente_id = @ClienteId", cn);
            cmd.Parameters.AddWithValue("@ClienteId", int.Parse(txtNumeroReservacion.Text));
            SqlDataReader sa = cmd.ExecuteReader();
            while (sa.Read())
            {
                lblNombre.Text = sa.GetValue(0).ToString();
                lblApellidos.Text = sa.GetValue(1).ToString();
                lblEdad.Text = sa.GetValue(2).ToString();
                lblHorario.Text = sa.GetValue(3).ToString();
                lblMesa.Text = sa.GetValue(4).ToString();
            }

            cn.Close();
        }

    }
}