using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using EvaluacionQS.Service.Productos;
using EvaluacionQS.Service.Productos.Services.Interfaces;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace EvaluacionQS.Integration.Controllers
{
    [Route("api/producto")]
    [ApiController]
    public class ProductoController : BaseController
    {
        private readonly IProductoService _productoService;

        public ProductoController(
            IProductoService productoService)
        {
            _productoService = productoService;
        }

        [HttpGet("todos")]
        public async Task<List<ListProductosResponseDto>> Products()
        {

            var operation = await _productoService.GetAllProduct();
            return operation.Resultado;

        }
    }
}
