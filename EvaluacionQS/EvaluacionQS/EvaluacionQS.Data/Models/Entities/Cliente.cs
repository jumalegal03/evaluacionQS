using System;
using System.Collections.Generic;
using System.Text;

namespace EvaluationQS.Data.Models.Entities
{
    public class Cliente
    {
        public int ClienteId { get; set; }
        public string Nombres { get; set; }
        public string Apellidos { get; set; }
        public string Nic { get; set; }
        public char Categoria { get; set; }

        public virtual ICollection<Factura> Facturas { get; set; }
    }
}
