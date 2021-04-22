using System;
using System.Collections.Generic;
using System.Text;

namespace EvaluationQS.Data.Models.Procedure
{
    public class ListProductos
    {
        public int ProductoId { get; set; }
        public string Descripcion { get; set; }
        public decimal PrecioUnitario { get; set; }
        public char Categoria { get; set; }
    }
}
