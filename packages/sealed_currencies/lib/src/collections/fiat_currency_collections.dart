// ignore_for_file: prefer-static-class, it's referenced as static in the model.
import "../data/fiat_currencies.data.dart";
import "../model/currency/currency.dart";

/// List of all standard [FiatCurrency] sorted by code.
const fiatCurrencyList = [
  FiatAed(),
  FiatAfn(),
  FiatAll(),
  FiatAmd(),
  FiatAng(),
  FiatAoa(),
  FiatArs(),
  FiatAud(),
  FiatAwg(),
  FiatAzn(),
  FiatBam(),
  FiatBbd(),
  FiatBdt(),
  FiatBgn(),
  FiatBhd(),
  FiatBif(),
  FiatBmd(),
  FiatBnd(),
  FiatBob(),
  FiatBrl(),
  FiatBsd(),
  FiatBtn(),
  FiatBwp(),
  FiatByn(),
  FiatBzd(),
  FiatCad(),
  FiatCdf(),
  FiatChf(),
  FiatClf(),
  FiatClp(),
  FiatCny(),
  FiatCop(),
  FiatCrc(),
  FiatCuc(),
  FiatCup(),
  FiatCve(),
  FiatCzk(),
  FiatDjf(),
  FiatDkk(),
  FiatDop(),
  FiatDzd(),
  FiatEgp(),
  FiatErn(),
  FiatEtb(),
  FiatEur(),
  FiatFjd(),
  FiatFkp(),
  FiatGbp(),
  FiatGel(),
  FiatGhs(),
  FiatGip(),
  FiatGmd(),
  FiatGnf(),
  FiatGtq(),
  FiatGyd(),
  FiatHkd(),
  FiatHnl(),
  FiatHrk(), // ignore: deprecated_member_use_from_same_package, until 2025.
  FiatHtg(),
  FiatHuf(),
  FiatIdr(),
  FiatIls(),
  FiatInr(),
  FiatIqd(),
  FiatIrr(),
  FiatIsk(),
  FiatJmd(),
  FiatJod(),
  FiatJpy(),
  FiatKes(),
  FiatKgs(),
  FiatKhr(),
  FiatKmf(),
  FiatKpw(),
  FiatKrw(),
  FiatKwd(),
  FiatKyd(),
  FiatKzt(),
  FiatLak(),
  FiatLbp(),
  FiatLkr(),
  FiatLrd(),
  FiatLsl(),
  FiatLyd(),
  FiatMad(),
  FiatMdl(),
  FiatMga(),
  FiatMkd(),
  FiatMmk(),
  FiatMnt(),
  FiatMop(),
  FiatMru(),
  FiatMur(),
  FiatMvr(),
  FiatMwk(),
  FiatMxn(),
  FiatMyr(),
  FiatMzn(),
  FiatNad(),
  FiatNgn(),
  FiatNio(),
  FiatNok(),
  FiatNpr(),
  FiatNzd(),
  FiatOmr(),
  FiatPab(),
  FiatPen(),
  FiatPgk(),
  FiatPhp(),
  FiatPkr(),
  FiatPln(),
  FiatPyg(),
  FiatQar(),
  FiatRon(),
  FiatRsd(),
  FiatRub(),
  FiatRwf(),
  FiatSar(),
  FiatSbd(),
  FiatScr(),
  FiatSdg(),
  FiatSek(),
  FiatSgd(),
  FiatShp(),
  FiatSle(),
  FiatSll(),
  FiatSos(),
  FiatSrd(),
  FiatSsp(),
  FiatStn(),
  FiatSvc(),
  FiatSyp(),
  FiatSzl(),
  FiatThb(),
  FiatTjs(),
  FiatTmt(),
  FiatTnd(),
  FiatTop(),
  FiatTry(),
  FiatTtd(),
  FiatTwd(),
  FiatTzs(),
  FiatUah(),
  FiatUgx(),
  FiatUsd(),
  FiatUyu(),
  FiatUzs(),
  FiatVes(),
  FiatVnd(),
  FiatVuv(),
  FiatWst(),
  FiatXaf(),
  FiatXcd(),
  FiatXof(),
  FiatXpf(),
  FiatYer(),
  FiatZar(),
  FiatZmw(),
  FiatZwl(),
];

