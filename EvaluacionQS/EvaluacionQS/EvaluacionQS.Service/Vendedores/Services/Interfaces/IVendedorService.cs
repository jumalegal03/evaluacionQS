using EvaluacionQS.Service.General.Dtos;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace EvaluacionQS.Service.Vendedores.Services.Interfaces
{
    public interface IVendedorService
    {
        Task<OperacionDto<List<ListVendedores2019ResponseDto>>> GetAllSellers2019();
    }
}
