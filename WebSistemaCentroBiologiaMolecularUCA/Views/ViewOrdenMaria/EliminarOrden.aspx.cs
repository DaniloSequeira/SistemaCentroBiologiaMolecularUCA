using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using datos;
using entidades;

namespace WebSistemaCentroBiologiaMolecularUCA.Views.ViewOrdenMaria
{
    public partial class EliminarOrden : System.Web.UI.Page
    {
        private TOrdenAdn tordenadn;
        protected void Page_Load(object sender, EventArgs e)
        {
            this.tordenadn = new TOrdenAdn();
            entidades.OrdenAdn orde = new entidades.OrdenAdn();
            String valor = Request.QueryString["id"];
            int id = int.Parse(valor);
            orde.Id_orden = id;
            this.tordenadn.eliminar(orde);
            Response.Redirect("AgregarOrden.aspx");
        }
    }
}