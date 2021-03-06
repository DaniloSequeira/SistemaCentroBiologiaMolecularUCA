﻿using datos;
using entidades;
using negocio;
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
    public partial class AgregarCliente : System.Web.UI.Page
    {
        private DTcliente dtcliente;
        private DTdepartamento dtdepartamento;
        private DTmunicipio dtmunicipio;
        private SqlDataReader clientes;

      protected void Page_Load(object sender, EventArgs e)
        {
           this.dtcliente = new DTcliente();
            this.dtdepartamento = new DTdepartamento();
            this.dtmunicipio = new DTmunicipio();
           this.clientes = this.dtcliente.listarCliente();
            if(!IsPostBack)
            {
                //en esta parte se carga el dropdownlist
                Mdepartamento.DataSource = dtdepartamento.listardepartamento();//aqui le paso mi consulta que esta en la clase dtdepartamento
                Mdepartamento.DataTextField = "Departamento";//le paso el texto del items
                Mdepartamento.DataValueField = "Id_departamento";//le paso el id de cada items
                Mdepartamento.DataBind();

                ListItem li = new ListItem("SELECCIONE", "0");//creamos una lista, para agregar el seleccione
                Mdepartamento.Items.Insert(0, li);//agregamis el seleccione en la posicion uno
                Mmunicipio.Items.Insert(0, li);
                Mmunicipio.Enabled = false;
            }
        }

        public  SqlDataReader getcliente()
       {
            //en esta parte, listo todos mis clientes
        return this.clientes;
       }
      
        public Cliente GetEntity()
        {
            Cliente cli = new Cliente();
            // cli.Id_Cliente = int.Parse(id_cliente.ToString());
            if (Mnombre.ToString() == null)//valido los campos que no sean nulos
            {
                Mnombre.BorderColor = System.Drawing.Color.Red;//si son nulos, me tirara un error de validacion
            }
            else
            {
                cli.Nombres = Mnombre.Text;//si son validos, me dejara enviar los datos a la base de datoa
            }
            if (Mapellido.ToString() == null)//todo esto se hace para todos los campos del formulario
            {
                RegularExpressionValidator.GetValidationProperty(RequiredFieldValidator1);
            }
            else
            {
                cli.Apellidos = Mapellido.Text;
            }
            if (Mcedula.ToString() == null)
            {
                RegularExpressionValidator.GetValidationProperty(RequiredFieldValidator1);
            }
            else
            {
                cli.Cedula = Mcedula.Text;
            }
            if (Mdepartamento.ToString() == null)
            {
                RegularExpressionValidator.GetValidationProperty(RequiredFieldValidator1);
            }
            else
            {
                cli.Departamento = Mdepartamento.SelectedValue;
            }
            if (Mmunicipio.ToString() == null)
            {
                RegularExpressionValidator.GetValidationProperty(RequiredFieldValidator1);
            }
            else
            {
                cli.Municipio = Mmunicipio.SelectedValue;
            }
            if (Msexo.ToString() == null)
            {
                RegularExpressionValidator.GetValidationProperty(RequiredFieldValidator1);
            }
            else
            {
                cli.Sexo = Msexo.SelectedValue;
            }
            if (Mtelefono.ToString() == null)
            {
                RegularExpressionValidator.GetValidationProperty(RequiredFieldValidator1);
            }
            else
            {
                cli.Telefono = int.Parse(Mtelefono.Text);
            }
            if (Mcorreo.ToString() == null)
            {
                RegularExpressionValidator.GetValidationProperty(RequiredFieldValidator1);
            }
            else
            {
                cli.Correo = Mcorreo.Text;
            }
            if (Mdireccion.ToString() == null)
            {
                RegularExpressionValidator.GetValidationProperty(RequiredFieldValidator1);
            }
            else
            {
                cli.Dirreccion = Mdireccion.Text;
            }
            return cli;
        }

        protected void InsertarCliente(object sender, EventArgs e)
        {

            if (IsValid)//valido que si mi formulario esta correcto
            {
                //Registro del Empleado
                Cliente cli = GetEntity();
                //LLAMANDO A CAPA DE NEGOCIO
                bool resp = NGcliente.getInstance().guardarcliente(cli);
                if (resp == true)
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "none", "confirm('Cliente Guardado');", true);
                    Response.Redirect("BuscarCliente.aspx");
                   
                }
                else
                {
                    Response.Write("<script>alert('REGISTRO INCORRECTO.')</script)");
                }
            }
            else
            {
                ScriptManager.RegisterStartupScript(this,this.GetType(),"none", "confirm('Error, revisar Formulario');", true);
                RegularExpressionValidator.GetValidationProperty(RequiredFieldValidator1);//sino esta validado me mostrara los campos a corregir y no mandara datos.

            }

          }

        protected void Mdepartamento_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (Mdepartamento.SelectedIndex == 0)
            {

            }
            else
            {
                Mmunicipio.Enabled = true;
                Mmunicipio.DataSource = dtmunicipio.getmunicipioporid(int.Parse(Mdepartamento.SelectedValue));
                Mmunicipio.DataTextField = "Municipio";
                Mmunicipio.DataValueField = "Id_Municipio";
                Mmunicipio.DataBind();
                //tienes que resolver, el problema que recarga la pagina y se sale del formulario, resolverlo
                //tratar de hacerlo con jqury https://www.youtube.com/watch?v=P_-zxQYPy5w Ese es eñ video
            }
        }
    }

  }
    