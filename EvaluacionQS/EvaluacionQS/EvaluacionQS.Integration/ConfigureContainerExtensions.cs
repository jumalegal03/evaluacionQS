using EvaluacionQS.Data.Base.Implementations;
using EvaluacionQS.Data.Base.Interface;
using EvaluacionQS.Service.Clientes.Services.Implementations;
using EvaluacionQS.Service.Clientes.Services.Interfaces;
using EvaluacionQS.Service.Facturas.Services.Implementations;
using EvaluacionQS.Service.Facturas.Services.Interfaces;
using EvaluacionQS.Service.Productos.Services.Implementations;
using EvaluacionQS.Service.Productos.Services.Interfaces;
using EvaluacionQS.Service.Vendedores.Services.Implementations;
using EvaluacionQS.Service.Vendedores.Services.Interfaces;
using EvaluationQS.Data.Repository.Implementations;
using EvaluationQS.Data.Repository.Interfaces;
using Microsoft.Extensions.DependencyInjection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace EvaluacionQS.Integration
{
    public static class ConfigureContainerExtensions
    {

        public static void AddRepository(this IServiceCollection serviceCollection)
        {

            serviceCollection.AddScoped(typeof(IRepository<>), typeof(Repository<>));
            serviceCollection.AddScoped(typeof(IClienteRepository), typeof(ClienteRepository));
            serviceCollection.AddScoped(typeof(IProductoRepository), typeof(ProductoRepository));
            serviceCollection.AddScoped(typeof(IVendedorRepository), typeof(VendedorRepository));
            serviceCollection.AddScoped(typeof(IFacturaRepository), typeof(FacturaRepository));
        }

        public static void AddTransientServices(this IServiceCollection serviceCollection)
        {

            serviceCollection.AddTransient<IClienteService, ClienteService>();
            serviceCollection.AddTransient<IClienteService, ClienteService>();
            serviceCollection.AddTransient<IProductoService, ProductoService>();
            serviceCollection.AddTransient<IVendedorService, VendedorService>();
            serviceCollection.AddTransient<IFacturaService, FacturaService>();

        }
    }
}
