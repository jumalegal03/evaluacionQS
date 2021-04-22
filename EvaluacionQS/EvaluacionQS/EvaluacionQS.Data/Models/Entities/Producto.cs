using System;
using System.Collections.Generic;
using System.Text;

namespace EvaluationQS.Data.Models.Entities
{
    public class Producto
    {
        public int ProductoId { get; set; }
        public string Descripcion { get; set; }
        public decimal PrecioUnitario { get; set; }
        public char Categoria { get; set; }

        public virtual ICollection<DetalleFactura> DetalleFacturas { get; set; }

    }
}
