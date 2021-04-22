using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using EvaluacionQS.Service.Clientes.Dtos;
using EvaluacionQS.Service.Clientes.Services.Interfaces;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace EvaluacionQS.Integration.Controllers
{
    [Route("api/cliente")]
    [ApiController]
    public class ClienteController : BaseController
    {
        private readonly IClienteService _clienteService;

        public ClienteController(
            IClienteService clienteService)
        {
            _clienteService  = clienteService;
        }

        [HttpGet("categoria_a")]
        public async Task<List<ListClientesCategoriaAResponseDto>> ClientsCategoryA()
        {
            
            var operation = await _clienteService.GetAllClientsCategoryA();
            return operation.Resultado;

        }
    }
}
