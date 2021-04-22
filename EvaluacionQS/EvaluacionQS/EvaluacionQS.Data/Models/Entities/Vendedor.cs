using System;
using System.Collections.Generic;
using System.Text;

namespace EvaluationQS.Data.Models.Entities
{
    public class Vendedor
    {
        public int VendedorId { get; set; }
        public string Nombres { get; set; }
        public string Apellidos { get; set; }
        public char Dni { get; set; }
        public DateTime FechaIngreso { get; set; }
        public virtual ICollection<Factura> Facturas { get; set; }
    }
}
