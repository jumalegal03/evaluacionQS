using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Text;

namespace EvaluacionQS.Service.Facturas
{
    public class ListFacturasResponseDto
    {
        [JsonProperty(PropertyName = "factura_id")]
        public int FacturaId { get; set; }
        [JsonProperty(PropertyName = "cliente")]
        public string Cliente { get; set; }
        [JsonProperty(PropertyName = "vendedor")]
        public string Vendedor { get; set; }
        [JsonProperty(PropertyName = "importe")]
        public decimal Importe { get; set; }
        [JsonProperty(PropertyName = "fecha")]
        public string Fecha { get; set; }
    }
}
