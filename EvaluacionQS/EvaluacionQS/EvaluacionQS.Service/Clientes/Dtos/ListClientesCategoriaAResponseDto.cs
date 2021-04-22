using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Text;

namespace EvaluacionQS.Service.Clientes.Dtos
{
    public class ListClientesCategoriaAResponseDto
    {
        [JsonProperty(PropertyName = "cliente")]
        public string Cliente { get; set; }
        [JsonProperty(PropertyName = "categoria")]
        public char Categoria { get; set; }
    }
}
