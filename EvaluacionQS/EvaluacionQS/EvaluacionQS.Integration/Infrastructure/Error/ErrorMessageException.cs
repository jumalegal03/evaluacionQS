using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Threading.Tasks;

namespace EvaluacionQS.Integration.Infrastructure.Error
{
    public class ErrorMessageException : Exception
    {
        public HttpStatusCode HttpCode { get; private set; }
        public int CodigoError { get; private set; }

        public List<string> Errores { get; private set; }

        public ErrorMessageException(HttpStatusCode httpCode, int codigoError, List<string> errores)
        {
            HttpCode = httpCode;
            CodigoError = codigoError;
            Errores = errores;
        }
    }
}
