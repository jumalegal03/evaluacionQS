﻿using System;
using System.Collections.Generic;
using System.Text;

namespace EvaluationQS.Data.Models.Entities
{
    public class DetalleFactura
    {
        public int DetalleFacturaId { get; set; }
        public int FacturaId { get; set; }
        public int ProductoId { get; set; }
        public int Cantidad { get; set; }
        public decimal PrecioUnitario { get; set; }
        public virtual Factura Factura { get; set; }
        public virtual Producto Producto { get; set; }

    }
}
