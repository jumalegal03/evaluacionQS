using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using EvaluacionQS.Service.Facturas;
using EvaluacionQS.Service.Facturas.Dtos;
using EvaluacionQS.Service.Facturas.Services.Interfaces;
using EvaluacionQS.Service.General.Dtos;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace EvaluacionQS.Integration.Controllers
{
    [Route("api/factura")]
    [ApiController]
    public class FacturaController : BaseController
    {
        private readonly IFacturaService _facturaService;

        public FacturaController(
            IFacturaService facturaService)
        {
            _facturaService = facturaService;
        }

        [HttpGet("emitidas_por_dia/{dia}")]
        public async Task<List<ListFacturasResponseDto>> Invoices(string dia)
        {
            var request = new ListFacturasRequestDto()
            {
                Day = Convert.ToInt32(dia)
            };
            var operation = await _facturaService.GetAllInvoices(request);
            return operation.Resultado;

        }

        [HttpPost("registrar_factura")]
        public async Task<ResponseSimpleDto> Insert(InsertFacturaRequestDto requestDto)
        {
            var operation = await _facturaService.InsertInvoice(requestDto);
            return ReturnResultShowErrors(operation);

        }
    }
}
