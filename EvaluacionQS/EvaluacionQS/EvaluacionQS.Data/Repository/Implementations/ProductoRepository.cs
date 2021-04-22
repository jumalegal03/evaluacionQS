using EvaluacionQS.Data.Base.Implementations;
using EvaluacionQS.Data.Data;
using EvaluationQS.Data.Models.Entities;
using EvaluationQS.Data.Models.Procedure;
using EvaluationQS.Data.Repository.Interfaces;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace EvaluationQS.Data.Repository.Implementations
{
    public class ProductoRepository : Repository<Producto>, IProductoRepository
    {
        public ProductoRepository(EvaluationQSContext context) : base(context)
        {
        }

        public async Task<List<ListProductos>> Products()
        {
            var lst = await _context.ListProductos.FromSqlRaw("execute dbo.ListProductos").ToListAsync();

            return lst;
        }
    }
}
