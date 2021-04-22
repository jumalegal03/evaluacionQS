using EvaluacionQS.Service.General.Dtos;
using EvaluacionQS.Service.Vendedores.Services.Interfaces;
using EvaluationQS.Data.Repository.Interfaces;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.Text;
using System.Threading.Tasks;

namespace EvaluacionQS.Service.Vendedores.Services.Implementations
{
    public class VendedorService : IVendedorService
    {
        private readonly IVendedorRepository _vendedorRepository;

        public VendedorService(IVendedorRepository vendedorRepository)
        {
            _vendedorRepository = vendedorRepository;
        }

        public async Task<OperacionDto<List<ListVendedores2019ResponseDto>>> GetAllSellers2019()
        {
            var list = await _vendedorRepository.Sellers2019();

            var dto = new List<ListVendedores2019ResponseDto>();

            foreach (var item in list)
            {
                var model = new ListVendedores2019ResponseDto()
                {
                    VendedorId = item.VendedorId,
                    Nombres = item.Nombres,
                    Apellidos = item.Apellidos,
                    Dni = item.Dni,
                    FechaIngreso = item.FechaIngreso.ToString("dd/MM/yyyy h:mm tt", CultureInfo.InvariantCulture)
                };

                dto.Add(model);
            }

            return new OperacionDto<List<ListVendedores2019ResponseDto>>(dto);
        }
    }
}
