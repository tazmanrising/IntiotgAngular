using Newtonsoft.Json;

namespace Ovs.Air.Ui.Services.Models
{
    internal class AirLineCode
    {
        [JsonProperty(PropertyName = "airline")]
        public string Airline { get; set; }

        [JsonProperty(PropertyName = "alliance")]
        public string Alliance { get; set; }

        [JsonProperty(PropertyName = "carrierId")]
        public string CarrierId { get; set; }
           
    }
}
