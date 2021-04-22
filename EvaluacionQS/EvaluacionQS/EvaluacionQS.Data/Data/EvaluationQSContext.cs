using EvaluationQS.Data.Models.Entities;
using EvaluationQS.Data.Models.Procedure;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace EvaluacionQS.Data.Data
{
    public class EvaluationQSContext : DbContext
    {
        public EvaluationQSContext(DbContextOptions<EvaluationQSContext> options) : base(options)
        {
        }


        #region TABLES

        public DbSet<Cliente> Clientes { get; set; }
        public DbSet<DetalleFactura> DetalleFacturas { get; set; }
        public DbSet<Factura> Facturas { get; set; }
        public DbSet<Producto> Productos{ get; set; }
        public DbSet<Vendedor> Vendedores{ get; set; }
        public DbSet<ListClientesCategoriaA> ListClientesCategorias { get; set; }
        public DbSet<ListFacturas> ListFacturas { get; set; }
        public DbSet<ListProductos> ListProductos { get; set; }
        public DbSet<ListVendedores2019> ListVendedores2019 { get; set; }

        #endregion

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            foreach (var relationship in modelBuilder.Model.GetEntityTypes().SelectMany(e => e.GetForeignKeys()))
            {
                relationship.DeleteBehavior = DeleteBehavior.Restrict;
            }

            base.OnModelCreating(modelBuilder);


            modelBuilder.Entity<Cliente>(x => x.ToTable("Cliente"));
            modelBuilder.Entity<DetalleFactura>(x => x.ToTable("DetalleFactura"));
            modelBuilder.Entity<Factura>(x => x.ToTable("Factura"));
            modelBuilder.Entity<Producto>(x => x.ToTable("Producto"));
            modelBuilder.Entity<Vendedor>(x => x.ToTable("Vendedor"));

            modelBuilder.Entity<ListClientesCategoriaA>().HasNoKey();
            modelBuilder.Entity<ListFacturas>().HasNoKey();
            modelBuilder.Entity<ListProductos>().HasNoKey();
            modelBuilder.Entity<ListVendedores2019>().HasNoKey();
        }

    }
}
