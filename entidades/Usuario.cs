﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace entidades
{
    public class Usuario
    {
        private int id_usuario;
        private int id_rol;
        private String nombre;
        private String contrasena;
        private int activo;

        public int Id_usuario
        {
            get
            {
                return id_usuario;
            }
            set
            {
                id_usuario = value;
            }
        }
        public int Id_rol
        {
            get
            {
                return id_rol;
            }
            set
            {
                id_rol = value;
            }
        }
        public string Nombre
        {
            get
            {
                return nombre;
            }
            set
            {
                nombre = value;
            }
        }
        public string Contrasena
        {
            get
            {
                return contrasena;
            }
            set
            {
                contrasena = value;
            }
        }

        public int Activo
        {
            get
            {
                return activo;
            }
            set
            {
                activo = value;
            }
        }
    }
}
