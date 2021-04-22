using EvaluacionQS.Service.Clientes.Dtos;
using EvaluacionQS.Service.General.Dtos;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace EvaluacionQS.Service.Clientes.Services.Interfaces
{
    public interface IClienteService
    {
        Task<OperacionDto<List<ListClientesCategoriaAResponseDto>>> GetAllClientsCategoryA();
    }
}
