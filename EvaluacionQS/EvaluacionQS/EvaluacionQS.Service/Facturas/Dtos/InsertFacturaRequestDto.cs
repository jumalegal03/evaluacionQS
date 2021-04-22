using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace EvaluacionQS.Service.Facturas.Dtos
{
    public class InsertFacturaRequestDto
    {
        [Required(ErrorMessage = "Serie es requerido")]
        [JsonProperty(PropertyName = "serie")]
        public string Serie { get; set; }

        [Required(ErrorMessage = "Codigo es requerido")]
        [JsonProperty(PropertyName = "codigo")]
        public string Codigo { get; set; }

        [Required(ErrorMessage = "VendedorId es requerido")]
        [JsonProperty(PropertyName = "vendedorId")]
        public int VendedorId { get; set; }

        [Required(ErrorMessage = "ClienteId es requerido")]
        [JsonProperty(PropertyName = "clienteId")]
        public int ClienteId { get; set; }

        [Required(ErrorMessage = "Fecha es requerido")]
        [JsonProperty(PropertyName = "fecha")]
        public DateTime Fecha { get; set; }


        [Required(ErrorMessage = "Moneda es requerido")]
        [JsonProperty(PropertyName = "moneda")]
        public char Moneda { get; set; }

        [Required(ErrorMessage = "ProductId es requerido")]
        [JsonProperty(PropertyName = "productId")]
        public int ProductId { get; set; }

        [Required(ErrorMessage = "Cantidad es requerido")]
        [JsonProperty(PropertyName = "cantidad")]
        public int Cantidad { get; set; }

        [Required(ErrorMessage = "Precio es requerido")]
        [JsonProperty(PropertyName = "precio")]
        public decimal Precio { get; set; }
    }
}
