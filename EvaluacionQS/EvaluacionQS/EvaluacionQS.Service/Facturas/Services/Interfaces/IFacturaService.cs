using EvaluacionQS.Service.Facturas.Dtos;
using EvaluacionQS.Service.General.Dtos;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace EvaluacionQS.Service.Facturas.Services.Interfaces
{
    public interface IFacturaService
    {
        Task<OperacionDto<List<ListFacturasResponseDto>>> GetAllInvoices(ListFacturasRequestDto requestDto);
        Task<OperacionDto<ResponseSimpleDto>> InsertInvoice(InsertFacturaRequestDto requestDto);
    }
}
