view: player {
  sql_table_name: fifa_19_jay.player ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

 dimension: name {
    type: string
    sql: ${TABLE}.Name;;
   html: {{linked_value}}
  <a href="https://www.google.com/search?q={{ value }}" height="90%" width="90%" target="_new">
  <img src="https://upload.wikimedia.org/wikipedia/commons/2/2d/Google-favicon-2015.png" height=15 width=15> </a> ;;
}
  dimension: nationality {
    type: string
    sql: ${TABLE}.Nationality ;;
  }

  dimension: wage {
    type: string
    sql: ${TABLE}.Wage ;;
  }

  dimension: body_type {
    type: string
    sql: ${TABLE}.Body_Type ;;
  }

  dimension: cam {
    type: string
    sql: ${TABLE}.CAM ;;
  }

  dimension: cb {
    type: string
    sql: ${TABLE}.CB ;;
  }

  dimension: cdm {
    type: string
    sql: ${TABLE}.CDM ;;
  }

  dimension: cf {
    type: string
    sql: ${TABLE}.CF ;;
  }

  dimension: club {
    type: string
    sql: ${TABLE}.Club ;;
  }

  dimension: club_logo {
    type: string
    sql: ${club} ;;
    html:
    {% if {{value}} == "Arsenal" %}
    <div><img src="https://platform-static-files.s3.amazonaws.com/premierleague/badges/t3.svg" width="55%" height="55%" align="middle"/></div>
    {% elsif {{value}} == "Brighton" %}
    <div><img src="https://platform-static-files.s3.amazonaws.com/premierleague/badges/t36.svg" width="55%" height="55%" align="middle"/></div>
    {% elsif {{value}} == "Burnley" %}
    <div><img src="" width="55%" height="55%" align="middle"/></div>
    {% elsif {{value}} == "Chelsea" %}
    <div><img src="https://platform-static-files.s3.amazonaws.com/premierleague/badges/t8.svg" width="55%" height="55%" align="middle"/></div>
    {% elsif {{value}} == "Crystal Palace" %}
    <div><img src="https://platform-static-files.s3.amazonaws.com/premierleague/badges/t31.svg" width="55%" height="55%" align="middle"/></div>
    {% elsif {{value}} == "Everton" %}
    <div><img src="https://platform-static-files.s3.amazonaws.com/premierleague/badges/t11.svg" width="55%" height="55%" align="middle"/></div>
    {% elsif {{value}} == "Huddersfield" %}
    <div><img src="https://platform-static-files.s3.amazonaws.com/premierleague/badges/t38.svg" width="55%" height="55%" align="middle"/></div>
    {% elsif {{value}} == "Leicester" %}
    <div><img src="https://platform-static-files.s3.amazonaws.com/premierleague/badges/t13.svg" width="55%" height="55%" align="middle"/></div>
    {% elsif {{value}} == "Liverpool" %}
    <div><img src="https://platform-static-files.s3.amazonaws.com/premierleague/badges/t14.svg" width="55%" height="55%" align="middle"/></div>
    {% elsif {{value}} == "Man City" %}
    <div><img src="https://platform-static-files.s3.amazonaws.com/premierleague/badges/t43.svg  " width="55%" height="55%" align="middle"/></div>
    {% elsif {{value}} == "Manchester United" %}
    <div><img src="https://platform-static-files.s3.amazonaws.com/premierleague/badges/t1.svg" width="55%" height="55%" align="middle"/></div>
    {% elsif {{value}} == "Newcastle United" %}
    <div><img src="https://platform-static-files.s3.amazonaws.com/premierleague/badges/t4.svg" width="55%" height="55%" align="middle"/></div>
    {% elsif {{value}} == "Southampton" %}
    <div><img src="https://platform-static-files.s3.amazonaws.com/premierleague/badges/t20.svg" width="55%" height="55%" align="middle"/></div>
    {% elsif {{value}} == "Stoke" %}
    <div><img src="https://cdn.shopify.com/s/files/1/1888/7339/files/Stoke_City_06_grande.jpg?v=1498033163" width="55%" height="55%" align="middle"/></div>
    {% elsif {{value}} == "Swansea City" %}
    <div><img src="" width="55%" height="55%" align="middle"/></div>
    {% elsif {{value}} == "Tottenham" %}
    <div><img src="https://platform-static-files.s3.amazonaws.com/premierleague/badges/t6.svg" width="55%" height="55%" align="middle"/></div>
    {% elsif {{value}} == "Watford" %}
    <div><img src="https://platform-static-files.s3.amazonaws.com/premierleague/badges/t57.svg" width="55%" height="55%" align="middle"/></div>
    {% elsif {{value}} == "West Bromwich Albion" %}
    <div><img src="https://platform-static-files.s3.amazonaws.com/premierleague/badges/t35.svg" width="55%" height="55%" align="middle"/></div>
    {% elsif {{value}} == "West Ham United" %}
    <div><img src="https://platform-static-files.s3.amazonaws.com/premierleague/badges/t21.svg" width="55%" height="55%" align="middle"/></div>
    {% elsif {{value}} == "Wolverhampton Wanderers" %}
    <div><img src="https://platform-static-files.s3.amazonaws.com/premierleague/badges/t39.svg" width="55%" height="55%" align="middle"/></div>
    {% endif %} ;;

  }

  dimension: weight {
    type: string
    sql: ${TABLE}.Weight ;;
  }

  dimension: work_rate {
    type: string
    sql: ${TABLE}.Work_Rate ;;
  }

  dimension: cm {
    type: string
    sql: ${TABLE}.CM ;;
  }

  dimension: contract_valid_until {
    type: string
    sql: ${TABLE}.Contract_Valid_Until ;;
  }

  dimension: height {
    type: string
    sql: ${TABLE}.Height ;;
  }

  dimension: jersey_number {
    type: number
    sql: ${TABLE}.Jersey_Number ;;
  }

  dimension: joined {
    type: string
    sql:${TABLE}.Joined ;;
  }

  dimension: int64_field_0 {
    type: number
    sql: ${TABLE}.int64_field_0 ;;
  }

  dimension: flag {
    type: string
    map_layer_name: countries
    sql: LOWER(CASE WHEN ${nationality}="Afghanistan" THEN  "AFG"
      WHEN ${nationality}="Aland Islands" THEN "ALA"
      WHEN ${nationality}="Albania" THEN "ALB"
      WHEN ${nationality}="Algeria" THEN "DZA"
      WHEN ${nationality}="American Samoa" THEN "ASM"
      WHEN ${nationality}="Andorra" THEN "AND"
      WHEN ${nationality}="Angola" THEN "AGO"
      WHEN ${nationality}="Anguilla" THEN "AIA"
      WHEN ${nationality}="Antarctica" THEN "ATA"
      WHEN ${nationality}="Antigua and Barbuda" THEN "ATG"
      WHEN ${nationality}="Argentina" THEN "ARG"
      WHEN ${nationality}="Armenia" THEN "ARM"
      WHEN ${nationality}="Aruba" THEN "ABW"
      WHEN ${nationality}="Australia" THEN "AUS"
      WHEN ${nationality}="Austria" THEN "AUT"
      WHEN ${nationality}="Azerbaijan" THEN "AZE"
      WHEN ${nationality}="Bahamas" THEN  "BHS"
      WHEN ${nationality}="Bahrain" THEN  "BHR"
      WHEN ${nationality}="Bangladesh" THEN "BGD"
      WHEN ${nationality}="Barbados" THEN "BRB"
      WHEN ${nationality}="Belarus" THEN  "BLR"
      WHEN ${nationality}="Belgium" THEN  "BEL"
      WHEN ${nationality}="Belize" THEN "BLZ"
      WHEN ${nationality}="Benin" THEN  "BEN"
      WHEN ${nationality}="Bermuda" THEN  "BMU"
      WHEN ${nationality}="Bhutan" THEN "BTN"
      WHEN ${nationality}="Bolivia" THEN  "BOL"
      WHEN ${nationality}="Bosnia and Herzegovina" THEN "BIH"
      WHEN ${nationality}="Botswana" THEN "BWA"
      WHEN ${nationality}="Bouvet Island" THEN "BVT"
      WHEN ${nationality}="Brazil" THEN "BRA"
      WHEN ${nationality}="British Virgin Islands" THEN "VGB"
      WHEN ${nationality}="British Indian Ocean Territory" THEN "IOT"
      WHEN ${nationality}="Brunei Darussalam" THEN "BRN"
      WHEN ${nationality}="Bulgaria" THEN "BGR"
      WHEN ${nationality}="Burkina Faso" THEN "BFA"
      WHEN ${nationality}="Burundi" THEN "BDI"
      WHEN ${nationality}="Cambodia" THEN "KHM"
      WHEN ${nationality}="Cameroon" THEN "CMR"
      WHEN ${nationality}="Canada" THEN "CAN"
      WHEN ${nationality}="Cape Verde" THEN "CPV"
      WHEN ${nationality}="Cayman Islands" THEN "CYM"
      WHEN ${nationality}="Central African Republic" THEN "CAF"
      WHEN ${nationality}="Chad" THEN "TCD"
      WHEN ${nationality}="Chile" THEN "CHL"
      WHEN ${nationality}="China" THEN "CHN"
      WHEN ${nationality}="Hong Kong" THEN "HKG"
      WHEN ${nationality}="Macao" THEN "MAC"
      WHEN ${nationality}="Christmas Island" THEN "CXR"
      WHEN ${nationality}="Cocos (Keeling) Islands" THEN "CCK"
      WHEN ${nationality}="Colombia" THEN "COL"
      WHEN ${nationality}="Comoros" THEN "COM"
      WHEN ${nationality}="Congo" THEN "COG"
      WHEN ${nationality}="Cook Islands" THEN "COK"
      WHEN ${nationality}="Costa Rica" THEN "CRI"
      WHEN ${nationality}="Ivory Coast" THEN "CIV"
      WHEN ${nationality}="Croatia" THEN "HRV"
      WHEN ${nationality}="Cuba" THEN "CUB"
      WHEN ${nationality}="Cyprus" THEN "CYP"
      WHEN ${nationality}="Czech Republic" THEN "CZE"
      WHEN ${nationality}="Denmark" THEN "DNK"
      WHEN ${nationality}="Djibouti"  THEN "DJI"
      WHEN ${nationality}="Dominica"  THEN "DMA"
      WHEN ${nationality}="Dominican Republic" THEN "DOM"
      WHEN ${nationality}="Ecuador" THEN "ECU"
      WHEN ${nationality}="Egypt" THEN "EGY"
      WHEN ${nationality}="El Salvador" THEN "SLV"
      WHEN ${nationality}="Equatorial Guinea" THEN "GNQ"
      WHEN ${nationality}="Eritrea" THEN  "ERI"
      WHEN ${nationality}="Estonia" THEN  "EST"
      WHEN ${nationality}="Ethiopia" THEN "ETH"
      WHEN ${nationality}="Falkland Islanda" THEN "FLK"
      WHEN ${nationality}="Faroe Islands" THEN "FRO"
      WHEN ${nationality}="Fiji" THEN "FJI"
      WHEN ${nationality}="Finland" THEN "FIN"
      WHEN ${nationality}="France" THEN "FRA"
      WHEN ${nationality}="French Guiana" THEN "GUF"
      WHEN ${nationality}="French Polynesia" THEN "PYF"
      WHEN ${nationality}="French Southern Territories" THEN "ATF"
      WHEN ${nationality}="Gabon" THEN "GAB"
      WHEN ${nationality}="Gambia" THEN "GMB"
      WHEN ${nationality}="Georgia" THEN "GEO"
      WHEN ${nationality}="Germany" THEN "DEU"
      WHEN ${nationality}="Ghana" THEN "GHA"
      WHEN ${nationality}="Gibraltar" THEN "GIB"
      WHEN ${nationality}="Greece" THEN "GRC"
      WHEN ${nationality}="Greenland" THEN "GRL"
      WHEN ${nationality}="Grenada" THEN "GRD"
      WHEN ${nationality}="Guadeloupe" THEN "GLP"
      WHEN ${nationality}="Guam"  THEN "GUM"
      WHEN ${nationality}="Guatemala" THEN "GTM"
      WHEN ${nationality}="Guernsey" THEN "GGY"
      WHEN ${nationality}="Guinea" THEN "GIN"
      WHEN ${nationality}="Guinea-Bissau" THEN "GNB"
      WHEN ${nationality}="Guyana" THEN "GUY"
      WHEN ${nationality}="Haiti" THEN "HTI"
      WHEN ${nationality}="Heard and Mcdonald Islands" THEN "HMD"
      WHEN ${nationality}="Holy See"  THEN "VAT"
      WHEN ${nationality}="Honduras" THEN "HND"
      WHEN ${nationality}="Hungary" THEN "HUN"
      WHEN ${nationality}="Iceland" THEN "ISL"
      WHEN ${nationality}="India" THEN "IND"
      WHEN ${nationality}="Indonesia" THEN "IDN"
      WHEN ${nationality}="Iran" THEN "IRN"
      WHEN ${nationality}="Iraq" THEN "IRQ"
      WHEN ${nationality}= "Republic of Ireland" THEN "IRL"
      WHEN ${nationality}="Isle of Man" THEN "IMN"
      WHEN ${nationality}="Israel" THEN "ISR"
      WHEN ${nationality}="Italy" THEN "ITA"
      WHEN ${nationality}="Jamaica" THEN "JAM"
      WHEN ${nationality}="Japan" THEN "JPN"
      WHEN ${nationality}="Jersey" THEN "JEY"
      WHEN ${nationality}="Jordan" THEN "JOR"
      WHEN ${nationality}="Kazakhstan" THEN "KAZ"
      WHEN ${nationality}="Kenya" THEN "KEN"
      WHEN ${nationality}="Kiribati" THEN "KIR"
      WHEN ${nationality}="Korea (North)" THEN "PRK"
      WHEN ${nationality}="Korea (South)" THEN "KOR"
      WHEN ${nationality}="Kuwait" THEN "KWT"
      WHEN ${nationality}="Kyrgyzstan" THEN "KGZ"
      WHEN ${nationality}="Lao" THEN "LAO"
      WHEN ${nationality}="Latvia" THEN "LVA"
      WHEN ${nationality}="Lebanon" THEN "LBN"
      WHEN ${nationality}="Lesotho" THEN "LSO"
      WHEN ${nationality}="Liberia" THEN "LBR"
      WHEN ${nationality}="Libya" THEN "LBY"
      WHEN ${nationality}="Liechtenstein" THEN "LIE"
      WHEN ${nationality}="Lithuania" THEN "LTU"
      WHEN ${nationality}="Luxembourg" THEN "LUX"
      WHEN ${nationality}="Macedonia" THEN "MKD"
      WHEN ${nationality}="Madagascar" THEN "MDG"
      WHEN ${nationality}="Malawi" THEN "MWI"
      WHEN ${nationality}="Malaysia" THEN "MYS"
      WHEN ${nationality}="Maldives" THEN "MDV"
      WHEN ${nationality}="Mali"  THEN "MLI"
      WHEN ${nationality}="Malta" THEN "MLT"
      WHEN ${nationality}="Marshall Islands" THEN "MHL"
      WHEN ${nationality}="Martinique" THEN "MTQ"
      WHEN ${nationality}="Mauritania" THEN "MRT"
      WHEN ${nationality}="Mauritius" THEN "MUS"
      WHEN ${nationality}="Mayotte" THEN "MYT"
      WHEN ${nationality}="Mexico" THEN "MEX"
      WHEN ${nationality}="Micronesia" THEN "FSM"
      WHEN ${nationality}="Moldova" THEN "MDA"
      WHEN ${nationality}="Monaco" THEN "MCO"
      WHEN ${nationality}="Mongolia"  THEN "MNG"
      WHEN ${nationality}="Montenegro" THEN "MNE"
      WHEN ${nationality}="Montserrat" THEN "MSR"
      WHEN ${nationality}="Morocco" THEN "MAR"
      WHEN ${nationality}="Mozambique" THEN "MOZ"
      WHEN ${nationality}="Myanmar" THEN "MMR"
      WHEN ${nationality}="Namibia" THEN "NAM"
      WHEN ${nationality}="Nauru" THEN "NRU"
      WHEN ${nationality}="Nepal" THEN "NPL"
      WHEN ${nationality}="Netherlands" THEN "NLD"
      WHEN ${nationality}="Netherlands Antilles" THEN "ANT"
      WHEN ${nationality}="New Caledonia" THEN "NCL"
      WHEN ${nationality}="New Zealand" THEN "NZL"
      WHEN ${nationality}="Nicaragua" THEN "NIC"
      WHEN ${nationality}="Niger" THEN "NER"
      WHEN ${nationality}="Nigeria" THEN "NGA"
      WHEN ${nationality}="Niue" THEN "NIU"
      WHEN ${nationality}="Norfolk Island" THEN "NFK"
      WHEN ${nationality}="Northern Mariana Islands" THEN "MNP"
      WHEN ${nationality}="Norway" THEN "NOR"
      WHEN ${nationality}="Oman" THEN "OMN"
      WHEN ${nationality}="Pakistan" THEN "PAK"
      WHEN ${nationality}="Palau" THEN "PLW"
      WHEN ${nationality}="Palestinian Territory" THEN "PSE"
      WHEN ${nationality}="Panama" THEN "PAN"
      WHEN ${nationality}="Papua New Guinea" THEN "PNG"
      WHEN ${nationality}="Paraguay" THEN "PRY"
      WHEN ${nationality}="Peru" THEN "PER"
      WHEN ${nationality}="Philippines" THEN "PHL"
      WHEN ${nationality}="Pitcairn"  THEN "PCN"
      WHEN ${nationality}="Poland" THEN "POL"
      WHEN ${nationality}="Portugal" THEN "PRT"
      WHEN ${nationality}="Puerto Rico" THEN "PR"
      WHEN ${nationality}="Qatar" THEN "QAT"
      WHEN ${nationality}="Réunion" THEN    "RE"
      WHEN ${nationality}="Romania" THEN "ROU"
      WHEN ${nationality}="Russia" THEN "RUS"
      WHEN ${nationality}="Rwanda" THEN "RWA"
      WHEN ${nationality}="Saint-Barthélemy" THEN "BLM"
      WHEN ${nationality}="Saint Helena" THEN "SHN"
      WHEN ${nationality}="Saint Kitts and Nevis" THEN "KNA"
      WHEN ${nationality}="Saint Lucia" THEN "LCA"
      WHEN ${nationality}="Saint-Martin" THEN "MAF"
      WHEN ${nationality}="Saint Pierre and Miquelon" THEN "SPM"
      WHEN ${nationality}="Saint Vincent and Grenadines" THEN "VCT"
      WHEN ${nationality}="Samoa" THEN "WSM"
      WHEN ${nationality}="San Marino" THEN "SMR"
      WHEN ${nationality}="Sao Tome and Principe" THEN "STP"
      WHEN ${nationality}="Saudi Arabia" THEN "SAU"
      WHEN ${nationality}="Senegal" THEN "SEN"
      WHEN ${nationality}="Serbia" THEN "SRB"
      WHEN ${nationality}="Seychelles" THEN "SYC"
      WHEN ${nationality}="Sierra Leone"  THEN "SLE"
      WHEN ${nationality}="Singapore" THEN "SGP"
      WHEN ${nationality}="Slovakia" THEN "SVK"
      WHEN ${nationality}="Slovenia" THEN "SVN"
      WHEN ${nationality}="Solomon Islands" THEN "SLB"
      WHEN ${nationality}="Somalia" THEN "SOM"
      WHEN ${nationality}="South Africa" THEN "ZAF"
      WHEN ${nationality}="South Georgia and the South Sandwich Islands" THEN "SGS"
      WHEN ${nationality}="South Sudan" THEN "SSD"
      WHEN ${nationality}="Spain" THEN "ESP"
      WHEN ${nationality}="Sri Lanka" THEN "LKA"
      WHEN ${nationality}="Sudan" THEN "SDN"
      WHEN ${nationality}="Suriname"  THEN "SUR"
      WHEN ${nationality}="Svalbard and Jan Mayen Islands" THEN "SJM"
      WHEN ${nationality}="Swaziland" THEN "SWZ"
      WHEN ${nationality}="Sweden" THEN "SWE"
      WHEN ${nationality}="Switzerland" THEN "CHE"
      WHEN ${nationality}="Syria" THEN "SYR"
      WHEN ${nationality}="Taiwan"THEN "TWN"
      WHEN ${nationality}="Tajikistan"THEN "TJK"
      WHEN ${nationality}="Tanzania" THEN "TZA"
      WHEN ${nationality}="Thailand" THEN "THA"
      WHEN ${nationality}="Timor-Leste" THEN "TLS"
      WHEN ${nationality}="Togo" THEN "TGO"
      WHEN ${nationality}="Tokelau" THEN "TKL"
      WHEN ${nationality}="Tonga" THEN "TON"
      WHEN ${nationality}="Trinidad and Tobago" THEN "TTO"
      WHEN ${nationality}="Tunisia" THEN "TUN"
      WHEN ${nationality}="Turkey" THEN "TUR"
      WHEN ${nationality}="Turkmenistan" THEN "TKM"
      WHEN ${nationality}="Turks and Caicos Islands" THEN "TCA"
      WHEN ${nationality}="Tuvalu" THEN "TUV"
      WHEN ${nationality}="Uganda" THEN "UGA"
      WHEN ${nationality}="Ukraine" THEN "UKR"
      WHEN ${nationality}="United Arab Emirates" THEN "ARE"
      WHEN ${nationality}="United Kingdom" THEN "GBR"
      WHEN ${nationality}="United States of America" THEN "USA"
      WHEN ${nationality}="US Minor Outlying Islands" THEN "UMI"
      WHEN ${nationality}="Uruguay" THEN  "URY"
      WHEN ${nationality}="Uzbekistan" THEN "UZB"
      WHEN ${nationality}="Vanuatu" THEN  "VUT"
      WHEN ${nationality}="Venezuela" THEN "VEN"
      WHEN ${nationality}="Viet Nam" THEN "VNM"
      WHEN ${nationality}="Virgin Islands" THEN "VIR"
      WHEN ${nationality}="Wallis and Futuna Islands" THEN "WLF"
      WHEN ${nationality}="Western Sahara" THEN "ESH"
      WHEN ${nationality}="Yemen" THEN "YEM"
      WHEN ${nationality}="England" THEN "GBR"
      WHEN ${nationality}="Scotland" THEN "GBR"
      WHEN ${nationality}="Norther Ireland" THEN "GBR"
      WHEN ${nationality}="Wales" THEN "GBR"
      WHEN ${nationality}="Zambia" THEN "ZMB"
      WHEN ${nationality}="Zimbabwe" THEN "ZWE"
      END);;
    html: <img src="https://restcountries.eu/data/{{ value }}.svg" style="width:30px;height:20px;"/> ;;
  }
  dimension: lam {
    type: string
    sql: ${TABLE}.LAM ;;
  }

  dimension: lb {
    type: string
    sql: ${TABLE}.LB ;;
  }

  dimension: lcb {
    type: string
    sql: ${TABLE}.LCB ;;
  }

  dimension: lcm {
    type: string
    sql: ${TABLE}.LCM ;;
  }

  dimension: ldm {
    type: string
    sql: ${TABLE}.LDM ;;
  }

  dimension: lf {
    type: string
    sql: ${TABLE}.LF ;;
  }

  dimension: lm {
    type: string
    sql: ${TABLE}.LM ;;
  }

  dimension: loaned_from {
    type: string
    sql: ${TABLE}.Loaned_From ;;
  }

  dimension: ls {
    type: string
    sql: ${TABLE}.LS ;;
  }

  dimension: photo {
    type: string
    sql: ${name} ;;
#      html: <img src="//fast-taiga-87927.herokuapp.com/api.php?q={{ value | url_encode }}" height="50%" width="50%"> ;;
 html: <img  style='width: 75px; height: 75px;'src="https://feeling-lucky-looker.herokuapp.com/api.php?q={{ name._value | url_encode }}" style='width: 64px; height: 64px; border-radius: 32px; margin: 5px 0 5px 5px;' />;;
  }

  dimension: position {
    type: string
    sql: ${TABLE}.Position ;;
  }

  dimension: positioning {
    type: number
    sql: ${TABLE}.Positioning ;;
  }

  dimension: lw {
    type: string
    sql: ${TABLE}.LW ;;
  }

  dimension: lwb {
    type: string
    sql: ${TABLE}.LWB ;;
  }
  dimension: preferred_foot {
    type: string
    sql: ${TABLE}.Preferred_Foot ;;
  }

  dimension: ram {
    type: string
    sql: ${TABLE}.RAM ;;
  }

  dimension: rb {
    type: string
    sql: ${TABLE}.RB ;;
  }

  dimension: rcb {
    type: string
    sql: ${TABLE}.RCB ;;
  }

  dimension: rcm {
    type: string
    sql: ${TABLE}.RCM ;;
  }

  dimension: rdm {
    type: string
    sql: ${TABLE}.RDM ;;
  }

  dimension: release_clause {
    type: string
    sql: ${TABLE}.Release_Clause ;;
  }

  dimension: rf {
    type: string
    sql: ${TABLE}.RF ;;
  }

  dimension: rm {
    type: string
    sql: ${TABLE}.RM ;;
  }

  dimension: rs {
    type: string
    sql: ${TABLE}.RS ;;
  }

  dimension: rw {
    type: string
    sql: ${TABLE}.RW ;;
  }

  dimension: rwb {
    type: string
    sql: ${TABLE}.RWB ;;
  }
  dimension: st {
    type: string
    sql: ${TABLE}.ST ;;
  }

  measure: composure {
    type: average
    sql: ${TABLE}.Composure ;;
  }

  measure: crossing {
    type: average
    sql: ${TABLE}.Crossing ;;
  }

  measure: curve {
    type: average
    sql: ${TABLE}.Curve ;;
  }

  measure: dribbling {
    type: average
    sql: ${TABLE}.Dribbling ;;
  }

  measure: long_passing {
    type: average
    sql: ${TABLE}.LongPassing ;;
  }

  measure: long_shots {
    type: average
    sql: ${TABLE}.LongShots ;;
  }

  measure: finishing {
    type: average
    sql: ${TABLE}.Finishing ;;
  }

  measure: fkaccuracy {
    type: average
    sql: ${TABLE}.FKAccuracy ;;
  }

  measure: gkdiving {
    type: average
    sql: ${TABLE}.GKDiving ;;
  }

  measure: gkhandling {
    type: average
    sql: ${TABLE}.GKHandling ;;
  }

  measure: gkkicking {
    type: average
    sql: ${TABLE}.GKKicking ;;
  }

  measure: gkpositioning {
    type: average
    sql: ${TABLE}.GKPositioning ;;
  }

  measure: gkreflexes {
    type: average
    sql: ${TABLE}.GKReflexes ;;
  }

  measure: heading_accuracy {
    type: average
    sql: ${TABLE}.HeadingAccuracy ;;
  }

  measure: interceptions {
    type: average
    sql: ${TABLE}.Interceptions ;;
  }

  measure: international_reputation {
    type: average
    sql: ${TABLE}.International_Reputation ;;
  }

  measure: jumping {
    type: average
    sql: ${TABLE}.Jumping ;;
  }

  measure: marking {
    type: average
    sql: ${TABLE}.Marking ;;
  }


  measure: overall {
    type: average
    sql: ${TABLE}.Overall ;;
  }

  measure: penalties {
    type: average
    sql: ${TABLE}.Penalties ;;
  }

  measure: potential {
    type: average
    sql: ${TABLE}.Potential ;;
  }

  measure: reactions {
    type: average
    sql: ${TABLE}.Reactions ;;
  }


  measure: short_passing {
    type: average
    sql: ${TABLE}.ShortPassing ;;
  }

  measure: shot_power {
    type: average
    sql: ${TABLE}.ShotPower ;;
  }

  measure: skill_moves {
    type: average
    sql: ${TABLE}.Skill_Moves ;;
  }

  measure: sliding_tackle {
    type: average
    sql: ${TABLE}.SlidingTackle ;;
  }

  measure: special {
    type: average
    sql: ${TABLE}.Special ;;
  }

  measure: sprint_speed {
    type: average
    sql: ${TABLE}.SprintSpeed ;;
  }

  measure: stamina {
    type: average
    sql: ${TABLE}.Stamina ;;
  }


  measure: standing_tackle {
    type: average
    sql: ${TABLE}.StandingTackle ;;
  }

  measure: strength {
    type: average
    sql: ${TABLE}.Strength ;;
  }

  measure: value {
    type: average
    sql: ${TABLE}.Value ;;
  }

  measure: vision {
    type: average
    sql: ${TABLE}.Vision ;;
  }

  measure: volleys {
    type: average
    sql: ${TABLE}.Volleys ;;
  }

  measure: weak_foot {
    type: average
    sql: ${TABLE}.Weak_Foot ;;
  }

  measure: acceleration {
    type: average
    sql: ${TABLE}.Acceleration ;;
  }

  measure: age {
    type: average
    sql: ${TABLE}.Age ;;
  }

  measure: aggression {
    type: average
    sql: ${TABLE}.Aggression ;;
  }

  measure: agility {
    type: average
    sql: ${TABLE}.Agility ;;
  }

  measure: balance {
    type: average
    sql: ${TABLE}.Balance ;;
  }

  measure: ball_control {
    type: average
    sql: ${TABLE}.BallControl ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
