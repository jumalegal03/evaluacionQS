using EvaluacionQS.Service.General.Dtos;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace EvaluacionQS.Service.Productos.Services.Interfaces
{
    public interface IProductoService
    {
        Task<OperacionDto<List<ListProductosResponseDto>>> GetAllProduct();
    }
}
