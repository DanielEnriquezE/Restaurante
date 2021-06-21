using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Globalization;

namespace Restaurante.CapaPresentacion
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            String fechasalida;

            fechasalida = DateTime.Now.ToString("yyyyMMdd");

            SqlConnection cn = new SqlConnection("Data Source=alanserver-1200.database.windows.net;DATABASE=Restaurante;uid=usuario;pwd=Aprendeaprogramar123;integrated security=false");

            cn.Open();

            SqlCommand cmd = new SqlCommand("SELECT Cliente_id AS [Numero de Reservación], Mesa_id AS [Numero de mesa], SUBSTRING(CONVERT(varchar(8),Fecha), 7, 2) + '/' + SUBSTRING(CONVERT(varchar(8),Fecha), 5, 2) + '/' + SUBSTRING(CONVERT(varchar(8),Fecha), 1, 4) as Fecha, SUBSTRING(CONVERT(varchar(4),Hora), 1, 2) + ':' + SUBSTRING(CONVERT(varchar(4),Hora), 3, 2) + 'hrs' as Hora FROM Reservacion WHERE (Fecha = @fechaActual)", cn);
            cmd.Parameters.AddWithValue("@fechaActual", int.Parse(fechasalida));
            SqlDataAdapter sa = new SqlDataAdapter(cmd);
            DataTable tablaResult = new DataTable();
            sa.Fill(tablaResult);
            gvMesasAdmin.DataSource = tablaResult;
            gvMesasAdmin.DataBind();
            cn.Close();
        }

        protected void Unnamed7_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void btnConsulta_Click(object sender, EventArgs e)
        {
            SqlConnection cn = new SqlConnection("Data Source=alanserver-1200.database.windows.net;DATABASE=Restaurante;uid=usuario;pwd=Aprendeaprogramar123;integrated security=false");

            cn.Open();

            SqlCommand cmd = new SqlCommand("Select a.Nombre, rtrim(a.ApellidoP)+' '+a.ApellidoM, a.Edad, b.Fecha, b.Hora, b.Mesa_id from Cliente A inner join Reservacion B on A.Cliente_id=B.Cliente_id where a.Cliente_id = @ClienteId", cn);
            cmd.Parameters.AddWithValue("@ClienteId", int.Parse(txtNumReservacion.Text));
            SqlDataReader sa = cmd.ExecuteReader();
            while (sa.Read())
            {
                txtNombreCliente.Text = sa.GetValue(0).ToString();
                txtApellidosCliente.Text = sa.GetValue(1).ToString();
                txtEdadCliente.Text = sa.GetValue(2).ToString();
                string fechaObtenida = sa.GetValue(3).ToString();
                string fechasal = fechaObtenida.Substring(6, 2) + "/" + fechaObtenida.Substring(4, 2) + "/" + fechaObtenida.Substring(0, 4);
                txtFechaReservada.Text = fechasal;
                string horaObtenida = sa.GetValue(4).ToString();
                txtHorarioCliente.Text = horaObtenida.Substring(0, 2) + ":" + horaObtenida.Substring(2, 2) + "hrs";
                txtMesaReservadaCliente.Text = sa.GetValue(5).ToString();
            }

            cn.Close();
        }

        protected void btnLimpiar_Click(object sender, EventArgs e)
        {
            txtNumReservacion.Text = "";
            txtNombreCliente.Text = "";
            txtApellidosCliente.Text = "";
            txtEdadCliente.Text = "";
            txtFechaReservada.Text = "";
            txtHorarioCliente.Text = "";
            txtMesaReservadaCliente.Text = "";
        }

        protected void gvMesasAdmin_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void gvMesasAdmin_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int rowindex = Convert.ToInt32(gvMesasAdmin.SelectedIndex);

        }

        protected void gvMesas_SelectedIndexChanged(object sender, EventArgs e)
        {
            int rowindex = Convert.ToInt32(gvMesasAdmin.SelectedIndex);

            lblReservacionElegida.Text = gvMesasAdmin.Rows[rowindex].Cells[1].Text;
        }

        protected void btnLiberarReservacion_Click(object sender, EventArgs e)
        {
            int rowindex = Convert.ToInt32(gvMesasAdmin.SelectedIndex);

            SqlConnection cn = new SqlConnection("Data Source=alanserver-1200.database.windows.net;DATABASE=Restaurante;uid=usuario;pwd=Aprendeaprogramar123;integrated security=false");

            cn.Open();

            SqlCommand cmd = new SqlCommand("delete from Reservacion where Cliente_id = @numeroReservacionRandomsalida delete from Cliente where Cliente_id = @numeroReservacionRandomsalida", cn);
            cmd.Parameters.AddWithValue("@numeroReservacionRandomsalida", gvMesasAdmin.Rows[rowindex].Cells[1].Text);
            cmd.ExecuteNonQuery();
            cn.Close();
            Response.Redirect("Admin.aspx");
        }
        
    }
}