using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;

namespace datos
{
   public class DTexamenes
    {
        private SqlDataReader registros;
        //PATRÓN SINGLETON
        #region "SINGLETON"
        private static DTexamenes dte = null;
        public DTexamenes()
        {

        }

        public static DTexamenes getInstance()
        {
            if (dte == null)
            {
                dte = new DTexamenes();
            }
            return dte;
        }
        #endregion

        //CONSTANTES DE CONEXIÓN Y COMANDO SQL
        SqlConnection c = new SqlConnection();
        SqlCommand comando = null;

        public SqlDataReader listarexamenes()
        {
            c = Conexion.getInstance().ConexionDB();
            String sql = "select Id_examenes , Nombre  from T_Examenes;";

            SqlCommand comando = new SqlCommand(sql, this.c);
            this.registros = comando.ExecuteReader();
            return this.registros;
            c.Close();
        }
    }
}
