using EvaluacionQS.Service.Clientes.Dtos;
using EvaluacionQS.Service.Clientes.Services.Interfaces;
using EvaluacionQS.Service.General.Dtos;
using EvaluationQS.Data.Repository.Interfaces;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace EvaluacionQS.Service.Clientes.Services.Implementations
{
    public class ClienteService : IClienteService
    {
        private readonly IClienteRepository _clienteRepository;

        public ClienteService(IClienteRepository clienteRepository)
        {
            _clienteRepository = clienteRepository;
        }

        public async Task<OperacionDto<List<ListClientesCategoriaAResponseDto>>> GetAllClientsCategoryA()
        {
            var list = await _clienteRepository.ClientsCategoryA();

            var dto = new List<ListClientesCategoriaAResponseDto>();

            foreach(var item in list)
            {
                var model = new ListClientesCategoriaAResponseDto() 
                {
                    Categoria = item.Categoria,
                    Cliente  = item.Cliente
                };

                dto.Add(model);
            }

            return new OperacionDto<List<ListClientesCategoriaAResponseDto>>(dto);
        }
    }
}
