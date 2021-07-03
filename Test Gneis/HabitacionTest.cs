using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;
using gneis.Models;
using gneis.Controllers;

namespace Test_Gneis
{
    [TestClass]
    public class HabitacionTest : BasePruebas
    {
        [TestMethod]
        public void CrearHabitacionTest()
        {
            //preparacion
            var nombreBD = Guid.NewGuid().ToString();
            var contexto = ConstruirContext(nombreBD);

            var nuevaHabitacion = new HabitacionInputModel() {Idhabitacion="H3" ,Tipo = "Simple", Costo = 10000};
            var controller = new HabitacionController(contexto);

            var respuesta = controller.post(nuevaHabitacion);
            Assert.IsNotNull(respuesta);
        }

    }
}
