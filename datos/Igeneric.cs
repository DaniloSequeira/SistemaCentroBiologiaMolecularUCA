using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace datos
{
     interface Igeneric<clase>
    {
        bool crear(clase obj);
        bool modificar(clase obj);
        bool eliminar(clase obj);
        //clase Listar(clase obj);
        List<clase> listarTodo();
    }
}
