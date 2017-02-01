using System;
using System.Net;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Web.Http;
using Newtonsoft.Json;
using Ovs.Air.API.Models;
using Ovs.Air.Ui.Services.Models;
using Ovs.Core.Configuration.Interfaces;
using Ovs.Core.Logging.Interfaces;
using Ovs.Core.Utility.LocalConfig;

namespace Ovs.Air.Ui.Services.Controllers
{
    public abstract class AirBaseWebApiController : ApiController
    {
        #region Protected Fields

        protected IOvsLocalConfigurationSettings OvsLocalSettings;
        protected IOvsConfigSettings OvsSettings;
        protected IOvsLogger OvsLogger;

        #endregion

        #region Protected Methods

        protected AirBaseWebApiController()
        {
            OvsLocalSettings = Utilities.IocContainer.GetInstance<IOvsLocalConfigurationSettings>();
            OvsSettings = Utilities.IocContainer.GetInstance<IOvsConfigSettings>();
            OvsLogger = Utilities.IocContainer.GetInstance<IOvsLogger>();
        }

        protected HttpResponseMessage PerformAirApiGet<TResponse>(string route, string query)
            where TResponse : BaseApiResponse
        {
            try
            {
                var responseJson = DoAirApiGet(route, query);
                var apiResponse = JsonConvert.DeserializeObject<TResponse>(responseJson);
                return Request.CreateResponse(HttpStatusCode.OK, apiResponse);
            }
            catch (Exception ex)
            {
                this.OvsLogger.LogException(ex, SeverityLevel.Fatal, $"Exception when calling API route [{route}] ");

                var response = new ExceptionResponse
                {
                    Success = false,
                    ErrorCode = "EXCEPTION",
                    ErrorShortMessage = ex.Message,
                    ErrorDetailedMessage = ex.ToString()
                };

                return Request.CreateResponse(HttpStatusCode.InternalServerError, response);
            }
        }

        protected HttpResponseMessage PerformAirApiPost<TRequest, TResponse>(string route, TRequest apiRequest)
            where TRequest : BaseApiRequest 
            where TResponse : BaseApiResponse
        {
            try
            {
                string requestJson = JsonConvert.SerializeObject(apiRequest);
                var responseJson = DoAirApiPost(route, requestJson);
                var apiResponse = JsonConvert.DeserializeObject<TResponse>(responseJson);
                return Request.CreateResponse(HttpStatusCode.OK, apiResponse);
            }
            catch (Exception ex)
            {
                this.OvsLogger.LogException(ex, SeverityLevel.Fatal, $"Exception when calling API route [{route}] CorrelationId: [{apiRequest.CorrelationId}]");

                var response = new ExceptionResponse
                {
                    Success = false,
                    ErrorCode = "EXCEPTION",
                    ErrorShortMessage = ex.Message,
                    ErrorDetailedMessage = ex.ToString()
                };

                return Request.CreateResponse(HttpStatusCode.InternalServerError, response);
            }
        }

        #endregion

        #region Private Methods

        private string DoAirApiGet(string relativeUri, string queryString)
        {
            using (var httpClient = new HttpClient())
            {
                httpClient.BaseAddress = new Uri(GetAirApiEndpoint());
                httpClient.DefaultRequestHeaders.Accept.Clear();
                httpClient.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
                httpClient.Timeout = TimeSpan.FromSeconds(120);

                var response = httpClient.GetAsync(relativeUri + queryString).Result;

                return response.Content.ReadAsStringAsync().Result;
            }
        }

        private string DoAirApiPost(string relativeUri, string jsonRequest)
        {
            using (var httpClient = new HttpClient())
            {
                httpClient.BaseAddress = new Uri(GetAirApiEndpoint());
                httpClient.DefaultRequestHeaders.Accept.Clear();
                httpClient.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
                httpClient.Timeout = TimeSpan.FromSeconds(240);

                HttpContent content = new StringContent(jsonRequest);
                content.Headers.ContentType = new MediaTypeHeaderValue("application/json");

                var response = httpClient.PostAsync(relativeUri, content).Result;

                return response.Content.ReadAsStringAsync().Result;
            }
        }

        private string GetAirApiEndpoint()
        {
            var apiUrlOverride = OvsLocalSettings.GetAppSettingsForKey("AirApiUrlOverride");

            return string.IsNullOrEmpty(apiUrlOverride) ? OvsSettings.GetStringValueForKey(OvsLocalSettings.GetAppSettingsForKey("AirApiEndpoint")) : apiUrlOverride;
        }

        #endregion
    }
}
