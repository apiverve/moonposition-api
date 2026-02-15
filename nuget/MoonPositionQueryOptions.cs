using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.MoonPosition
{
    /// <summary>
    /// Query options for the Moon Position API
    /// </summary>
    public class MoonPositionQueryOptions
    {
        /// <summary>
        /// The latitude of the location
        /// </summary>
        [JsonProperty("lat")]
        public string Lat { get; set; }

        /// <summary>
        /// The longitude of the location
        /// </summary>
        [JsonProperty("lon")]
        public string Lon { get; set; }

        /// <summary>
        /// The date to get the moon position data for (MM-dd-yyyy)
        /// </summary>
        [JsonProperty("date")]
        public string Date { get; set; }
    }
}
