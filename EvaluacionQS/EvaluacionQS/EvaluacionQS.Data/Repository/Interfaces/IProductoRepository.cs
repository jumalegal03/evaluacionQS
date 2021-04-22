using EvaluacionQS.Data.Base.Interface;
using EvaluationQS.Data.Models.Entities;
using EvaluationQS.Data.Models.Procedure;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace EvaluationQS.Data.Repository.Interfaces
{
    public interface IProductoRepository : IRepository<Producto>
    {
        Task<List<ListProductos>> Products();
    }
}
