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
    public class VendedorRepository : Repository<Vendedor>, IVendedorRepository
    {
        public VendedorRepository(EvaluationQSContext context) : base(context)
        {
        }

        public async Task<List<ListVendedores2019>> Sellers2019()
        {
            var lst = await _context.ListVendedores2019.FromSqlRaw("execute dbo.ListVendedores2019").ToListAsync();

            return lst;
        }
    }
}
