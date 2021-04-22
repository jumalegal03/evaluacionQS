using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Text;

namespace EvaluacionQS.Service.General.Dtos
{
    public class ResponseSimpleDto
    {
        [JsonProperty(PropertyName = "mensaje")]
        public string Mensaje { get; set; }

        [JsonProperty(PropertyName = "id")]
        public bool Suceso { get; set; }
    }
}
