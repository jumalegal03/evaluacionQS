using System;
using System.Collections.Generic;
using System.Text;

namespace EvaluationQS.Data.Models.Procedure
{
    public class ListVendedores2019
    {
        public int VendedorId { get; set; }
        public string Nombres { get; set; }
        public string Apellidos { get; set; }
        public char Dni { get; set; }
        public DateTime FechaIngreso { get; set; }
    }
}
