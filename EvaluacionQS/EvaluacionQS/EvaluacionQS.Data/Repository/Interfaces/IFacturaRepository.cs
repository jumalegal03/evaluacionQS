using EvaluacionQS.Data.Base.Interface;
using EvaluationQS.Data.Models.Entities;
using EvaluationQS.Data.Models.Procedure;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace EvaluationQS.Data.Repository.Interfaces
{
    public interface IFacturaRepository : IRepository<Factura>
    {
        Task<List<ListFacturas>> Invoices(int day);
        Task InsertInvoice(
            string serie,
            string codigo,
            int vendedorId,
            int clienteId,
            DateTime fecha,
            char moneda,
            int productId,
            int cantidadId,
            decimal precio
         );
    }
}
