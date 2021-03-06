﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using datos;
using entidades;
using negocio;
using System.Data.SqlClient;

namespace WebSistemaCentroBiologiaMolecularUCA.Views.ViewResultadoDanilo
{
    public partial class AgregarResultadoVPH : System.Web.UI.Page
    {
        private DTresultado dtresultado;
        private SqlDataReader registro;
        private Conexion conexion;
        protected void Page_Load(object sender, EventArgs e)
        {
            this.dtresultado = new DTresultado();
            this.conexion = new Conexion();
            this.registro = this.dtresultado.listarTodo();
        }
        public SqlDataReader getregistros()
        {
            return this.registro;
        }
        public Resultado GetEntity()
        {
            Resultado re = new Resultado();
            if (Mfecha.ToString() == null)
            {
                RegularExpressionValidator.GetValidationProperty(RequiredFieldValidator1);
            }
            else
            {
                re.Fecha_procesamiento = Mfecha.Text;
            }
            if (Mvalidacion.ToString() == null)
            {
                RegularExpressionValidator.GetValidationProperty(RequiredFieldValidator1);
            }
            else
            {
                re.Validacion = Mvalidacion.SelectedValue;
            }
            if (Mresultado.ToString() == null)
            {
                RegularExpressionValidator.GetValidationProperty(RequiredFieldValidator1);
            }
            else
            {
                re.Parametros = Mresultado.SelectedValue;
            }
            if (Mestado.ToString() == null)
            {
                RegularExpressionValidator.GetValidationProperty(RequiredFieldValidator1);
            }
            else
            {
                re.Estado = Mestado.SelectedValue;
            }
            if (Musuarioprocesa.ToString() == null)
            {
                RegularExpressionValidator.GetValidationProperty(RequiredFieldValidator1);
            }
            else
            {
                re.Usuario_procesa = Musuarioprocesa.Text;
            }
            if (Musuariovalida.ToString() == null)
            {
                RegularExpressionValidator.GetValidationProperty(RequiredFieldValidator1);
            }
            else
            {
                re.Usuario_valida = Musuariovalida.Text;
            }
            if (Manalisis.ToString() == null)
            {
                RegularExpressionValidator.GetValidationProperty(RequiredFieldValidator1);
            }
            else
            {
                re.Analisis = Manalisis.Text;
            }

            return re;
        }
        protected void InsertarOrden(object sender, EventArgs e)
        {
            if (IsValid)
            {
                Resultado re = GetEntity();
                bool resp = NGresultado.getInstance().guardarresultado(re);
                if (resp == true)
                {
                    Response.Redirect("AgregarResultadoVPH.aspx");
                }
                else
                {
                    Response.Write("<script>alert('REGISTRO INCORRECTO.')</script)");
                }
            }
            else
            {
                RegularExpressionValidator.GetValidationProperty(RequiredFieldValidator1);//sino esta validado me mostrara los campos a corregir y no mandara datos.

            }
        }
    }
}