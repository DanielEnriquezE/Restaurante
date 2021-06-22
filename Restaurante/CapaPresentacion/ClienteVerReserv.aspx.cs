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
            lblInforma.Text = "Se encontró la siguiente coincidencia";
            SqlConnection cn = new SqlConnection("Data Source=alanserver-1200.database.windows.net;DATABASE=Restaurante;uid=usuario;pwd=Aprendeaprogramar123;integrated security=false");

            cn.Open();

            SqlCommand cmd = new SqlCommand("Select a.Nombre, rtrim(a.ApellidoP)+' '+a.ApellidoM, a.Edad, b.Fecha, b.Hora, b.Mesa_id from Cliente A inner join Reservacion B on A.Cliente_id=B.Cliente_id where a.Cliente_id = @ClienteId", cn);
            cmd.Parameters.AddWithValue("@ClienteId", int.Parse(txtNumeroReservacion.Text));
            SqlDataReader sa = cmd.ExecuteReader();
            while (sa.Read())
            {
                lblNombre.Text = sa.GetValue(0).ToString();
                lblApellidos.Text = sa.GetValue(1).ToString();
                lblEdad.Text = sa.GetValue(2).ToString();
                string fechaObtenida = sa.GetValue(3).ToString();
                lblFecha.Text = fechaObtenida.Substring(6, 2) + "/" + fechaObtenida.Substring(4, 2) + "/" + fechaObtenida.Substring(0, 4);
                string horaObtenida = sa.GetValue(4).ToString();
                lblHorario.Text = horaObtenida.Substring(0, 2) + ":" + horaObtenida.Substring(2, 2) + "hrs";
                lblMesa.Text = sa.GetValue(5).ToString();
            }

            cn.Close();

            eliminarReservacion.Enabled = true;
            modificarReservacion.Enabled = true;

        }

        protected void eliminarReservacion_Click(object sender, EventArgs e)
        {
            SqlConnection cn = new SqlConnection("Data Source=alanserver-1200.database.windows.net;DATABASE=Restaurante;uid=usuario;pwd=Aprendeaprogramar123;integrated security=false");

            cn.Open();

            SqlCommand cmd = new SqlCommand("delete from Reservacion where Cliente_id = @numeroReservacionRandomsalida delete from Cliente where Cliente_id = @numeroReservacionRandomsalida", cn);
            cmd.Parameters.AddWithValue("@numeroReservacionRandomsalida", txtNumeroReservacion.Text);
            cmd.ExecuteNonQuery();
            cn.Close();
            lblNombre.Text = "";
            lblApellidos.Text = "";
            lblEdad.Text = "";
            lblHorario.Text = "";
            lblMesa.Text = "";
            Response.Redirect("ReservacionCancelada.aspx");
        }

        protected void modificarReservacion_Click(object sender, EventArgs e)
        {
            
            Session["crearReserv"] = txtNumeroReservacion.Text;
            Response.Redirect("Modificar.aspx");
        }
    }
}