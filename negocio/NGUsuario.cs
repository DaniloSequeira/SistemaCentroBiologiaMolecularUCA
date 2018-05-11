using datos;
using entidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace negocio
{
    public class NGUsuario
    {

        //PATRÓN SINGLETON
        #region "SINGLETON"
        private static NGUsuario us = null;
        private NGUsuario()
        {

        }

        public static NGUsuario getInstance()
        {
            if (us == null)
            {
                us = new NGUsuario();
            }

            return us;
        }

        #endregion

        public bool guardarUsuario(Usuario usuario)
        {

            return DTUsuario.getInstance().crear(usuario);
        }
        public bool EliminarUsuario(Usuario usuario)
        {
            return DTUsuario.getInstance().eliminar(usuario);
        }
        public bool ModificarUsuario(Usuario usuario)
        {
            return DTUsuario.getInstance().modificar(usuario);
        }

        public bool logeo(Usuario usuario)
        {
            return DTUsuario.getInstance().log(usuario);
        }


    }
}
