using System;
using System.Collections.Generic;
using System.Text;

namespace EvaluationQS.Data.Models.Procedure
{
    public class ListFacturas
    {
        public int FacturaId { get; set; }
        public string Cliente { get; set; }
        public string Vendedor { get; set; }
        public decimal Importe { get; set; }
        public DateTime Fecha { get; set; }
    }
}
