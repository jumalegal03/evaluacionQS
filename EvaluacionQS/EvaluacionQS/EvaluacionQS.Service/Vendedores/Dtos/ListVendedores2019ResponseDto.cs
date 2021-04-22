using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Text;

namespace EvaluacionQS.Service.Vendedores
{
    public class ListVendedores2019ResponseDto
    {
        [JsonProperty(PropertyName = "vendedor_id")]
        public int VendedorId { get; set; }
        [JsonProperty(PropertyName = "nombres")]
        public string Nombres { get; set; }
        [JsonProperty(PropertyName = "apellidos")]
        public string Apellidos { get; set; }
        [JsonProperty(PropertyName = "dni")]
        public char Dni { get; set; }
        [JsonProperty(PropertyName = "fecha_ingreso")]
        public string FechaIngreso { get; set; }
    }
}
