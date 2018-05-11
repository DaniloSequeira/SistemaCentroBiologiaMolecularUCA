using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using datos;
using entidades;

namespace negocio
{
    public class NGresultado
    {

        //PATRÓN SINGLETON
        #region "SINGLETON"
        private static NGresultado emp = null;

        private NGresultado()
        {
        }

        public static NGresultado getInstance()
        {
            if (emp == null)
            {
                emp = new NGresultado();
            }
            return emp;
        }
        #endregion

        public bool guardarresultado(Resultado resultado)
        {
            return DTresultado.getInstance().crear(resultado);
        }

        public bool Eliminarresultado(Resultado resultado)
        {
            return DTresultado.getInstance().eliminar(resultado);
        }

        public bool Modificarresultado(Resultado resultado)
        {
            return DTresultado.getInstance().modificar(resultado);
        }
    }
}
