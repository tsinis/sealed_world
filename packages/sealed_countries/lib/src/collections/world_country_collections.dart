// ignore_for_file: prefer-static-class, it's referenced as static in the model.
import "../data/official_world_countries.data.dart";
import "../data/other_world_countries.data.dart";
import "../model/country/country.dart";

/// List of all standard [WorldCountry] sorted by code.
const worldCountryList = [
  CountryAbw(),
  CountryAfg(),
  CountryAgo(),
  CountryAia(),
  CountryAla(),
  CountryAlb(),
  CountryAnd(),
  CountryAre(),
  CountryArg(),
  CountryArm(),
  CountryAsm(),
  CountryAta(),
  CountryAtf(),
  CountryAtg(),
  CountryAus(),
  CountryAut(),
  CountryAze(),
  CountryBdi(),
  CountryBel(),
  CountryBen(),
  CountryBes(),
  CountryBfa(),
  CountryBgd(),
  CountryBgr(),
  CountryBhr(),
  CountryBhs(),
  CountryBih(),
  CountryBlm(),
  CountryBlr(),
  CountryBlz(),
  CountryBmu(),
  CountryBol(),
  CountryBra(),
  CountryBrb(),
  CountryBrn(),
  CountryBtn(),
  CountryBvt(),
  CountryBwa(),
  CountryCaf(),
  CountryCan(),
  CountryCck(),
  CountryChe(),
  CountryChl(),
  CountryChn(),
  CountryCiv(),
  CountryCmr(),
  CountryCod(),
  CountryCog(),
  CountryCok(),
  CountryCol(),
  CountryCom(),
  CountryCpv(),
  CountryCri(),
  CountryCub(),
  CountryCuw(),
  CountryCxr(),
  CountryCym(),
  CountryCyp(),
  CountryCze(),
  CountryDeu(),
  CountryDji(),
  CountryDma(),
  CountryDnk(),
  CountryDom(),
  CountryDza(),
  CountryEcu(),
  CountryEgy(),
  CountryEri(),
  CountryEsh(),
  CountryEsp(),
  CountryEst(),
  CountryEth(),
  CountryFin(),
  CountryFji(),
  CountryFlk(),
  CountryFra(),
  CountryFro(),
  CountryFsm(),
  CountryGab(),
  CountryGbr(),
  CountryGeo(),
  CountryGgy(),
  CountryGha(),
  CountryGib(),
  CountryGin(),
  CountryGlp(),
  CountryGmb(),
  CountryGnb(),
  CountryGnq(),
  CountryGrc(),
  CountryGrd(),
  CountryGrl(),
  CountryGtm(),
  CountryGuf(),
  CountryGum(),
  CountryGuy(),
  CountryHkg(),
  CountryHmd(),
  CountryHnd(),
  CountryHrv(),
  CountryHti(),
  CountryHun(),
  CountryIdn(),
  CountryImn(),
  CountryInd(),
  CountryIot(),
  CountryIrl(),
  CountryIrn(),
  CountryIrq(),
  CountryIsl(),
  CountryIsr(),
  CountryIta(),
  CountryJam(),
  CountryJey(),
  CountryJor(),
  CountryJpn(),
  CountryKaz(),
  CountryKen(),
  CountryKgz(),
  CountryKhm(),
  CountryKir(),
  CountryKna(),
  CountryKor(),
  CountryKwt(),
  CountryLao(),
  CountryLbn(),
  CountryLbr(),
  CountryLby(),
  CountryLca(),
  CountryLie(),
  CountryLka(),
  CountryLso(),
  CountryLtu(),
  CountryLux(),
  CountryLva(),
  CountryMac(),
  CountryMaf(),
  CountryMar(),
  CountryMco(),
  CountryMda(),
  CountryMdg(),
  CountryMdv(),
  CountryMex(),
  CountryMhl(),
  CountryMkd(),
  CountryMli(),
  CountryMlt(),
  CountryMmr(),
  CountryMne(),
  CountryMng(),
  CountryMnp(),
  CountryMoz(),
  CountryMrt(),
  CountryMsr(),
  CountryMtq(),
  CountryMus(),
  CountryMwi(),
  CountryMys(),
  CountryMyt(),
  CountryNam(),
  CountryNcl(),
  CountryNer(),
  CountryNfk(),
  CountryNga(),
  CountryNic(),
  CountryNiu(),
  CountryNld(),
  CountryNor(),
  CountryNpl(),
  CountryNru(),
  CountryNzl(),
  CountryOmn(),
  CountryPak(),
  CountryPan(),
  CountryPcn(),
  CountryPer(),
  CountryPhl(),
  CountryPlw(),
  CountryPng(),
  CountryPol(),
  CountryPri(),
  CountryPrk(),
  CountryPrt(),
  CountryPry(),
  CountryPse(),
  CountryPyf(),
  CountryQat(),
  CountryReu(),
  CountryRou(),
  CountryRus(),
  CountryRwa(),
  CountrySau(),
  CountrySdn(),
  CountrySen(),
  CountrySgp(),
  CountrySgs(),
  CountryShn(),
  CountrySjm(),
  CountrySlb(),
  CountrySle(),
  CountrySlv(),
  CountrySmr(),
  CountrySom(),
  CountrySpm(),
  CountrySrb(),
  CountrySsd(),
  CountryStp(),
  CountrySur(),
  CountrySvk(),
  CountrySvn(),
  CountrySwe(),
  CountrySwz(),
  CountrySxm(),
  CountrySyc(),
  CountrySyr(),
  CountryTca(),
  CountryTcd(),
  CountryTgo(),
  CountryTha(),
  CountryTjk(),
  CountryTkl(),
  CountryTkm(),
  CountryTls(),
  CountryTon(),
  CountryTto(),
  CountryTun(),
  CountryTur(),
  CountryTuv(),
  CountryTwn(),
  CountryTza(),
  CountryUga(),
  CountryUkr(),
  CountryUmi(),
  CountryUry(),
  CountryUsa(),
  CountryUzb(),
  CountryVat(),
  CountryVct(),
  CountryVen(),
  CountryVgb(),
  CountryVir(),
  CountryVnm(),
  CountryVut(),
  CountryWlf(),
  CountryWsm(),
  CountryYem(),
  CountryZaf(),
  CountryZmb(),
  CountryZwe(),
  CountryUnk(),
];

