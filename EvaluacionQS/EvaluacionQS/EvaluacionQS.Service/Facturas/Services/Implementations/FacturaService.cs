using EvaluacionQS.Service.Facturas.Dtos;
using EvaluacionQS.Service.Facturas.Services.Interfaces;
using EvaluacionQS.Service.General.Dtos;
using EvaluacionQS.Service.General.Utilitarian;
using EvaluationQS.Data.Repository.Interfaces;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.Text;
using System.Threading.Tasks;

namespace EvaluacionQS.Service.Facturas.Services.Implementations
{
    public class FacturaService : IFacturaService
    {
        private readonly IFacturaRepository _facturaRepository;
        private readonly IProductoRepository _productoRepository;
        private readonly IVendedorRepository _vendedorRepository;
        private readonly IClienteRepository _clienteRepository;

        public FacturaService(IFacturaRepository facturaRepository,
            IProductoRepository productoRepository,
            IVendedorRepository vendedorRepository,
            IClienteRepository clienteRepository)
        {
            _facturaRepository = facturaRepository;
            _productoRepository = productoRepository;
            _vendedorRepository = vendedorRepository;
            _clienteRepository = clienteRepository;
        }

        public async Task<OperacionDto<List<ListFacturasResponseDto>>> GetAllInvoices(ListFacturasRequestDto requestDto)
        {
            var list = await _facturaRepository.Invoices(requestDto.Day);

            var dto = new List<ListFacturasResponseDto>();

            foreach (var item in list)
            {
                var invoice = new ListFacturasResponseDto()
                {
                    FacturaId = item.FacturaId,
                    Cliente = item.Cliente,
                    Fecha = item.Fecha.ToString("dd/MM/yyyy h:mm tt", CultureInfo.InvariantCulture),
                    Importe = item.Importe,
                    Vendedor = item.Vendedor
                };

                dto.Add(invoice);
            }

            return new OperacionDto<List<ListFacturasResponseDto>>(dto);
        }

        public async Task<OperacionDto<ResponseSimpleDto>> InsertInvoice(InsertFacturaRequestDto requestDto)
        {
            var operationValidate = UtilityValidation.ModelValidate<ResponseSimpleDto>(requestDto);

            if (!operationValidate.Completado)
            {
                return operationValidate;
            }

            var product = await _productoRepository.Get(requestDto.ProductId);
            if (product == null)
                return new OperacionDto<ResponseSimpleDto>(CodigosOperacionDto.NotExist, "No existe el producto");

            var seller = await _vendedorRepository.Get(requestDto.VendedorId);
            if (seller == null)
                return new OperacionDto<ResponseSimpleDto>(CodigosOperacionDto.NotExist, "No existe el vendedor");

            var client = await _clienteRepository.Get(requestDto.ClienteId);
            if (client == null)
                return new OperacionDto<ResponseSimpleDto>(CodigosOperacionDto.NotExist, "No existe el cliente");

            if(requestDto.Cantidad < 1)
                return new OperacionDto<ResponseSimpleDto>(CodigosOperacionDto.Invalid, "La cantidad de los productos debe ser mayor a 0");

            await _facturaRepository.InsertInvoice(requestDto.Serie, requestDto.Codigo, requestDto.VendedorId, requestDto.ClienteId, requestDto.Fecha, requestDto.Moneda, requestDto.ProductId, requestDto.Cantidad, requestDto.Precio);

            return new OperacionDto<ResponseSimpleDto>(new ResponseSimpleDto()
            {
                Suceso = true,
                Mensaje = "Factura creada satisfactoriamente"
            });
        }
    }
}
