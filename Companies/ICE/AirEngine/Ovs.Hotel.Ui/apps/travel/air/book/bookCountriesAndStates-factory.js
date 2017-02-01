﻿(function () {
    'use strict';

    angular
        .module('airApp')
        .factory('countriesAndStates', countriesAndStates);

    countriesAndStates.$inject = [];

    function countriesAndStates() {
        var data = {};
        data =
            {
                countries: [
                    { Name: "USA", Id: "US" },
                    { Name: "Mexico", Id: "MX" },
                    { Name: "Canada", Id: "CA" },
                    { Name: "Afghanistan", Id: "AF" },
                    { Name: "Albania", Id:"AL" },
                    { Name: "Algeria", Id: "DZ" },
                    { Name: "American Samoa", Id: "AS" },
                    { Name: "Andora", Id: "AD" },
                    { Name: "Angola", Id: "AO" },
                    { Name: "Anguilla", Id:	"AI" },
                    { Name: "Antarctica", Id: "AQ" },
                    { Name: "Antigua", Id: "AG" },
                    { Name: "Argentina", Id: "AR" },
                    { Name: "Armenia", Id: "AM" },
                    { Name: "Aruba", Id: "AW" },
                    { Name: "Ascension Island/St. Helena", Id: "SH" },
                    { Name: "Australia", Id: "AU" },
                    { Name: "Austria", Id: "AT" },
                    { Name: "Azerbaijan", Id: "AZ" },
                    { Name: "Bahamas", Id: "BS" },
                    { Name: "Bahrain", Id: "BH" },
                    { Name: "Bangladesh", Id: "BD" },
                    { Name: "Barbados", Id: "BB" },
                    { Name: "Belarus", Id: "BY" },
                    { Name: "Belgium", Id: "BE" },
                    { Name: "Belize", Id: "BZ" },
                    { Name: "Benin", Id: "BJ" },
                    { Name: "Bermuda", Id: "BM" },
                    { Name: "Bhutan", Id: "BT" },
                    { Name: "Bolivia", Id: "BO" },
                    { Name: "Bosnia-Hercegovina", Id: "BA" },
                    { Name: "Botswana", Id: "BW" },
                    { Name: "Brazil", Id: "BR" },
                    { Name: "British Virgin Islands", Id: "VG" },
                    { Name: "Brunei", Id: "BN" },
                    { Name: "Bulgaria", Id: "BG" },
                    { Name: "Burkina Faso", Id: "BF" },
                    { Name: "Burundi", Id: "BI" },
                    { Name: "Cambodia", Id: "KH" },
                    { Name: "Cameroon, United Republic of", Id: "CM" },
                    { Name: "Canada", Id: "CA" },
                    { Name: "Cape Verde", Id: "CV" },
                    { Name: "Cayman Islands", Id: "KY" },
                    { Name: "Central African Republic", Id: "CF" },
                    { Name: "Chad", Id: "TD" },
                    { Name: "Chile", Id: "CL" },
                    { Name: "China", Id: "CN" },
                    { Name: "Christmas Island", Id: "CX" },
                    { Name: "Cocos Islands", Id: "CC" },
                    { Name: "Colombia", Id: "CO" },
                    { Name: "Comoros", Id: "KM" },
                    { Name: "Congo", Id: "CG" },
                    { Name: "Cook Islands", Id: "CK" },
                    { Name: "Costa Rica", Id: "CR" },
                    { Name: "Croatia", Id: "HR" },
                    { Name: "Cuba", Id: "CU" },
                    { Name: "Curacao/ Netherlands Antilles", Id: "AN" },
                    { Name: "Cyprus", Id: "CY" },
                    { Name: "Czech Republic", Id: "CZ" },
                    { Name: "Denmark", Id: "DK" },
                    { Name: "Djibouti", Id: "DJ" },
                    { Name: "Dominica", Id: "DM" },
                    { Name: "Dominican Republic", Id: "DO" },
                    { Name: "Ecuador", Id: "EC" },
                    { Name: "Egypt", Id: "EG" },
                    { Name: "El Salvador", Id: "SV" },
                    { Name: "Equatorial Guinea", Id: "GQ" },
                    { Name: "Eritrea", Id: "ER" },
                    { Name: "Estonia", Id: "EE" },
                    { Name: "Ethiopia", Id: "ET" },
                    { Name: "Falkland Islands", Id: "FK" },
                    { Name: "Faroe Islands", Id: "FO" },
                    { Name: "Fiji", Id: "FJ" },
                    { Name: "Finland", Id: "FI" },
                    { Name: "France", Id: "FR" },
                    { Name: "French Guiana", Id: "GF" },
                    { Name: "Gabon", Id: "GA" },
                    { Name: "Gambia", Id: "GM" },
                    { Name: "Georgia", Id: "GE" },
                    { Name: "Germany", Id: "DE" },
                    { Name: "Ghana", Id: "GH" },
                    { Name: "Gibraltar", Id: "GI" },
                    { Name: "Greece", Id: "GR" },
                    { Name: "Greenland", Id: "GL" },
                    { Name: "Grenada", Id: "GD" },
                    { Name: "Guadeloupe", Id: "GP" },
                    { Name: "Guam", Id: "GU" },
                    { Name: "Guatemala", Id: "GT" },
                    { Name: "Guinea", Id: "GN" },
                    { Name: "Guinea Bissau", Id: "GW" },
                    { Name: "Guyana", Id: "GY" },
                    { Name: "Haiti", Id: "HT" },
                    { Name: "Holland", Id: "HL" },
                    { Name: "Honduras", Id: "HN" },
                    { Name: "Hong Kong", Id: "HK" },
                    { Name: "Hungary", Id: "HU" },
                    { Name: "Iceland", Id: "IS" },
                    { Name: "India", Id: "IN" },
                    { Name: "Indonesia", Id: "ID" },
                    { Name: "Iran", Id: "IR" },
                    { Name: "Iraq", Id: "IQ" },
                    { Name: "Ireland", Id: "IE" },
                    { Name: "Israel", Id: "IL" },
                    { Name: "Italy", Id: "IT" },
                    { Name: "Ivory Coast, Republic of", Id: "CI" },
                    { Name: "Jamaica", Id: "JM" },
                    { Name: "Japan", Id: "JP" }, 
                    { Name: "Jordan", Id: "JO" },
                    { Name: "Kazakhstan", Id: "KZ" },
                    { Name: "Kenya", Id: "KE" },
                    { Name: "Kiribati", Id: "KI" },
                    { Name: "Korea, North", Id: "KP" },
                    { Name: "Kuwait", Id: "KW" },
                    { Name: "Kyrgyzstan", Id: "KG" },
                    { Name: "Laos", Id: "LA" },
                    { Name: "Latvia", Id: "LV" },
                    { Name: "Lebanon", Id: "LB" },
                    { Name: "Lesotho", Id: "LS" },
                    { Name: "Liberia", Id: "LR" },
                    { Name: "Libya", Id: "LY" },
                    { Name: "Liechtenstein", Id: "LI" },
                    { Name: "Lithuania", Id: "LT" },
                    { Name: "Luxembourg", Id: "LU" },
                    { Name: "Macau", Id: "MO" },
                    { Name: "Macedonia,  F Y R O M", Id: "MK" },
                    { Name: "Madagascar (Malagasy)", Id: "MG" },
                    { Name: "Malawi", Id: "MW" },
                    { Name: "Malaysia", Id: "MY" },
                    { Name: "Maldives", Id: "MV" },
                    { Name: "Mali", Id: "ML" },
                    { Name: "Malta", Id: "MT" },
                    { Name: "Marianna Island", Id: "MP" },
                    { Name: "Marshall Islands", Id: "MH" },
                    { Name: "Martinique / French Antilles", Id: "MQ" },
                    { Name: "Mauritania", Id: "MR" },
                    { Name: "Mauritius", Id: "MU" },
                    { Name: "Mayotte", Id: "YT" },
                    { Name: "Mexico", Id: "MX" },
                    { Name: "Micronesia", Id: "FM" },
                    { Name: "Moldova", Id: "MD" },
                    { Name: "Monaco", Id: "MC" },
                    { Name: "Mongolia", Id: "MN" },
                    { Name: "Montenegro", Id: "ME" },
                    { Name: "Montserrat", Id: "MS" },
                    { Name: "Morocco", Id: "MA" },
                    { Name: "Mozambique", Id: "MZ" },
                    { Name: "Myanmar", Id: "MM" },
                    { Name: "Namibia", Id: "NA" },
                    { Name: "Nauru", Id: "NR" },
                    { Name: "Nepal", Id: "NP" },
                    { Name: "Netherlands", Id: "NL" },
                    { Name: "Netherlands Antilles", Id: "AN" },
                    { Name: "New Caledonia", Id: "NC" },
                    { Name: "New Zealand", Id: "NZ" },
                    { Name: "Nicaragua", Id: "NI" },
                    { Name: "Niger", Id: "NE" },
                    { Name: "Nigeria", Id: "NG" },
                    { Name: "Niue", Id: "NU" },
                    { Name: "Norfolk Island", Id: "NF" },
                    { Name: "Norway", Id: "NO" },
                    { Name: "Oman", Id: "OM" },
                    { Name: "Pakistan", Id: "PK" },
                    { Name: "Palau", Id: "PW" },
                    { Name: "Panama", Id: "PA" },
                    { Name: "Papua New Guinea", Id: "PG" },
                    { Name: "Paraguay", Id: "PY" },
                    { Name: "Peru", Id: "PE" },
                    { Name: "Philippines", Id: "PH" },
                    { Name: "Poland", Id: "PL" },
                    { Name: "Portugal", Id: "PT" },
                    { Name: "Puerto Rico", Id: "PR" },
                    { Name: "Qatar", Id: "QA" },
                    { Name: "Reunion", Id: "RE" },
                    { Name: "Romania", Id: "RO" },
                    { Name: "Russia", Id: "RU" },
                    { Name: "Rwanda", Id: "RW" },
                    { Name: "Saint Helena", Id: "SH" },
                    { Name: "Saint Vincent & The Grenadines", Id: "VC" },
                    { Name: "Samoa", Id: "WS" },
                    { Name: "San Marino", Id: "SM" },
                    { Name: "Sao Tome & Principe", Id: "ST" },
                    { Name: "Saudi Arabia", Id: "SA" },
                    { Name: "Scotland", Id: "SF" },
                    { Name: "Senegal", Id: "SN" },
                    { Name: "Serbia", Id: "YO" },
                    { Name: "Seychelles", Id: "SC" },
                    { Name: "Sierra Leone", Id: "SL" },
                    { Name: "Singapore", Id: "SG" },
                    { Name: "Slovakia", Id: "SK" },
                    { Name: "Slovenia", Id: "SI" },
                    { Name: "Solomon Islands", Id: "SB" },
                    { Name: "Somalia", Id: "SO" },
                    { Name: "South Africa", Id: "ZA" },
                    { Name: "South Korea", Id: "KR" },
                    { Name: "Spain", Id: "ES" },
                    { Name: "Sri Lanka", Id: "LK" },
                    { Name: "St. Kitts-Nevis", Id: "KN" },
                    { Name: "St. Lucia", Id: "LC" },
                    { Name: "St. Maarten", Id: "MF" },
                    { Name: "St. Pierre & Miquelon", Id: "PM" },
                    { Name: "Sudan", Id: "SD" },
                    { Name: "Suriname", Id: "SR" },
                    { Name: "Swaziland", Id: "SZ" },
                    { Name: "Sweden", Id: "SE" },
                    { Name: "Switzerland", Id: "CH" },
                    { Name: "Syria Arab Republic", Id: "SY" },
                    { Name: "Tahiti - French Polynesia", Id: "PF" },
                    { Name: "Taiwan", Id: "TW" },
                    { Name: "Tajikstan", Id: "TJ" },
                    { Name: "Tanzania", Id: "TZ" },
                    { Name: "Thailand", Id: "TH" },
                    { Name: "Togo", Id: "TG" },
                    { Name: "Tonga", Id: "TO" },
                    { Name: "Trinidad and Tobago", Id: "TT" },
                    { Name: "Tunisia", Id: "TN" },
                    { Name: "Turkey", Id: "TR" },
                    { Name: "Turkmenistan", Id: "TM" },
                    { Name: "Turks and Caicos Islands", Id: "TC" },
                    { Name: "Tuvala", Id: "TV" },
                    { Name: "Uganda", Id: "UG" },
                    { Name: "Ukraine", Id: "UA" },
                    { Name: "United Arab Emirates", Id: "AE" },
                    { Name: "United Kingdom", Id: "GB" },
                    { Name: "Uruguay", Id: "UY" },
                    { Name: "US Virgin Islands", Id: "VI" },
                    { Name: "Uzbekistan Sum", Id: "UZ" },
                    { Name: "Vanuatu", Id: "VU" },
                    { Name: "Vatican City State", Id: "VA" },
                    { Name: "Venezuela", Id: "VE" },
                    { Name: "Vietnam", Id: "VN" },
                    { Name: "Wallis & Futuna Islands", Id: "WF" },
                    { Name: "Western Sahara", Id: "EH" },
                    { Name: "Yemen,  Republic of", Id: "YE" },
                    { Name: "Yugoslavia", Id: "YU" },
                    { Name: "Zambia", Id: "ZM" },
                    { Name: "Zimbabwe", Id: "ZW" }
                ],
                usStates: [
                    { Name: "Alabama", Id: "AL" },
                    { Name: "Alaska", Id: "AK" },
                    { Name: "Arizona", Id: "AZ" },
                    { Name: "Arkansas ", Id: "AR" },
                    { Name: "California ", Id: "CA" },
                    { Name: "Colorado ", Id: "CO" },
                    { Name: "Connecticut", Id: "CT" },
                    { Name: "Delaware", Id: "DE" },
                    { Name: "Florida ", Id: "FL" },
                    { Name: "Georgia", Id: "GA" },
                    { Name: "Hawaii", Id: "HI" },
                    { Name: "Iowa", Id: "IA" },
                    { Name: "Idaho", Id: "ID" },
                    { Name: "Illinois", Id: "IL" },
                    { Name: "Indiana", Id: "IN" },
                    { Name: "Kansas", Id: "KS" },
                    { Name: "Kentucky", Id: "KY" },
                    { Name: "Louisiana", Id: "LA" },
                    { Name: "Massachusetts", Id: "MA" },
                    { Name: "Maryland", Id: "MD" },
                    { Name: "Maine", Id: "ME" },
                    { Name: "Michigan", Id: "MI" },
                    { Name: "Minnesota", Id: "MN" },
                    { Name: "Missouri", Id: "MO" },
                    { Name: "Mississippi", Id: "MS" },
                    { Name: "Montana", Id: "MT" },
                    { Name: "North Carolina", Id: "NC" },
                    { Name: "North Dakota", Id: "ND" },
                    { Name: "Nebraska", Id: "NE" },
                    { Name: "New Hampshire", Id: "NH" },
                    { Name: "New Jersey", Id: "NJ" },
                    { Name: "New Mexico", Id: "NM" },
                    { Name: "Nevada", Id: "NV" },
                    { Name: "New York", Id: "NY" },
                    { Name: "Ohio", Id: "OH" },
                    { Name: "Oklahoma", Id: "OK" },
                    { Name: "Oregon", Id: "OR" },
                    { Name: "Pennsylvania", Id: "PA" },
                    { Name: "Rhode Island", Id: "RI" },
                    { Name: "South Carolina", Id: "SC" },
                    { Name: "South Dakota", Id: "SD" },
                    { Name: "Tennessee", Id: "TN" },
                    { Name: "Texas", Id: "TX" },
                    { Name: "Utah", Id: "UT" },
                    { Name: "Virginia", Id: "VA" },
                    { Name: "Washington", Id: "WA" },
                    { Name: "Vermont", Id: "VT" },
                    { Name: "Wisconsin", Id: "WI" },
                    { Name: "West Virginia", Id: "WV" },
                    { Name: "Wyoming", Id: "WY" },
                    { Name: "District of Columbia", Id: "DC" },
                    { Name: "American Samoa", Id: "AS" },
                    { Name: "Guam", Id: "GU" },
                    { Name: "Northern Mariana Islands", Id: "MP" },
                    { Name: "Puerto Rico", Id: "PR" },
                    { Name: "UA Virgin Islands", Id: "VI" },
                    { Name: "Marshall Islands", Id: "MH" },
                    { Name: "U.S. Armed Forces - Americas", Id: "AA" },
                    { Name: "U.S. Armed Forces - Europe", Id: "AE" },
                    { Name: "U.S. Armed Forces - Pacific", Id: "AP" }
                ],
                caStates: [
                    {Name: "Alberta", Id: "AB"},
                    {Name: "British Columbia",Id: "BC"},
                    {Name: "Manitoba", Id: "MB"},
                    {Name: "New Brunswick", Id: "NB"},
                    {Name: "Newfoundland and Labrador", Id: "NL"},
                    {Name: "Northwest Territories", Id: "NT"},
                    {Name: "Nova Scotia", Id: "NS"},
                    {Name: "Ontario", Id: "ON"},
                    {Name: "Prince Edward Island",Id: "PE"},
                    {Name: "Quebec", Id: "QC"},
                    {Name: "Saskatchewan",Id: "SK"},
                    { Name: "Yukon", Id: "YT" }
                ],
                mxStates: [
                    {Name: "Aguascalientes", Id: "AQ"},
                    {Name: "Baja California", Id: "BAC"},
                    {Name: "Baja California Sur", Id: "BACS"},
                    {Name: "Chiapas", Id: "CHP"},
                    {Name: "Coahuila", Id: "COH"},
                    {Name: "Distrito Federal", Id: "DF"},
                    {Name: "Durango", Id: "DU"},
                    {Name: "Guanajuato", Id: "GU"},
                    {Name: "Hidalgo", Id: "HID"},
                    {Name: "Jalisco", Id: "JAL"},
                    {Name: "Mexico", Id: "MEX"},
                    {Name: "Michoacan", Id: "MIC"},
                    {Name: "Morelos", Id: "MOR"},
                    {Name: "Nayarit", Id: "NAY"},
                    {Name: "Nuevo Leon", Id: "NUE"},
                    {Name: "Oaxaca", Id: "OAX"},
                    {Name: "Quintana Roo", Id: "QUR"},
                    {Name: "San Luis Potosi", Id: "SLP"},
                    {Name: "Sinaloa", Id: "SIN"},
                    {Name: "Sonora", Id: "SON"},
                    {Name: "Tabasco", Id: "TAB"},
                    {Name: "Tlaxcala", Id: "TLAX"},
                    {Name: "Veracruz", Id: "VERA"},
                    {Name: "Yucatan", Id: "YUC"},
                    {Name: "Zacatecas", Id: "ZAC"},
                    {Name: "Campeche", Id: "CAM"},
                    {Name: "Chihuahua", Id: "CHI"},
                    {Name: "Colima", Id: "COL"},
                    {Name: "Guerrero", Id: "GUE"},
                    {Name: "Puebla", Id: "PUE"},
                    {Name: "Queretaro", Id: "QUE"},
                    { Name: "Tamaulipas", Id: "TAM" }
                ],
                auStates: [
                    { Name: "Queensland", Id: "QLD" },
                    { Name: "New South Wales", Id: "NSW" },
                    { Name: "South Australia", Id: "SA" },
                    { Name: "Northern Territory", Id: "NT" },
                    { Name: "Western Australia", Id: "WA" },
                    { Name: "Tasmania", Id: "TAS" },
                    { Name: "Victoria", Id: "VIC" },
                    { Name: "Australian Capital Territory", Id: "ACT" }
                ]
            };

        return data;
    };

})();