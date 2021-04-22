using System;
using System.Collections.Generic;
using System.Text;

namespace EvaluacionQS.Service.General.Dtos
{
    public enum CodigosOperacionDto
    {
        Success,
        ResultEmpty,
        WrongUser,
        DisableUser,
        OperationNotAvailable,
        InvalidAccess,
        NotExist,
        ServerError,
        Invalid,
        RequiredFields = 400
    }
}