/// Map of [FiatCurrency] standard codes.
const fiatCurrencyCodeMap = {
  "AED": FiatAed(),
  "AFN": FiatAfn(),
  "ALL": FiatAll(),
  "AMD": FiatAmd(),
  "ANG": FiatAng(),
  "AOA": FiatAoa(),
  "ARS": FiatArs(),
  "AUD": FiatAud(),
  "AWG": FiatAwg(),
  "AZN": FiatAzn(),
  "BAM": FiatBam(),
  "BBD": FiatBbd(),
  "BDT": FiatBdt(),
  "BGN": FiatBgn(),
  "BHD": FiatBhd(),
  "BIF": FiatBif(),
  "BMD": FiatBmd(),
  "BND": FiatBnd(),
  "BOB": FiatBob(),
  "BRL": FiatBrl(),
  "BSD": FiatBsd(),
  "BTN": FiatBtn(),
  "BWP": FiatBwp(),
  "BYN": FiatByn(),
  "BZD": FiatBzd(),
  "CAD": FiatCad(),
  "CDF": FiatCdf(),
  "CHF": FiatChf(),
  "CLF": FiatClf(),
  "CLP": FiatClp(),
  "CNY": FiatCny(),
  "COP": FiatCop(),
  "CRC": FiatCrc(),
  "CUC": FiatCuc(),
  "CUP": FiatCup(),
  "CVE": FiatCve(),
  "CZK": FiatCzk(),
  "DJF": FiatDjf(),
  "DKK": FiatDkk(),
  "DOP": FiatDop(),
  "DZD": FiatDzd(),
  "EGP": FiatEgp(),
  "ERN": FiatErn(),
  "ETB": FiatEtb(),
  "EUR": FiatEur(),
  "FJD": FiatFjd(),
  "FKP": FiatFkp(),
  "GBP": FiatGbp(),
  "GEL": FiatGel(),
  "GHS": FiatGhs(),
  "GIP": FiatGip(),
  "GMD": FiatGmd(),
  "GNF": FiatGnf(),
  "GTQ": FiatGtq(),
  "GYD": FiatGyd(),
  "HKD": FiatHkd(),
  "HNL": FiatHnl(),
  "HRK":
      FiatHrk(), // ignore: deprecated_member_use_from_same_package, until 2025.
  "HTG": FiatHtg(),
  "HUF": FiatHuf(),
  "IDR": FiatIdr(),
  "ILS": FiatIls(),
  "INR": FiatInr(),
  "IQD": FiatIqd(),
  "IRR": FiatIrr(),
  "ISK": FiatIsk(),
  "JMD": FiatJmd(),
  "JOD": FiatJod(),
  "JPY": FiatJpy(),
  "KES": FiatKes(),
  "KGS": FiatKgs(),
  "KHR": FiatKhr(),
  "KMF": FiatKmf(),
  "KPW": FiatKpw(),
  "KRW": FiatKrw(),
  "KWD": FiatKwd(),
  "KYD": FiatKyd(),
  "KZT": FiatKzt(),
  "LAK": FiatLak(),
  "LBP": FiatLbp(),
  "LKR": FiatLkr(),
  "LRD": FiatLrd(),
  "LSL": FiatLsl(),
  "LYD": FiatLyd(),
  "MAD": FiatMad(),
  "MDL": FiatMdl(),
  "MGA": FiatMga(),
  "MKD": FiatMkd(),
  "MMK": FiatMmk(),
  "MNT": FiatMnt(),
  "MOP": FiatMop(),
  "MRU": FiatMru(),
  "MUR": FiatMur(),
  "MVR": FiatMvr(),
  "MWK": FiatMwk(),
  "MXN": FiatMxn(),
  "MYR": FiatMyr(),
  "MZN": FiatMzn(),
  "NAD": FiatNad(),
  "NGN": FiatNgn(),
  "NIO": FiatNio(),
  "NOK": FiatNok(),
  "NPR": FiatNpr(),
  "NZD": FiatNzd(),
  "OMR": FiatOmr(),
  "PAB": FiatPab(),
  "PEN": FiatPen(),
  "PGK": FiatPgk(),
  "PHP": FiatPhp(),
  "PKR": FiatPkr(),
  "PLN": FiatPln(),
  "PYG": FiatPyg(),
  "QAR": FiatQar(),
  "RON": FiatRon(),
  "RSD": FiatRsd(),
  "RUB": FiatRub(),
  "RWF": FiatRwf(),
  "SAR": FiatSar(),
  "SBD": FiatSbd(),
  "SCR": FiatScr(),
  "SDG": FiatSdg(),
  "SEK": FiatSek(),
  "SGD": FiatSgd(),
  "SHP": FiatShp(),
  "SLE": FiatSle(),
  "SLL": FiatSll(),
  "SOS": FiatSos(),
  "SRD": FiatSrd(),
  "SSP": FiatSsp(),
  "STN": FiatStn(),
  "SVC": FiatSvc(),
  "SYP": FiatSyp(),
  "SZL": FiatSzl(),
  "THB": FiatThb(),
  "TJS": FiatTjs(),
  "TMT": FiatTmt(),
  "TND": FiatTnd(),
  "TOP": FiatTop(),
  "TRY": FiatTry(),
  "TTD": FiatTtd(),
  "TWD": FiatTwd(),
  "TZS": FiatTzs(),
  "UAH": FiatUah(),
  "UGX": FiatUgx(),
  "USD": FiatUsd(),
  "UYU": FiatUyu(),
  "UZS": FiatUzs(),
  "VES": FiatVes(),
  "VND": FiatVnd(),
  "VUV": FiatVuv(),
  "WST": FiatWst(),
  "XAF": FiatXaf(),
  "XCD": FiatXcd(),
  "XOF": FiatXof(),
  "XPF": FiatXpf(),
  "YER": FiatYer(),
  "ZAR": FiatZar(),
  "ZMW": FiatZmw(),
  "ZWL": FiatZwl(),

  /// Special purpose currencies.
  "XAG": FiatXag(),
  "XAU": FiatXau(),
  "XBA": FiatXba(),
  "XBB": FiatXbb(),
  "XBC": FiatXbc(),
  "XBD": FiatXbd(),
  "XDR": FiatXdr(),
  "XPD": FiatXpd(),
  "XPT": FiatXpt(),
  "XTS": FiatXts(),
};

