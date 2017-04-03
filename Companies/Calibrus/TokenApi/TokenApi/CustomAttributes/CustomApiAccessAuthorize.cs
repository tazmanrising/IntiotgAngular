using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web.Http.Controllers;
using TokenApi.Core;

namespace TokenApi.CustomAttributes
{
    public class CustomApiAccessAuthorize : AuthorizeAttribute
    {

        public override void OnAuthorization(HttpActionContext actionContext)
        {
            IEnumerable<string> header;
            actionContext.Request.Headers.TryGetValues("Auth-Token", out header);

            var headerToken = "";
            var checkToken = false;
            if (header != null)
            {
                headerToken = ((string[])header)[0];
            }

            var tokenManager = new TokenManager();
            checkToken = tokenManager.CheckToken(headerToken);

            //if (header != null && header.First().Equals("Z4TTHmY98=gFw2rG", StringComparison.Ordinal))
            if (checkToken)
            {
                return;
            }
            else
            {
                actionContext.Response = actionContext.Request.CreateResponse(HttpStatusCode.Forbidden);
            }
        }

    }

}