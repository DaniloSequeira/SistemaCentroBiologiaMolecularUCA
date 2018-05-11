using datos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebSistemaCentroBiologiaMolecularUCA.Views.ViewUsuario
{
    public partial class EliminarUsuario : System.Web.UI.Page
    {
        private DTUsuario dtusuario;
        protected void Page_Load(object sender, EventArgs e)
        {
            this.dtusuario = new DTUsuario();
            entidades.Usuario us = new entidades.Usuario();
            String valor = Request.QueryString["id"];
            int id = int.Parse(valor);
            us.Id_usuario = id;
            this.dtusuario.eliminar(us);
            Response.Redirect("AgregarUsuario.aspx");
        }
    }
}