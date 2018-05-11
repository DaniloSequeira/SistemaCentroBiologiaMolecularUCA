using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using datos;
using entidades;
using negocio;

namespace WebSistemaCentroBiologiaMolecularUCA.Views.ViewResultadoMaria
{
    public partial class Eliminarresultado : System.Web.UI.Page
    {
        private DTresultado dtresultado;
        protected void Page_Load(object sender, EventArgs e)
        {
            this.dtresultado = new DTresultado();
            entidades.Resultado orde = new entidades.Resultado();
            String valor = Request.QueryString["id"];
            int id = int.Parse(valor);
            orde.Id_resultado = id;
            this.dtresultado.eliminar(orde);
            Response.Redirect("AgregarResultadoOgm.aspx");
        }
    }
}