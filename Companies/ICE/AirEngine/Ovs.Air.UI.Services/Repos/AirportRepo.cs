using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using Newtonsoft.Json;
using Ovs.Air.Ui.Services.Models;

namespace Ovs.Air.Ui.Services.Repos
{
    internal static class AirportRepo
    {
        private static List<Airport> _airports;
        private static List<AirLineCode> _airlines;

        static AirportRepo()
        {
            LoadAirports();
            LoadAirlines();
        }

        public static IEnumerable<Airport> GetMatching(string term)
        {
            List<Airport> returnValue = new List<Airport>();
            returnValue = _airports.Where(a => a.MatchTerms.Contains(term.ToUpper())).OrderByDescending(o=>o.Weight).ToList();
            return returnValue;
        }

        public static IEnumerable<AirLineCode> GetAllAirlines()
        {
            List<AirLineCode> airLineCode = new List<AirLineCode>();
            airLineCode = _airlines;
            return airLineCode;
        }

        public static IEnumerable<AirLineCode> GetAirlinesByCarrierId(string code)
        {
            List<AirLineCode> airLineCode = new List<AirLineCode>();
            airLineCode = _airlines.Where(x => x.CarrierId.Contains(code.ToUpper())).ToList();
            return airLineCode;
        }
        

        private static void LoadAirlines()
        {
            List<AirLineCode> airLine = new List<AirLineCode>();
            string sourceUrl = AppDomain.CurrentDomain.BaseDirectory + "/App_Data/Airlines.json";
            using (StreamReader streamReader = new StreamReader(sourceUrl))
            {
                string json = streamReader.ReadToEnd();
                airLine = JsonConvert.DeserializeObject<List<AirLineCode>>(json);
            }

            _airlines = airLine;

        }


        private static void LoadAirports()
        {
            List<Airport> loaded = new List<Airport>();

            String sourceUrl = AppDomain.CurrentDomain.BaseDirectory + "/App_Data/airportlist.json";

            using (StreamReader r = new StreamReader(sourceUrl))
            {
                string json = r.ReadToEnd();
                loaded = JsonConvert.DeserializeObject<List<Airport>>(json);
            }

            _airports = loaded;
        }
    }
}