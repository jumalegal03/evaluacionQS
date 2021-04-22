﻿using System;
using System.Collections.Generic;
using System.Text;

namespace EvaluationQS.Data.Models.Entities
{
    public class Factura
    {
        public int  FacturaId { get; set; }
        public string Serie { get; set; }
        public string Codigo { get; set; }
        public int VendedorId { get; set; }
        public int ClienteId { get; set; }
        public DateTime Fecha { get; set; }
        public char Moneda { get; set; }

        public virtual Cliente Cliente { get; set; }
        public virtual Vendedor Vendedor { get; set; }
        
        public virtual ICollection<DetalleFactura> DetalleFacturas { get; set; }
    }
}