/// Map of [FiatCurrency] other codes.
const fiatCurrencyCodeOtherMap = {
  "784": FiatAed(),
  "971": FiatAfn(),
  "008": FiatAll(),
  "051": FiatAmd(),
  "532": FiatAng(),
  "973": FiatAoa(),
  "032": FiatArs(),
  "036": FiatAud(),
  "533": FiatAwg(),
  "944": FiatAzn(),
  "977": FiatBam(),
  "052": FiatBbd(),
  "050": FiatBdt(),
  "975": FiatBgn(),
  "048": FiatBhd(),
  "108": FiatBif(),
  "060": FiatBmd(),
  "096": FiatBnd(),
  "068": FiatBob(),
  "986": FiatBrl(),
  "044": FiatBsd(),
  "064": FiatBtn(),
  "072": FiatBwp(),
  "933": FiatByn(),
  "084": FiatBzd(),
  "124": FiatCad(),
  "976": FiatCdf(),
  "756": FiatChf(),
  "990": FiatClf(),
  "152": FiatClp(),
  "156": FiatCny(),
  "170": FiatCop(),
  "188": FiatCrc(),
  "931": FiatCuc(),
  "192": FiatCup(),
  "132": FiatCve(),
  "203": FiatCzk(),
  "262": FiatDjf(),
  "208": FiatDkk(),
  "214": FiatDop(),
  "012": FiatDzd(),
  "818": FiatEgp(),
  "232": FiatErn(),
  "230": FiatEtb(),
  "978": FiatEur(),
  "242": FiatFjd(),
  "238": FiatFkp(),
  "826": FiatGbp(),
  "981": FiatGel(),
  "936": FiatGhs(),
  "292": FiatGip(),
  "270": FiatGmd(),
  "324": FiatGnf(),
  "320": FiatGtq(),
  "328": FiatGyd(),
  "344": FiatHkd(),
  "340": FiatHnl(),
  "191":
      FiatHrk(), // ignore: deprecated_member_use_from_same_package, until 2025.
  "332": FiatHtg(),
  "348": FiatHuf(),
  "360": FiatIdr(),
  "376": FiatIls(),
  "356": FiatInr(),
  "368": FiatIqd(),
  "364": FiatIrr(),
  "352": FiatIsk(),
  "388": FiatJmd(),
  "400": FiatJod(),
  "392": FiatJpy(),
  "404": FiatKes(),
  "417": FiatKgs(),
  "116": FiatKhr(),
  "174": FiatKmf(),
  "408": FiatKpw(),
  "410": FiatKrw(),
  "414": FiatKwd(),
  "136": FiatKyd(),
  "398": FiatKzt(),
  "418": FiatLak(),
  "422": FiatLbp(),
  "144": FiatLkr(),
  "430": FiatLrd(),
  "426": FiatLsl(),
  "434": FiatLyd(),
  "504": FiatMad(),
  "498": FiatMdl(),
  "969": FiatMga(),
  "807": FiatMkd(),
  "104": FiatMmk(),
  "496": FiatMnt(),
  "446": FiatMop(),
  "929": FiatMru(),
  "480": FiatMur(),
  "462": FiatMvr(),
  "454": FiatMwk(),
  "484": FiatMxn(),
  "458": FiatMyr(),
  "943": FiatMzn(),
  "516": FiatNad(),
  "566": FiatNgn(),
  "558": FiatNio(),
  "578": FiatNok(),
  "524": FiatNpr(),
  "554": FiatNzd(),
  "512": FiatOmr(),
  "590": FiatPab(),
  "604": FiatPen(),
  "598": FiatPgk(),
  "608": FiatPhp(),
  "586": FiatPkr(),
  "985": FiatPln(),
  "600": FiatPyg(),
  "634": FiatQar(),
  "946": FiatRon(),
  "941": FiatRsd(),
  "643": FiatRub(),
  "646": FiatRwf(),
  "682": FiatSar(),
  "090": FiatSbd(),
  "690": FiatScr(),
  "938": FiatSdg(),
  "752": FiatSek(),
  "702": FiatSgd(),
  "654": FiatShp(),
  "925": FiatSle(),
  "694": FiatSll(),
  "706": FiatSos(),
  "968": FiatSrd(),
  "728": FiatSsp(),
  "930": FiatStn(),
  "222": FiatSvc(),
  "760": FiatSyp(),
  "748": FiatSzl(),
  "764": FiatThb(),
  "972": FiatTjs(),
  "934": FiatTmt(),
  "788": FiatTnd(),
  "776": FiatTop(),
  "949": FiatTry(),
  "780": FiatTtd(),
  "901": FiatTwd(),
  "834": FiatTzs(),
  "980": FiatUah(),
  "800": FiatUgx(),
  "840": FiatUsd(),
  "858": FiatUyu(),
  "860": FiatUzs(),
  "928": FiatVes(),
  "704": FiatVnd(),
  "548": FiatVuv(),
  "882": FiatWst(),
  "950": FiatXaf(),
  "951": FiatXcd(),
  "952": FiatXof(),
  "953": FiatXpf(),
  "886": FiatYer(),
  "710": FiatZar(),
  "967": FiatZmw(),
  "932": FiatZwl(),

  /// Special purpose currencies.
  "961": FiatXag(),
  "959": FiatXau(),
  "955": FiatXba(),
  "956": FiatXbb(),
  "957": FiatXbc(),
  "958": FiatXbd(),
  "960": FiatXdr(),
  "964": FiatXpd(),
  "962": FiatXpt(),
  "963": FiatXts(),
};
