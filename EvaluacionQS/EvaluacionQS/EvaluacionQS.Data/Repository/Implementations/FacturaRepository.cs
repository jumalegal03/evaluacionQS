using EvaluacionQS.Data.Base.Implementations;
using EvaluacionQS.Data.Data;
using EvaluationQS.Data.Models.Entities;
using EvaluationQS.Data.Models.Procedure;
using EvaluationQS.Data.Repository.Interfaces;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Text;
using System.Threading.Tasks;

namespace EvaluationQS.Data.Repository.Implementations
{
    public class FacturaRepository : Repository<Factura>, IFacturaRepository
    {
        public FacturaRepository(EvaluationQSContext context) : base(context)
        {
        }

        public async Task<List<ListFacturas>> Invoices(int day)
        {
            var lst = await _context.ListFacturas.FromSqlRaw("execute dbo.ListFacturas {0}", day).ToListAsync();

            return lst;
        }

        public async Task InsertInvoice(
            string serie,
            string codigo,
            int vendedorId,
            int clienteId,
            DateTime fecha,
            char moneda,
            int productId,
            int cantidadId,
            decimal precio
         )
        {
            await _context.Database.ExecuteSqlRawAsync("execute dbo.InsertFactura {0}, {1}, {2}, {3}, {4}, {5}, {6}, {7}, {8}", serie, codigo, vendedorId, clienteId, fecha, moneda, productId, cantidadId, precio);
        }
    }
}
