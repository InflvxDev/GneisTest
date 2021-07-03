using System;
using System.Collections.Generic;
using System.Text;
using Datos;
using Microsoft.EntityFrameworkCore;

namespace Test_Gneis
{
    public class BasePruebas 
    {
        protected ProyectoContext ConstruirContext(string nombreDB)
        {
            var opciones = new DbContextOptionsBuilder<ProyectoContext>()
                .UseInMemoryDatabase(nombreDB).Options;

            var DbContext = new ProyectoContext(opciones);
            return DbContext;
        }

    }
}