/// Map of [WorldCountry] standard codes.
const worldCountryCodeMap = {
  "ABW": CountryAbw(),
  "AFG": CountryAfg(),
  "AGO": CountryAgo(),
  "AIA": CountryAia(),
  "ALA": CountryAla(),
  "ALB": CountryAlb(),
  "AND": CountryAnd(),
  "ARE": CountryAre(),
  "ARG": CountryArg(),
  "ARM": CountryArm(),
  "ASM": CountryAsm(),
  "ATA": CountryAta(),
  "ATF": CountryAtf(),
  "ATG": CountryAtg(),
  "AUS": CountryAus(),
  "AUT": CountryAut(),
  "AZE": CountryAze(),
  "BDI": CountryBdi(),
  "BEL": CountryBel(),
  "BEN": CountryBen(),
  "BES": CountryBes(),
  "BFA": CountryBfa(),
  "BGD": CountryBgd(),
  "BGR": CountryBgr(),
  "BHR": CountryBhr(),
  "BHS": CountryBhs(),
  "BIH": CountryBih(),
  "BLM": CountryBlm(),
  "BLR": CountryBlr(),
  "BLZ": CountryBlz(),
  "BMU": CountryBmu(),
  "BOL": CountryBol(),
  "BRA": CountryBra(),
  "BRB": CountryBrb(),
  "BRN": CountryBrn(),
  "BTN": CountryBtn(),
  "BVT": CountryBvt(),
  "BWA": CountryBwa(),
  "CAF": CountryCaf(),
  "CAN": CountryCan(),
  "CCK": CountryCck(),
  "CHE": CountryChe(),
  "CHL": CountryChl(),
  "CHN": CountryChn(),
  "CIV": CountryCiv(),
  "CMR": CountryCmr(),
  "COD": CountryCod(),
  "COG": CountryCog(),
  "COK": CountryCok(),
  "COL": CountryCol(),
  "COM": CountryCom(),
  "CPV": CountryCpv(),
  "CRI": CountryCri(),
  "CUB": CountryCub(),
  "CUW": CountryCuw(),
  "CXR": CountryCxr(),
  "CYM": CountryCym(),
  "CYP": CountryCyp(),
  "CZE": CountryCze(),
  "DEU": CountryDeu(),
  "DJI": CountryDji(),
  "DMA": CountryDma(),
  "DNK": CountryDnk(),
  "DOM": CountryDom(),
  "DZA": CountryDza(),
  "ECU": CountryEcu(),
  "EGY": CountryEgy(),
  "ERI": CountryEri(),
  "ESH": CountryEsh(),
  "ESP": CountryEsp(),
  "EST": CountryEst(),
  "ETH": CountryEth(),
  "FIN": CountryFin(),
  "FJI": CountryFji(),
  "FLK": CountryFlk(),
  "FRA": CountryFra(),
  "FRO": CountryFro(),
  "FSM": CountryFsm(),
  "GAB": CountryGab(),
  "GBR": CountryGbr(),
  "GEO": CountryGeo(),
  "GGY": CountryGgy(),
  "GHA": CountryGha(),
  "GIB": CountryGib(),
  "GIN": CountryGin(),
  "GLP": CountryGlp(),
  "GMB": CountryGmb(),
  "GNB": CountryGnb(),
  "GNQ": CountryGnq(),
  "GRC": CountryGrc(),
  "GRD": CountryGrd(),
  "GRL": CountryGrl(),
  "GTM": CountryGtm(),
  "GUF": CountryGuf(),
  "GUM": CountryGum(),
  "GUY": CountryGuy(),
  "HKG": CountryHkg(),
  "HMD": CountryHmd(),
  "HND": CountryHnd(),
  "HRV": CountryHrv(),
  "HTI": CountryHti(),
  "HUN": CountryHun(),
  "IDN": CountryIdn(),
  "IMN": CountryImn(),
  "IND": CountryInd(),
  "IOT": CountryIot(),
  "IRL": CountryIrl(),
  "IRN": CountryIrn(),
  "IRQ": CountryIrq(),
  "ISL": CountryIsl(),
  "ISR": CountryIsr(),
  "ITA": CountryIta(),
  "JAM": CountryJam(),
  "JEY": CountryJey(),
  "JOR": CountryJor(),
  "JPN": CountryJpn(),
  "KAZ": CountryKaz(),
  "KEN": CountryKen(),
  "KGZ": CountryKgz(),
  "KHM": CountryKhm(),
  "KIR": CountryKir(),
  "KNA": CountryKna(),
  "KOR": CountryKor(),
  "KWT": CountryKwt(),
  "LAO": CountryLao(),
  "LBN": CountryLbn(),
  "LBR": CountryLbr(),
  "LBY": CountryLby(),
  "LCA": CountryLca(),
  "LIE": CountryLie(),
  "LKA": CountryLka(),
  "LSO": CountryLso(),
  "LTU": CountryLtu(),
  "LUX": CountryLux(),
  "LVA": CountryLva(),
  "MAC": CountryMac(),
  "MAF": CountryMaf(),
  "MAR": CountryMar(),
  "MCO": CountryMco(),
  "MDA": CountryMda(),
  "MDG": CountryMdg(),
  "MDV": CountryMdv(),
  "MEX": CountryMex(),
  "MHL": CountryMhl(),
  "MKD": CountryMkd(),
  "MLI": CountryMli(),
  "MLT": CountryMlt(),
  "MMR": CountryMmr(),
  "MNE": CountryMne(),
  "MNG": CountryMng(),
  "MNP": CountryMnp(),
  "MOZ": CountryMoz(),
  "MRT": CountryMrt(),
  "MSR": CountryMsr(),
  "MTQ": CountryMtq(),
  "MUS": CountryMus(),
  "MWI": CountryMwi(),
  "MYS": CountryMys(),
  "MYT": CountryMyt(),
  "NAM": CountryNam(),
  "NCL": CountryNcl(),
  "NER": CountryNer(),
  "NFK": CountryNfk(),
  "NGA": CountryNga(),
  "NIC": CountryNic(),
  "NIU": CountryNiu(),
  "NLD": CountryNld(),
  "NOR": CountryNor(),
  "NPL": CountryNpl(),
  "NRU": CountryNru(),
  "NZL": CountryNzl(),
  "OMN": CountryOmn(),
  "PAK": CountryPak(),
  "PAN": CountryPan(),
  "PCN": CountryPcn(),
  "PER": CountryPer(),
  "PHL": CountryPhl(),
  "PLW": CountryPlw(),
  "PNG": CountryPng(),
  "POL": CountryPol(),
  "PRI": CountryPri(),
  "PRK": CountryPrk(),
  "PRT": CountryPrt(),
  "PRY": CountryPry(),
  "PSE": CountryPse(),
  "PYF": CountryPyf(),
  "QAT": CountryQat(),
  "REU": CountryReu(),
  "ROU": CountryRou(),
  "RUS": CountryRus(),
  "RWA": CountryRwa(),
  "SAU": CountrySau(),
  "SDN": CountrySdn(),
  "SEN": CountrySen(),
  "SGP": CountrySgp(),
  "SGS": CountrySgs(),
  "SHN": CountryShn(),
  "SJM": CountrySjm(),
  "SLB": CountrySlb(),
  "SLE": CountrySle(),
  "SLV": CountrySlv(),
  "SMR": CountrySmr(),
  "SOM": CountrySom(),
  "SPM": CountrySpm(),
  "SRB": CountrySrb(),
  "SSD": CountrySsd(),
  "STP": CountryStp(),
  "SUR": CountrySur(),
  "SVK": CountrySvk(),
  "SVN": CountrySvn(),
  "SWE": CountrySwe(),
  "SWZ": CountrySwz(),
  "SXM": CountrySxm(),
  "SYC": CountrySyc(),
  "SYR": CountrySyr(),
  "TCA": CountryTca(),
  "TCD": CountryTcd(),
  "TGO": CountryTgo(),
  "THA": CountryTha(),
  "TJK": CountryTjk(),
  "TKL": CountryTkl(),
  "TKM": CountryTkm(),
  "TLS": CountryTls(),
  "TON": CountryTon(),
  "TTO": CountryTto(),
  "TUN": CountryTun(),
  "TUR": CountryTur(),
  "TUV": CountryTuv(),
  "TWN": CountryTwn(),
  "TZA": CountryTza(),
  "UGA": CountryUga(),
  "UKR": CountryUkr(),
  "UMI": CountryUmi(),
  "URY": CountryUry(),
  "USA": CountryUsa(),
  "UZB": CountryUzb(),
  "VAT": CountryVat(),
  "VCT": CountryVct(),
  "VEN": CountryVen(),
  "VGB": CountryVgb(),
  "VIR": CountryVir(),
  "VNM": CountryVnm(),
  "VUT": CountryVut(),
  "WLF": CountryWlf(),
  "WSM": CountryWsm(),
  "YEM": CountryYem(),
  "ZAF": CountryZaf(),
  "ZMB": CountryZmb(),
  "ZWE": CountryZwe(),
  "UNK": CountryUnk(),
};

