using System;
using System.Collections.Generic;
using System.Text;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using gneis.Models;
using gneis.Controllers;

namespace Test_Gneis
{
    [TestClass]
    public class ClienteTest: BasePruebas
    {
        [TestMethod]
        public void CrearClienteTest()
        {

            var nombreBD = Guid.NewGuid().ToString();
            var contexto = ConstruirContext(nombreBD);

            var nuevoClientes = new ClienteInputModel()
            {
                Cedula = "1192729904",
                Nombre = "Sebastian ochoa",
                Direccion = "Cra44-10san Fernando",
                Edad = 18,
                Sexo = "M",
                Telefono = 3135360339,
                Correo = "seochoa@hotmail.com",
            };
            var controller = new ClienteController(contexto);

            var respuesta = controller.post(nuevoClientes);
            Assert.IsNotNull(respuesta);
        }
    }
}
