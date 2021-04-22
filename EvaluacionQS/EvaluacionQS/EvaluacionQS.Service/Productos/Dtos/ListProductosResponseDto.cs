using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Text;

namespace EvaluacionQS.Service.Productos
{
    public class ListProductosResponseDto
    {
        [JsonProperty(PropertyName = "producto_id")]
        public int ProductoId { get; set; }
        [JsonProperty(PropertyName = "descripcion")]
        public string Descripcion { get; set; }
        [JsonProperty(PropertyName = "precio_unitario")]
        public string PrecioUnitario { get; set; }
        [JsonProperty(PropertyName = "categoria")]
        public char Categoria { get; set; }
    }
}