/// Map of [WorldCountry] other codes.
const worldCountryCodeOtherMap = {
  "AW": CountryAbw(),
  "AF": CountryAfg(),
  "AO": CountryAgo(),
  "AI": CountryAia(),
  "AX": CountryAla(),
  "AL": CountryAlb(),
  "AD": CountryAnd(),
  "AE": CountryAre(),
  "AR": CountryArg(),
  "AM": CountryArm(),
  "AS": CountryAsm(),
  "AQ": CountryAta(),
  "TF": CountryAtf(),
  "AG": CountryAtg(),
  "AU": CountryAus(),
  "AT": CountryAut(),
  "AZ": CountryAze(),
  "BI": CountryBdi(),
  "BE": CountryBel(),
  "BJ": CountryBen(),
  "BQ": CountryBes(),
  "BF": CountryBfa(),
  "BD": CountryBgd(),
  "BG": CountryBgr(),
  "BH": CountryBhr(),
  "BS": CountryBhs(),
  "BA": CountryBih(),
  "BL": CountryBlm(),
  "BY": CountryBlr(),
  "BZ": CountryBlz(),
  "BM": CountryBmu(),
  "BO": CountryBol(),
  "BR": CountryBra(),
  "BB": CountryBrb(),
  "BN": CountryBrn(),
  "BT": CountryBtn(),
  "BV": CountryBvt(),
  "BW": CountryBwa(),
  "CF": CountryCaf(),
  "CA": CountryCan(),
  "CC": CountryCck(),
  "CH": CountryChe(),
  "CL": CountryChl(),
  "CN": CountryChn(),
  "CI": CountryCiv(),
  "CM": CountryCmr(),
  "CD": CountryCod(),
  "CG": CountryCog(),
  "CK": CountryCok(),
  "CO": CountryCol(),
  "KM": CountryCom(),
  "CV": CountryCpv(),
  "CR": CountryCri(),
  "CU": CountryCub(),
  "CW": CountryCuw(),
  "CX": CountryCxr(),
  "KY": CountryCym(),
  "CY": CountryCyp(),
  "CZ": CountryCze(),
  "DE": CountryDeu(),
  "DJ": CountryDji(),
  "DM": CountryDma(),
  "DK": CountryDnk(),
  "DO": CountryDom(),
  "DZ": CountryDza(),
  "EC": CountryEcu(),
  "EG": CountryEgy(),
  "ER": CountryEri(),
  "EH": CountryEsh(),
  "ES": CountryEsp(),
  "EE": CountryEst(),
  "ET": CountryEth(),
  "FI": CountryFin(),
  "FJ": CountryFji(),
  "FK": CountryFlk(),
  "FR": CountryFra(),
  "FO": CountryFro(),
  "FM": CountryFsm(),
  "GA": CountryGab(),
  "GB": CountryGbr(),
  "GE": CountryGeo(),
  "GG": CountryGgy(),
  "GH": CountryGha(),
  "GI": CountryGib(),
  "GN": CountryGin(),
  "GP": CountryGlp(),
  "GM": CountryGmb(),
  "GW": CountryGnb(),
  "GQ": CountryGnq(),
  "GR": CountryGrc(),
  "GD": CountryGrd(),
  "GL": CountryGrl(),
  "GT": CountryGtm(),
  "GF": CountryGuf(),
  "GU": CountryGum(),
  "GY": CountryGuy(),
  "HK": CountryHkg(),
  "HM": CountryHmd(),
  "HN": CountryHnd(),
  "HR": CountryHrv(),
  "HT": CountryHti(),
  "HU": CountryHun(),
  "ID": CountryIdn(),
  "IM": CountryImn(),
  "IN": CountryInd(),
  "IO": CountryIot(),
  "IE": CountryIrl(),
  "IR": CountryIrn(),
  "IQ": CountryIrq(),
  "IS": CountryIsl(),
  "IL": CountryIsr(),
  "IT": CountryIta(),
  "JM": CountryJam(),
  "JE": CountryJey(),
  "JO": CountryJor(),
  "JP": CountryJpn(),
  "KZ": CountryKaz(),
  "KE": CountryKen(),
  "KG": CountryKgz(),
  "KH": CountryKhm(),
  "KI": CountryKir(),
  "KN": CountryKna(),
  "KR": CountryKor(),
  "KW": CountryKwt(),
  "LA": CountryLao(),
  "LB": CountryLbn(),
  "LR": CountryLbr(),
  "LY": CountryLby(),
  "LC": CountryLca(),
  "LI": CountryLie(),
  "LK": CountryLka(),
  "LS": CountryLso(),
  "LT": CountryLtu(),
  "LU": CountryLux(),
  "LV": CountryLva(),
  "MO": CountryMac(),
  "MF": CountryMaf(),
  "MA": CountryMar(),
  "MC": CountryMco(),
  "MD": CountryMda(),
  "MG": CountryMdg(),
  "MV": CountryMdv(),
  "MX": CountryMex(),
  "MH": CountryMhl(),
  "MK": CountryMkd(),
  "ML": CountryMli(),
  "MT": CountryMlt(),
  "MM": CountryMmr(),
  "ME": CountryMne(),
  "MN": CountryMng(),
  "MP": CountryMnp(),
  "MZ": CountryMoz(),
  "MR": CountryMrt(),
  "MS": CountryMsr(),
  "MQ": CountryMtq(),
  "MU": CountryMus(),
  "MW": CountryMwi(),
  "MY": CountryMys(),
  "YT": CountryMyt(),
  "NA": CountryNam(),
  "NC": CountryNcl(),
  "NE": CountryNer(),
  "NF": CountryNfk(),
  "NG": CountryNga(),
  "NI": CountryNic(),
  "NU": CountryNiu(),
  "NL": CountryNld(),
  "NO": CountryNor(),
  "NP": CountryNpl(),
  "NR": CountryNru(),
  "NZ": CountryNzl(),
  "OM": CountryOmn(),
  "PK": CountryPak(),
  "PA": CountryPan(),
  "PN": CountryPcn(),
  "PE": CountryPer(),
  "PH": CountryPhl(),
  "PW": CountryPlw(),
  "PG": CountryPng(),
  "PL": CountryPol(),
  "PR": CountryPri(),
  "KP": CountryPrk(),
  "PT": CountryPrt(),
  "PY": CountryPry(),
  "PS": CountryPse(),
  "PF": CountryPyf(),
  "QA": CountryQat(),
  "RE": CountryReu(),
  "RO": CountryRou(),
  "RU": CountryRus(),
  "RW": CountryRwa(),
  "SA": CountrySau(),
  "SD": CountrySdn(),
  "SN": CountrySen(),
  "SG": CountrySgp(),
  "GS": CountrySgs(),
  "SH": CountryShn(),
  "SJ": CountrySjm(),
  "SB": CountrySlb(),
  "SL": CountrySle(),
  "SV": CountrySlv(),
  "SM": CountrySmr(),
  "SO": CountrySom(),
  "PM": CountrySpm(),
  "RS": CountrySrb(),
  "SS": CountrySsd(),
  "ST": CountryStp(),
  "SR": CountrySur(),
  "SK": CountrySvk(),
  "SI": CountrySvn(),
  "SE": CountrySwe(),
  "SZ": CountrySwz(),
  "SX": CountrySxm(),
  "SC": CountrySyc(),
  "SY": CountrySyr(),
  "TC": CountryTca(),
  "TD": CountryTcd(),
  "TG": CountryTgo(),
  "TH": CountryTha(),
  "TJ": CountryTjk(),
  "TK": CountryTkl(),
  "TM": CountryTkm(),
  "TL": CountryTls(),
  "TO": CountryTon(),
  "TT": CountryTto(),
  "TN": CountryTun(),
  "TR": CountryTur(),
  "TV": CountryTuv(),
  "TW": CountryTwn(),
  "TZ": CountryTza(),
  "UG": CountryUga(),
  "UA": CountryUkr(),
  "UM": CountryUmi(),
  "UY": CountryUry(),
  "US": CountryUsa(),
  "UZ": CountryUzb(),
  "VA": CountryVat(),
  "VC": CountryVct(),
  "VE": CountryVen(),
  "VG": CountryVgb(),
  "VI": CountryVir(),
  "VN": CountryVnm(),
  "VU": CountryVut(),
  "WF": CountryWlf(),
  "WS": CountryWsm(),
  "YE": CountryYem(),
  "ZA": CountryZaf(),
  "ZM": CountryZmb(),
  "ZW": CountryZwe(),
  "XK": CountryUnk(),
};

