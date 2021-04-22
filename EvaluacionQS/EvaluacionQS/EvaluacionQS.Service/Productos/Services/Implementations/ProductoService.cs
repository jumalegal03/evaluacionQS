using EvaluacionQS.Service.General.Dtos;
using EvaluacionQS.Service.Productos.Services.Interfaces;
using EvaluationQS.Data.Repository.Interfaces;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace EvaluacionQS.Service.Productos.Services.Implementations
{
    public class ProductoService : IProductoService
    {
        private readonly IProductoRepository _productoRepository;

        public ProductoService(IProductoRepository productoRepository)
        {
            _productoRepository = productoRepository;
        }
        public async Task<OperacionDto<List<ListProductosResponseDto>>> GetAllProduct()
        {
            var list = await _productoRepository.Products();

            var dto = new List<ListProductosResponseDto>();

            foreach (var item in list)
            {
                var model = new ListProductosResponseDto()
                {
                    Descripcion = item.Descripcion,
                    PrecioUnitario = item.PrecioUnitario.ToString("#.##"),
                    ProductoId = item.ProductoId,
                    Categoria = item.Categoria
                };

                dto.Add(model);
            }

            return new OperacionDto<List<ListProductosResponseDto>>(dto);
        }
    }
}
