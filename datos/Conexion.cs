﻿using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace datos
{
  public class Conexion
    {
        #region "SINGLETON"
        private static Conexion conexion = null;
        public Conexion()
        {

        }

        public static Conexion getInstance()
        {
            if (conexion == null)
            {
                conexion = new Conexion();
            }
            return conexion;
        }
        #endregion

        public SqlConnection ConexionDB()
        {
            SqlConnection conexion = new SqlConnection();
            // conexion.ConnectionString = "Data Source=DESKTOP-PF2CIA5\\SA;Initial Catalog=Biologias;Integrated Security=True";
            // conexion.ConnectionString = "Data Source=DESKTOP-25T1PTH\\SQLEXPRESS;Initial Catalog=centro;User ID=sa;Password=1234";
            // conexion.ConnectionString = "Data Source=165.98.12.158;Initial Catalog=cbm;User ID=aps;Password=$qlS3rv3rAPS*";
            conexion.ConnectionString = "Data Source=DESKTOP-QA6AJ58\\SQLAPS; Initial Catalog=Biologia; User ID=sa; Password=1234";
            conexion.Open();
            return conexion;
        }
    }
}
