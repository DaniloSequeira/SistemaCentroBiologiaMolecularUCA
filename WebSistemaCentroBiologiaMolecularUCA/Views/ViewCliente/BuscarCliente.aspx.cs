using datos;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebSistemaCentroBiologiaMolecularUCA.Views.ViewCliente
{
    public partial class BuscarCliente : System.Web.UI.Page
    {
        private DTcliente dtcliente;
        private SqlDataReader clientes;
        protected void Page_Load(object sender, EventArgs e)
        {
            this.dtcliente = new DTcliente();
            this.clientes = this.dtcliente.listarCliente();

        }
        public SqlDataReader getcliente()
        {
            //en esta parte, listo todos mis clientes
            return this.clientes;
        }
    }
}