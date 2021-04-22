using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using EvaluacionQS.Service.Vendedores;
using EvaluacionQS.Service.Vendedores.Services.Interfaces;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace EvaluacionQS.Integration.Controllers
{
    [Route("api/vendedor")]
    [ApiController]
    public class VendedorController : BaseController
    {
        private readonly IVendedorService _vendedorService;

        public VendedorController(
            IVendedorService vendedorService)
        {
            _vendedorService = vendedorService;
        }

        [HttpGet("del2019")]
        public async Task<List<ListVendedores2019ResponseDto>> Sellers()
        {
            var operation = await _vendedorService.GetAllSellers2019();
            return operation.Resultado;

        }
    }
}
