using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Threading.Tasks;
using System.Web.Http;
using EvaluacionQS.Integration.Infrastructure.Error;
using EvaluacionQS.Service.General.Dtos;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace EvaluacionQS.Integration.Controllers
{
    public class BaseController : ApiController
    {
        protected void GenerateBadRequestError(int errorCode, List<string> errors)
        {
            throw new ErrorMessageException(HttpStatusCode.BadRequest, errorCode, errors);
        }

        protected void GenerateNotFoundError(List<string> errors)
        {
            throw new ErrorMessageException(HttpStatusCode.NotFound, (int)HttpStatusCode.NotFound, errors);
        }

        protected void GenerarErrorDeOperacion<T>(OperacionDto<T> operacionDto)
        {
            throw new ErrorMessageException(HttpStatusCode.BadRequest, (int)operacionDto.Codigo, operacionDto.Mensajes);
        }

        protected void GenerarErrorSiNoHayCuerpoJson(Object objeto)
        {
            if (objeto == null)
            {
                GenerateBadRequestError((int)HttpStatusCode.BadRequest, new List<string>() { "Parametros de ingreso inválidos" });
            }
        }
        protected T ReturnResultShowErrors<T>(OperacionDto<T> operacion)
        {
            if (!operacion.Completado)
            {
                switch (operacion.Codigo)
                {
                    case CodigosOperacionDto.NotExist:
                        GenerateNotFoundError(operacion.Mensajes);
                        break;
                    default:
                        GenerarErrorDeOperacion(operacion);
                        break;
                }
            }
            return operacion.Resultado;
        }
        
    }
}
