using EvaluacionQS.Data.Base.Implementations;
using EvaluacionQS.Data.Data;
using EvaluationQS.Data.Models.Entities;
using EvaluationQS.Data.Models.Procedure;
using EvaluationQS.Data.Repository.Interfaces;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EvaluationQS.Data.Repository.Implementations
{
    public class ClienteRepository : Repository<Cliente>, IClienteRepository
    {
        public ClienteRepository(EvaluationQSContext context) : base(context)
        {
        }

        public async Task<List<ListClientesCategoriaA>> ClientsCategoryA()
        {
            var lst = await _context.ListClientesCategorias.FromSqlRaw("execute dbo.ListClientesCategoriaA").ToListAsync();

            return lst;
        }
    }
}
