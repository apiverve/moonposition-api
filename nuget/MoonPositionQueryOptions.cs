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
        public double Lat { get; set; }

        /// <summary>
        /// The longitude of the location
        /// </summary>
        [JsonProperty("lon")]
        public double Lon { get; set; }

        /// <summary>
        /// The date to get the moon position data for (MM-dd-yyyy)
        /// </summary>
        [JsonProperty("date")]
        public string Date { get; set; }

        /// <summary>
        /// The time of day for the calculation (HH:mm format, 24-hour). Defaults to 00:00 if not provided
        /// </summary>
        [JsonProperty("time")]
        public string Time { get; set; }
    }
}
