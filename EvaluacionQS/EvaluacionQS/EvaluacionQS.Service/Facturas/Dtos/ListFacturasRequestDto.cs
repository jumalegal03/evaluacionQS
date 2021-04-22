using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace EvaluacionQS.Service.Facturas
{
    public class ListFacturasRequestDto
    {
        [Required(ErrorMessage = "Serie es requerido")]
        [JsonProperty(PropertyName = "dia")]
        public int Day { get; set; }
    }
}
