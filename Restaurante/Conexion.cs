using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

namespace Restaurante
{
    class Conexion
    {
        public static SqlConnection Conectar()
        {
            SqlConnection cn = new SqlConnection("SERVER=ALANLAP/SQLEXPRESS;DATABASE=Restaurante;integrated security=true");

            cn.Open();

            return cn;
        }
    }
}
