using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace datos
{
    public class DTrol
    {
        private SqlDataReader registros;
        //PATRÓN SINGLETON
        #region "SINGLETON"
        private static DTrol dte = null;
        public DTrol()
        {

        }

        public static DTrol getInstance()
        {
            if (dte == null)
            {
                dte = new DTrol();
            }
            return dte;
        }
        #endregion

        //CONSTANTES DE CONEXIÓN Y COMANDO SQL
        SqlConnection c = new SqlConnection();
        SqlCommand comando = null;

        public SqlDataReader listarRol()
        {
            c = Conexion.getInstance().ConexionDB();
            String sql = "select Id_rol , Rol from T_Rol;";

            SqlCommand comando = new SqlCommand(sql, this.c);
            this.registros = comando.ExecuteReader();
            return this.registros;
            c.Close();
        }
    }
}
