using System;
using System.Collections.Generic;
using System.Text;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using gneis.Models;
using gneis.Controllers;

namespace Test_Gneis
{
    [TestClass]
    public class UsuarioTest: BasePruebas
    {
        [TestMethod]
        public void CrearUsuarioTest()
        {
            
            var nombreBD = Guid.NewGuid().ToString();
            var contexto = ConstruirContext(nombreBD);

            var nuevoUsuario = new UsuarioInputModel() { 
                Username = "admin" , Password = "Sebas123", Role = "Administrador" };
            var controller = new UsuarioController(contexto);

            var respuesta = controller.post(nuevoUsuario);
            Assert.IsNotNull(respuesta);
        }
    }
}
