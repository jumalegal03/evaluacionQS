using EvaluacionQS.Service.General.Dtos;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;

namespace EvaluacionQS.Service.General.Utilitarian
{
    public static class UtilityValidation
    {
        public static OperacionDto<T> ModelValidate<T>(Object objeto)
        {
            var contexto = new ValidationContext(objeto, null, null);
            var errores = new List<string>();
            var resultados = new List<ValidationResult>();
            var esValido = Validator.TryValidateObject(objeto, contexto, resultados, true);

            if (!esValido)
            {
                return new OperacionDto<T>(CodigosOperacionDto.Invalid, resultados.Select(e => e.ErrorMessage).ToList());
            }

            return new OperacionDto<T>(Activator.CreateInstance<T>());
        }
    }
}
