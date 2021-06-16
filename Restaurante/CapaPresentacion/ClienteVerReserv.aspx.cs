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

            SqlCommand cmd = new SqlCommand("Select NUmSilla from [Restaurante].[dbo].[Mesa] where NumMesa = 2", cn);
            SqlDataReader sa = cmd.ExecuteReader();
            while (sa.Read())
            {
                textPrueba.Text = sa.GetValue(0).ToString();
            }
            
            cn.Close();
        }

    }
}