/// Map of [WorldCountry] numeric codes.
const worldCountryCodeNumericMap = {
  "533": CountryAbw(),
  "004": CountryAfg(),
  "024": CountryAgo(),
  "660": CountryAia(),
  "248": CountryAla(),
  "008": CountryAlb(),
  "020": CountryAnd(),
  "784": CountryAre(),
  "032": CountryArg(),
  "051": CountryArm(),
  "016": CountryAsm(),
  "010": CountryAta(),
  "260": CountryAtf(),
  "028": CountryAtg(),
  "036": CountryAus(),
  "040": CountryAut(),
  "031": CountryAze(),
  "108": CountryBdi(),
  "056": CountryBel(),
  "204": CountryBen(),
  "535": CountryBes(),
  "854": CountryBfa(),
  "050": CountryBgd(),
  "100": CountryBgr(),
  "048": CountryBhr(),
  "044": CountryBhs(),
  "070": CountryBih(),
  "652": CountryBlm(),
  "112": CountryBlr(),
  "084": CountryBlz(),
  "060": CountryBmu(),
  "068": CountryBol(),
  "076": CountryBra(),
  "052": CountryBrb(),
  "096": CountryBrn(),
  "064": CountryBtn(),
  "074": CountryBvt(),
  "072": CountryBwa(),
  "140": CountryCaf(),
  "124": CountryCan(),
  "166": CountryCck(),
  "756": CountryChe(),
  "152": CountryChl(),
  "156": CountryChn(),
  "384": CountryCiv(),
  "120": CountryCmr(),
  "180": CountryCod(),
  "178": CountryCog(),
  "184": CountryCok(),
  "170": CountryCol(),
  "174": CountryCom(),
  "132": CountryCpv(),
  "188": CountryCri(),
  "192": CountryCub(),
  "531": CountryCuw(),
  "162": CountryCxr(),
  "136": CountryCym(),
  "196": CountryCyp(),
  "203": CountryCze(),
  "276": CountryDeu(),
  "262": CountryDji(),
  "212": CountryDma(),
  "208": CountryDnk(),
  "214": CountryDom(),
  "012": CountryDza(),
  "218": CountryEcu(),
  "818": CountryEgy(),
  "232": CountryEri(),
  "732": CountryEsh(),
  "724": CountryEsp(),
  "233": CountryEst(),
  "231": CountryEth(),
  "246": CountryFin(),
  "242": CountryFji(),
  "238": CountryFlk(),
  "250": CountryFra(),
  "234": CountryFro(),
  "583": CountryFsm(),
  "266": CountryGab(),
  "826": CountryGbr(),
  "268": CountryGeo(),
  "831": CountryGgy(),
  "288": CountryGha(),
  "292": CountryGib(),
  "324": CountryGin(),
  "312": CountryGlp(),
  "270": CountryGmb(),
  "624": CountryGnb(),
  "226": CountryGnq(),
  "300": CountryGrc(),
  "308": CountryGrd(),
  "304": CountryGrl(),
  "320": CountryGtm(),
  "254": CountryGuf(),
  "316": CountryGum(),
  "328": CountryGuy(),
  "344": CountryHkg(),
  "334": CountryHmd(),
  "340": CountryHnd(),
  "191": CountryHrv(),
  "332": CountryHti(),
  "348": CountryHun(),
  "360": CountryIdn(),
  "833": CountryImn(),
  "356": CountryInd(),
  "086": CountryIot(),
  "372": CountryIrl(),
  "364": CountryIrn(),
  "368": CountryIrq(),
  "352": CountryIsl(),
  "376": CountryIsr(),
  "380": CountryIta(),
  "388": CountryJam(),
  "832": CountryJey(),
  "400": CountryJor(),
  "392": CountryJpn(),
  "398": CountryKaz(),
  "404": CountryKen(),
  "417": CountryKgz(),
  "116": CountryKhm(),
  "296": CountryKir(),
  "659": CountryKna(),
  "410": CountryKor(),
  "414": CountryKwt(),
  "418": CountryLao(),
  "422": CountryLbn(),
  "430": CountryLbr(),
  "434": CountryLby(),
  "662": CountryLca(),
  "438": CountryLie(),
  "144": CountryLka(),
  "426": CountryLso(),
  "440": CountryLtu(),
  "442": CountryLux(),
  "428": CountryLva(),
  "446": CountryMac(),
  "663": CountryMaf(),
  "504": CountryMar(),
  "492": CountryMco(),
  "498": CountryMda(),
  "450": CountryMdg(),
  "462": CountryMdv(),
  "484": CountryMex(),
  "584": CountryMhl(),
  "807": CountryMkd(),
  "466": CountryMli(),
  "470": CountryMlt(),
  "104": CountryMmr(),
  "499": CountryMne(),
  "496": CountryMng(),
  "580": CountryMnp(),
  "508": CountryMoz(),
  "478": CountryMrt(),
  "500": CountryMsr(),
  "474": CountryMtq(),
  "480": CountryMus(),
  "454": CountryMwi(),
  "458": CountryMys(),
  "175": CountryMyt(),
  "516": CountryNam(),
  "540": CountryNcl(),
  "562": CountryNer(),
  "574": CountryNfk(),
  "566": CountryNga(),
  "558": CountryNic(),
  "570": CountryNiu(),
  "528": CountryNld(),
  "578": CountryNor(),
  "524": CountryNpl(),
  "520": CountryNru(),
  "554": CountryNzl(),
  "512": CountryOmn(),
  "586": CountryPak(),
  "591": CountryPan(),
  "612": CountryPcn(),
  "604": CountryPer(),
  "608": CountryPhl(),
  "585": CountryPlw(),
  "598": CountryPng(),
  "616": CountryPol(),
  "630": CountryPri(),
  "408": CountryPrk(),
  "620": CountryPrt(),
  "600": CountryPry(),
  "275": CountryPse(),
  "258": CountryPyf(),
  "634": CountryQat(),
  "638": CountryReu(),
  "642": CountryRou(),
  "643": CountryRus(),
  "646": CountryRwa(),
  "682": CountrySau(),
  "729": CountrySdn(),
  "686": CountrySen(),
  "702": CountrySgp(),
  "239": CountrySgs(),
  "654": CountryShn(),
  "744": CountrySjm(),
  "090": CountrySlb(),
  "694": CountrySle(),
  "222": CountrySlv(),
  "674": CountrySmr(),
  "706": CountrySom(),
  "666": CountrySpm(),
  "688": CountrySrb(),
  "728": CountrySsd(),
  "678": CountryStp(),
  "740": CountrySur(),
  "703": CountrySvk(),
  "705": CountrySvn(),
  "752": CountrySwe(),
  "748": CountrySwz(),
  "534": CountrySxm(),
  "690": CountrySyc(),
  "760": CountrySyr(),
  "796": CountryTca(),
  "148": CountryTcd(),
  "768": CountryTgo(),
  "764": CountryTha(),
  "762": CountryTjk(),
  "772": CountryTkl(),
  "795": CountryTkm(),
  "626": CountryTls(),
  "776": CountryTon(),
  "780": CountryTto(),
  "788": CountryTun(),
  "792": CountryTur(),
  "798": CountryTuv(),
  "158": CountryTwn(),
  "834": CountryTza(),
  "800": CountryUga(),
  "804": CountryUkr(),
  "581": CountryUmi(),
  "858": CountryUry(),
  "840": CountryUsa(),
  "860": CountryUzb(),
  "336": CountryVat(),
  "670": CountryVct(),
  "862": CountryVen(),
  "092": CountryVgb(),
  "850": CountryVir(),
  "704": CountryVnm(),
  "548": CountryVut(),
  "876": CountryWlf(),
  "882": CountryWsm(),
  "887": CountryYem(),
  "710": CountryZaf(),
  "894": CountryZmb(),
  "716": CountryZwe(),
};