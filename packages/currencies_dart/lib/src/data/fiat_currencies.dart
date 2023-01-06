// ignore_for_file: avoid-non-ascii-symbols

import "../model/currency.dart";

// ignore: prefer-match-file-name, not necessary for the list of currencies.
class FiatAed extends FiatCurrency {
  const FiatAed()
      : super(
          code: "AED",
          name: "United Arab Emirates Dirham",
          symbol: "د.إ",
          alternateSymbols: const ["DH", "Dhs"],
          subunit: "Fils",
          isoNumeric: "784",
          smallestDenomination: 25,
        );
}

class FiatAfn extends FiatCurrency {
  FiatAfn()
      : super(
          code: "AFN",
          name: "Afghan Afghani",
          symbol: "؋",
          alternateSymbols: const ["Af", "Afs"],
          subunit: "Pul",
          isoNumeric: "971",
          smallestDenomination: 100,
        );
}

class FiatAll extends FiatCurrency {
  FiatAll()
      : super(
          code: "ALL",
          name: "Albanian Lek",
          symbol: "L",
          disambiguateSymbol: "Lek",
          alternateSymbols: const ["Lek"],
          subunit: "Qintar",
          isoNumeric: "008",
          smallestDenomination: 100,
        );
}

class FiatAmd extends FiatCurrency {
  const FiatAmd()
      : super(
          code: "AMD",
          name: "Armenian Dram",
          symbol: "դր.",
          alternateSymbols: const ["dram"],
          subunit: "Luma",
          isoNumeric: "051",
          smallestDenomination: 10,
        );
}

class FiatAng extends FiatCurrency {
  const FiatAng()
      : super(
          code: "ANG",
          name: "Netherlands Antillean Gulden",
          symbol: "ƒ",
          alternateSymbols: const ["NAƒ", "NAf", "f"],
          subunit: "Cent",
          unitFirst: true,
          htmlEntity: "&#x0192;",
          decimalMark: ",",
          thousandsSeparator: ".",
          isoNumeric: "532",
        );
}

class FiatAoa extends FiatCurrency {
  const FiatAoa()
      : super(
          code: "AOA",
          name: "Angolan Kwanza",
          symbol: "Kz",
          subunit: "Cêntimo",
          isoNumeric: "973",
          smallestDenomination: 10,
        );
}

class FiatArs extends FiatCurrency {
  const FiatArs()
      : super(
          code: "ARS",
          name: "Argentine Peso",
          symbol: r"$",
          disambiguateSymbol: r"$m/n",
          alternateSymbols: const [r"$m/n", r"m$n"],
          subunit: "Centavo",
          unitFirst: true,
          htmlEntity: r"$",
          decimalMark: ",",
          thousandsSeparator: ".",
          isoNumeric: "032",
        );
}

class FiatAud extends FiatCurrency {
  const FiatAud()
      : super(
          priority: 4,
          code: "AUD",
          name: "Australian Dollar",
          symbol: r"$",
          disambiguateSymbol: r"A$",
          alternateSymbols: const [r"A$"],
          subunit: "Cent",
          unitFirst: true,
          htmlEntity: r"$",
          isoNumeric: "036",
          smallestDenomination: 5,
        );
}

class FiatAwg extends FiatCurrency {
  const FiatAwg()
      : super(
          code: "AWG",
          name: "Aruban Florin",
          symbol: "ƒ",
          alternateSymbols: const ["Afl"],
          subunit: "Cent",
          htmlEntity: "&#x0192;",
          isoNumeric: "533",
          smallestDenomination: 5,
        );
}

class FiatAzn extends FiatCurrency {
  const FiatAzn()
      : super(
          code: "AZN",
          name: "Azerbaijani Manat",
          symbol: "₼",
          alternateSymbols: const ["m", "man"],
          subunit: "Qəpik",
          unitFirst: true,
          isoNumeric: "944",
        );
}

class FiatBam extends FiatCurrency {
  const FiatBam()
      : super(
          code: "BAM",
          name: "Bosnia and Herzegovina Convertible Mark",
          symbol: "КМ",
          alternateSymbols: const ["KM"],
          subunit: "Fening",
          unitFirst: true,
          isoNumeric: "977",
          smallestDenomination: 5,
        );
}

class FiatBbd extends FiatCurrency {
  const FiatBbd()
      : super(
          code: "BBD",
          name: "Barbadian Dollar",
          symbol: r"$",
          disambiguateSymbol: r"Bds$",
          alternateSymbols: const [r"Bds$"],
          subunit: "Cent",
          unitFirst: true,
          htmlEntity: r"$",
          isoNumeric: "052",
        );
}

class FiatBdt extends FiatCurrency {
  const FiatBdt()
      : super(
          code: "BDT",
          name: "Bangladeshi Taka",
          symbol: "৳",
          alternateSymbols: const ["Tk"],
          subunit: "Paisa",
          unitFirst: true,
          isoNumeric: "050",
        );
}

class FiatBgn extends FiatCurrency {
  const FiatBgn()
      : super(
          code: "BGN",
          name: "Bulgarian Lev",
          symbol: "лв.",
          alternateSymbols: const ["lev", "leva", "лев", "лева"],
          subunit: "Stotinka",
          isoNumeric: "975",
        );
}

class FiatBhd extends FiatCurrency {
  const FiatBhd()
      : super(
          code: "BHD",
          name: "Bahraini Dinar",
          symbol: "د.ب",
          alternateSymbols: const ["BD"],
          subunit: "Fils",
          subunitToUnit: 1000,
          unitFirst: true,
          isoNumeric: "048",
          smallestDenomination: 5,
        );
}

class FiatBif extends FiatCurrency {
  const FiatBif()
      : super(
          code: "BIF",
          name: "Burundian Franc",
          symbol: "Fr",
          disambiguateSymbol: "FBu",
          alternateSymbols: const ["FBu"],
          subunit: "Centime",
          subunitToUnit: 1,
          isoNumeric: "108",
          smallestDenomination: 100,
        );
}

class FiatBmd extends FiatCurrency {
  const FiatBmd()
      : super(
          code: "BMD",
          name: "Bermudian Dollar",
          symbol: r"$",
          disambiguateSymbol: r"BD$",
          alternateSymbols: const [r"BD$"],
          subunit: "Cent",
          unitFirst: true,
          htmlEntity: r"$",
          isoNumeric: "060",
        );
}

class FiatBnd extends FiatCurrency {
  const FiatBnd()
      : super(
          code: "BND",
          name: "Brunei Dollar",
          symbol: r"$",
          disambiguateSymbol: "BND",
          alternateSymbols: const [r"B$"],
          subunit: "Sen",
          unitFirst: true,
          htmlEntity: r"$",
          isoNumeric: "096",
        );
}

class FiatBob extends FiatCurrency {
  const FiatBob()
      : super(
          code: "BOB",
          name: "Bolivian Boliviano",
          symbol: "Bs.",
          alternateSymbols: const ["Bs"],
          subunit: "Centavo",
          unitFirst: true,
          isoNumeric: "068",
          smallestDenomination: 10,
        );
}

class FiatBrl extends FiatCurrency {
  const FiatBrl()
      : super(
          code: "BRL",
          name: "Brazilian Real",
          symbol: r"R$",
          subunit: "Centavo",
          unitFirst: true,
          htmlEntity: r"R$",
          decimalMark: ",",
          thousandsSeparator: ".",
          isoNumeric: "986",
          smallestDenomination: 5,
        );
}

class FiatBsd extends FiatCurrency {
  const FiatBsd()
      : super(
          code: "BSD",
          name: "Bahamian Dollar",
          symbol: r"$",
          disambiguateSymbol: "BSD",
          alternateSymbols: const [r"B$"],
          subunit: "Cent",
          unitFirst: true,
          htmlEntity: r"$",
          isoNumeric: "044",
        );
}

class FiatBtn extends FiatCurrency {
  const FiatBtn()
      : super(
          code: "BTN",
          name: "Bhutanese Ngultrum",
          symbol: "Nu.",
          alternateSymbols: const ["Nu"],
          subunit: "Chertrum",
          isoNumeric: "064",
          smallestDenomination: 5,
        );
}

class FiatBwp extends FiatCurrency {
  const FiatBwp()
      : super(
          code: "BWP",
          name: "Botswana Pula",
          symbol: "P",
          subunit: "Thebe",
          unitFirst: true,
          isoNumeric: "072",
          smallestDenomination: 5,
        );
}

class FiatByn extends FiatCurrency {
  const FiatByn()
      : super(
          code: "BYN",
          name: "Belarusian Ruble",
          symbol: "Br",
          disambiguateSymbol: "BYN",
          alternateSymbols: const ["бел. руб.", "б.р.", "руб.", "р."],
          subunit: "Kapeyka",
          decimalMark: ",",
          thousandsSeparator: " ",
          isoNumeric: "933",
        );
}

class FiatByr extends FiatCurrency {
  const FiatByr()
      : super(
          priority: 50,
          code: "BYR",
          name: "Belarusian Ruble",
          symbol: "Br",
          disambiguateSymbol: "BYR",
          alternateSymbols: const ["бел. руб.", "б.р.", "руб.", "р."],
          subunit: null,
          subunitToUnit: 1,
          decimalMark: ",",
          thousandsSeparator: " ",
          isoNumeric: "974",
          smallestDenomination: 100,
        );
}

class FiatBzd extends FiatCurrency {
  const FiatBzd()
      : super(
          code: "BZD",
          name: "Belize Dollar",
          symbol: r"$",
          disambiguateSymbol: r"BZ$",
          alternateSymbols: const [r"BZ$"],
          subunit: "Cent",
          unitFirst: true,
          htmlEntity: r"$",
          isoNumeric: "084",
        );
}

class FiatCad extends FiatCurrency {
  const FiatCad()
      : super(
          priority: 5,
          code: "CAD",
          name: "Canadian Dollar",
          symbol: r"$",
          disambiguateSymbol: r"C$",
          alternateSymbols: const [r"C$", r"CAD$"],
          subunit: "Cent",
          unitFirst: true,
          htmlEntity: r"$",
          isoNumeric: "124",
          smallestDenomination: 5,
        );
}

class FiatCdf extends FiatCurrency {
  const FiatCdf()
      : super(
          code: "CDF",
          name: "Congolese Franc",
          symbol: "Fr",
          disambiguateSymbol: "FC",
          alternateSymbols: const ["FC"],
          subunit: "Centime",
          isoNumeric: "976",
        );
}

class FiatChf extends FiatCurrency {
  const FiatChf()
      : super(
          code: "CHF",
          name: "Swiss Franc",
          alternateSymbols: const ["SFr", "Fr"],
          subunit: "Rappen",
          unitFirst: true,
          isoNumeric: "756",
          smallestDenomination: 5,
        );

  @override
  String format(num value) => "$unit$value";
}

class FiatClf extends FiatCurrency {
  const FiatClf()
      : super(
          code: "CLF",
          name: "Unidad de Fomento",
          symbol: "UF",
          subunit: "Peso",
          subunitToUnit: 10000,
          unitFirst: true,
          htmlEntity: "&#x20B1;",
          decimalMark: ",",
          thousandsSeparator: ".",
          isoNumeric: "990",
          smallestDenomination: 0,
        );
}

class FiatClp extends FiatCurrency {
  const FiatClp()
      : super(
          code: "CLP",
          name: "Chilean Peso",
          symbol: r"$",
          disambiguateSymbol: "CLP",
          subunit: "Peso",
          subunitToUnit: 1,
          unitFirst: true,
          htmlEntity: "&#36;",
          decimalMark: ",",
          thousandsSeparator: ".",
          isoNumeric: "152",
        );
}

class FiatCny extends FiatCurrency {
  const FiatCny()
      : super(
          code: "CNY",
          name: "Chinese Renminbi Yuan",
          symbol: "¥",
          alternateSymbols: const ["CN¥", "元", "CN元"],
          subunit: "Fen",
          unitFirst: true,
          htmlEntity: "￥",
          isoNumeric: "156",
        );
}

class FiatCop extends FiatCurrency {
  const FiatCop()
      : super(
          code: "COP",
          name: "Colombian Peso",
          symbol: r"$",
          disambiguateSymbol: r"COL$",
          alternateSymbols: const [r"COL$"],
          subunit: "Centavo",
          unitFirst: true,
          htmlEntity: "&#36;",
          decimalMark: ",",
          thousandsSeparator: ".",
          isoNumeric: "170",
          smallestDenomination: 20,
        );
}

class FiatCrc extends FiatCurrency {
  const FiatCrc()
      : super(
          code: "CRC",
          name: "Costa Rican Colón",
          symbol: "₡",
          alternateSymbols: const ["¢"],
          subunit: "Céntimo",
          unitFirst: true,
          htmlEntity: "&#x20A1;",
          decimalMark: ",",
          thousandsSeparator: ".",
          isoNumeric: "188",
          smallestDenomination: 500,
        );
}

class FiatCuc extends FiatCurrency {
  const FiatCuc()
      : super(
          code: "CUC",
          name: "Cuban Convertible Peso",
          symbol: r"$",
          disambiguateSymbol: r"CUC$",
          alternateSymbols: const [r"CUC$"],
          subunit: "Centavo",
          isoNumeric: "931",
        );
}

class FiatCup extends FiatCurrency {
  const FiatCup()
      : super(
          code: "CUP",
          name: "Cuban Peso",
          symbol: r"$",
          disambiguateSymbol: r"$MN",
          alternateSymbols: const [r"$MN"],
          subunit: "Centavo",
          unitFirst: true,
          htmlEntity: "&#x20B1;",
          isoNumeric: "192",
        );
}

class FiatCve extends FiatCurrency {
  const FiatCve()
      : super(
          code: "CVE",
          name: "Cape Verdean Escudo",
          symbol: r"$",
          disambiguateSymbol: "Esc",
          alternateSymbols: const ["Esc"],
          subunit: "Centavo",
          isoNumeric: "132",
          smallestDenomination: 100,
        );
}

class FiatCzk extends FiatCurrency {
  const FiatCzk()
      : super(
          code: "CZK",
          name: "Czech Koruna",
          symbol: "Kč",
          subunit: "Haléř",
          decimalMark: ",",
          thousandsSeparator: " ",
          isoNumeric: "203",
          smallestDenomination: 100,
        );
}

class FiatDjf extends FiatCurrency {
  const FiatDjf()
      : super(
          code: "DJF",
          name: "Djiboutian Franc",
          symbol: "Fdj",
          subunit: "Centime",
          subunitToUnit: 1,
          isoNumeric: "262",
          smallestDenomination: 100,
        );
}

class FiatDkk extends FiatCurrency {
  const FiatDkk()
      : super(
          code: "DKK",
          name: "Danish Krone",
          symbol: "kr.",
          disambiguateSymbol: "DKK",
          alternateSymbols: const [",-"],
          subunit: "Øre",
          decimalMark: ",",
          thousandsSeparator: ".",
          isoNumeric: "208",
          smallestDenomination: 50,
        );
}

class FiatDop extends FiatCurrency {
  const FiatDop()
      : super(
          code: "DOP",
          name: "Dominican Peso",
          symbol: r"$",
          disambiguateSymbol: r"RD$",
          alternateSymbols: const [r"RD$"],
          subunit: "Centavo",
          unitFirst: true,
          htmlEntity: "&#x20B1;",
          isoNumeric: "214",
          smallestDenomination: 100,
        );
}

class FiatDzd extends FiatCurrency {
  const FiatDzd()
      : super(
          code: "DZD",
          name: "Algerian Dinar",
          symbol: "د.ج",
          alternateSymbols: const ["DA"],
          subunit: "Centime",
          isoNumeric: "012",
          smallestDenomination: 100,
        );
}

class FiatEgp extends FiatCurrency {
  const FiatEgp()
      : super(
          code: "EGP",
          name: "Egyptian Pound",
          symbol: "ج.م",
          alternateSymbols: const ["LE", "E£", "L.E."],
          subunit: "Piastre",
          unitFirst: true,
          htmlEntity: "&#x00A3;",
          isoNumeric: "818",
          smallestDenomination: 25,
        );
}

class FiatErn extends FiatCurrency {
  const FiatErn()
      : super(
          code: "ERN",
          name: "Eritrean Nakfa",
          symbol: "Nfk",
          subunit: "Cent",
          isoNumeric: "232",
        );
}

class FiatEtb extends FiatCurrency {
  const FiatEtb()
      : super(
          code: "ETB",
          name: "Ethiopian Birr",
          symbol: "Br",
          disambiguateSymbol: "ETB",
          subunit: "Santim",
          isoNumeric: "230",
        );
}

class FiatEur extends FiatCurrency {
  const FiatEur()
      : super(
          priority: 2,
          code: "EUR",
          name: "Euro",
          symbol: "€",
          subunit: "Cent",
          unitFirst: true,
          htmlEntity: "€",
          decimalMark: ",",
          thousandsSeparator: ".",
          isoNumeric: "978",
        );
}

class FiatFjd extends FiatCurrency {
  const FiatFjd()
      : super(
          code: "FJD",
          name: "Fijian Dollar",
          symbol: r"$",
          disambiguateSymbol: r"FJ$",
          alternateSymbols: const [r"FJ$"],
          subunit: "Cent",
          htmlEntity: r"$",
          isoNumeric: "242",
          smallestDenomination: 5,
        );
}

class FiatFkp extends FiatCurrency {
  const FiatFkp()
      : super(
          code: "FKP",
          name: "Falkland Pound",
          symbol: "£",
          disambiguateSymbol: "FK£",
          alternateSymbols: const ["FK£"],
          subunit: "Penny",
          htmlEntity: "&#x00A3;",
          isoNumeric: "238",
        );
}

class FiatGbp extends FiatCurrency {
  const FiatGbp()
      : super(
          priority: 3,
          code: "GBP",
          name: "British Pound",
          symbol: "£",
          subunit: "Penny",
          unitFirst: true,
          htmlEntity: "&#x00A3;",
          isoNumeric: "826",
        );
}

class FiatGel extends FiatCurrency {
  const FiatGel()
      : super(
          code: "GEL",
          name: "Georgian Lari",
          symbol: "₾",
          alternateSymbols: const ["lari"],
          subunit: "Tetri",
          isoNumeric: "981",
        );
}

class FiatGhs extends FiatCurrency {
  const FiatGhs()
      : super(
          code: "GHS",
          name: "Ghanaian Cedi",
          symbol: "₵",
          alternateSymbols: const ["GH¢", "GH₵"],
          subunit: "Pesewa",
          unitFirst: true,
          htmlEntity: "&#x20B5;",
          isoNumeric: "936",
        );
}

class FiatGip extends FiatCurrency {
  const FiatGip()
      : super(
          code: "GIP",
          name: "Gibraltar Pound",
          symbol: "£",
          disambiguateSymbol: "GIP",
          subunit: "Penny",
          unitFirst: true,
          htmlEntity: "&#x00A3;",
          isoNumeric: "292",
        );
}

class FiatGmd extends FiatCurrency {
  const FiatGmd()
      : super(
          code: "GMD",
          name: "Gambian Dalasi",
          symbol: "D",
          subunit: "Butut",
          isoNumeric: "270",
        );
}

class FiatGnf extends FiatCurrency {
  const FiatGnf()
      : super(
          code: "GNF",
          name: "Guinean Franc",
          symbol: "Fr",
          disambiguateSymbol: "FG",
          alternateSymbols: const ["FG", "GFr"],
          subunit: "Centime",
          subunitToUnit: 1,
          isoNumeric: "324",
          smallestDenomination: 100,
        );
}

class FiatGtq extends FiatCurrency {
  const FiatGtq()
      : super(
          code: "GTQ",
          name: "Guatemalan Quetzal",
          symbol: "Q",
          subunit: "Centavo",
          unitFirst: true,
          isoNumeric: "320",
        );
}

class FiatGyd extends FiatCurrency {
  const FiatGyd()
      : super(
          code: "GYD",
          name: "Guyanese Dollar",
          symbol: r"$",
          disambiguateSymbol: r"G$",
          alternateSymbols: const [r"G$"],
          subunit: "Cent",
          htmlEntity: r"$",
          isoNumeric: "328",
          smallestDenomination: 100,
        );
}

class FiatHkd extends FiatCurrency {
  const FiatHkd()
      : super(
          code: "HKD",
          name: "Hong Kong Dollar",
          symbol: r"$",
          disambiguateSymbol: r"HK$",
          alternateSymbols: const [r"HK$"],
          subunit: "Cent",
          unitFirst: true,
          htmlEntity: r"$",
          isoNumeric: "344",
          smallestDenomination: 10,
        );
}

class FiatHnl extends FiatCurrency {
  const FiatHnl()
      : super(
          code: "HNL",
          name: "Honduran Lempira",
          symbol: "L",
          disambiguateSymbol: "HNL",
          subunit: "Centavo",
          unitFirst: true,
          isoNumeric: "340",
          smallestDenomination: 5,
        );
}

class FiatHrk extends FiatCurrency {
  const FiatHrk()
      : super(
          code: "HRK",
          name: "Croatian Kuna",
          symbol: "kn",
          subunit: "Lipa",
          decimalMark: ",",
          thousandsSeparator: ".",
          isoNumeric: "191",
        );
}

class FiatHtg extends FiatCurrency {
  const FiatHtg()
      : super(
          code: "HTG",
          name: "Haitian Gourde",
          symbol: "G",
          subunit: "Centime",
          isoNumeric: "332",
          smallestDenomination: 5,
        );
}

class FiatHuf extends FiatCurrency {
  const FiatHuf()
      : super(
          code: "HUF",
          name: "Hungarian Forint",
          symbol: "Ft",
          subunitToUnit: 1,
          decimalMark: ",",
          thousandsSeparator: " ",
          isoNumeric: "348",
          smallestDenomination: 5,
        );
}

class FiatIdr extends FiatCurrency {
  const FiatIdr()
      : super(
          code: "IDR",
          name: "Indonesian Rupiah",
          symbol: "Rp",
          subunit: "Sen",
          unitFirst: true,
          decimalMark: ",",
          thousandsSeparator: ".",
          isoNumeric: "360",
          smallestDenomination: 5000,
        );
}

class FiatIls extends FiatCurrency {
  const FiatIls()
      : super(
          code: "ILS",
          name: "Israeli New Sheqel",
          symbol: "₪",
          alternateSymbols: const ["ש״ח", "NIS"],
          subunit: "Agora",
          unitFirst: true,
          htmlEntity: "&#x20AA;",
          isoNumeric: "376",
          smallestDenomination: 10,
        );
}

class FiatInr extends FiatCurrency {
  const FiatInr()
      : super(
          code: "INR",
          name: "Indian Rupee",
          symbol: "₹",
          alternateSymbols: const ["Rs", "৳", "૱", "௹", "रु", "₨"],
          subunit: "Paisa",
          unitFirst: true,
          htmlEntity: "&#x20b9;",
          isoNumeric: "356",
          smallestDenomination: 50,
        );
}

class FiatIqd extends FiatCurrency {
  const FiatIqd()
      : super(
          code: "IQD",
          name: "Iraqi Dinar",
          symbol: "ع.د",
          subunit: "Fils",
          subunitToUnit: 1000,
          isoNumeric: "368",
          smallestDenomination: 50000,
        );
}

class FiatIrr extends FiatCurrency {
  const FiatIrr()
      : super(
          code: "IRR",
          name: "Iranian Rial",
          symbol: "﷼",
          subunit: null,
          unitFirst: true,
          htmlEntity: "&#xFDFC;",
          isoNumeric: "364",
          smallestDenomination: 5000,
        );
}

class FiatIsk extends FiatCurrency {
  const FiatIsk()
      : super(
          code: "ISK",
          name: "Icelandic Króna",
          symbol: "kr.",
          alternateSymbols: const ["Íkr"],
          subunit: null,
          subunitToUnit: 1,
          decimalMark: ",",
          thousandsSeparator: ".",
          isoNumeric: "352",
        );
}

class FiatJmd extends FiatCurrency {
  const FiatJmd()
      : super(
          code: "JMD",
          name: "Jamaican Dollar",
          symbol: r"$",
          disambiguateSymbol: r"J$",
          alternateSymbols: const [r"J$"],
          subunit: "Cent",
          unitFirst: true,
          htmlEntity: r"$",
          isoNumeric: "388",
        );
}

class FiatJod extends FiatCurrency {
  const FiatJod()
      : super(
          code: "JOD",
          name: "Jordanian Dinar",
          symbol: "د.ا",
          alternateSymbols: const ["JD"],
          subunit: "Fils",
          subunitToUnit: 1000,
          unitFirst: true,
          isoNumeric: "400",
          smallestDenomination: 5,
        );
}

class FiatJpy extends FiatCurrency {
  const FiatJpy()
      : super(
          priority: 6,
          code: "JPY",
          name: "Japanese Yen",
          symbol: "¥",
          alternateSymbols: const ["円", "圓"],
          subunit: null,
          subunitToUnit: 1,
          unitFirst: true,
          htmlEntity: "&#x00A5;",
          isoNumeric: "392",
        );
}

class FiatKes extends FiatCurrency {
  const FiatKes()
      : super(
          code: "KES",
          name: "Kenyan Shilling",
          symbol: "KSh",
          alternateSymbols: const ["Sh"],
          subunit: "Cent",
          unitFirst: true,
          isoNumeric: "404",
          smallestDenomination: 50,
        );
}

class FiatKgs extends FiatCurrency {
  const FiatKgs()
      : super(
          code: "KGS",
          name: "Kyrgyzstani Som",
          symbol: "som",
          alternateSymbols: const ["сом"],
          subunit: "Tyiyn",
          isoNumeric: "417",
        );
}

class FiatKhr extends FiatCurrency {
  const FiatKhr()
      : super(
          code: "KHR",
          name: "Cambodian Riel",
          symbol: "៛",
          subunit: "Sen",
          htmlEntity: "&#x17DB;",
          isoNumeric: "116",
          smallestDenomination: 5000,
        );
}

class FiatKmf extends FiatCurrency {
  const FiatKmf()
      : super(
          code: "KMF",
          name: "Comorian Franc",
          symbol: "Fr",
          disambiguateSymbol: "CF",
          alternateSymbols: const ["CF"],
          subunit: "Centime",
          subunitToUnit: 1,
          isoNumeric: "174",
          smallestDenomination: 100,
        );
}

class FiatKpw extends FiatCurrency {
  const FiatKpw()
      : super(
          code: "KPW",
          name: "North Korean Won",
          symbol: "₩",
          subunit: "Chŏn",
          htmlEntity: "&#x20A9;",
          isoNumeric: "408",
        );
}

class FiatKrw extends FiatCurrency {
  const FiatKrw()
      : super(
          code: "KRW",
          name: "South Korean Won",
          symbol: "₩",
          subunit: null,
          subunitToUnit: 1,
          unitFirst: true,
          htmlEntity: "&#x20A9;",
          isoNumeric: "410",
        );
}

class FiatKwd extends FiatCurrency {
  const FiatKwd()
      : super(
          code: "KWD",
          name: "Kuwaiti Dinar",
          symbol: "د.ك",
          alternateSymbols: const ["K.D."],
          subunit: "Fils",
          subunitToUnit: 1000,
          unitFirst: true,
          isoNumeric: "414",
          smallestDenomination: 5,
        );
}

class FiatKyd extends FiatCurrency {
  const FiatKyd()
      : super(
          code: "KYD",
          name: "Cayman Islands Dollar",
          symbol: r"$",
          disambiguateSymbol: r"CI$",
          alternateSymbols: const [r"CI$"],
          subunit: "Cent",
          unitFirst: true,
          htmlEntity: r"$",
          isoNumeric: "136",
        );
}

class FiatKzt extends FiatCurrency {
  const FiatKzt()
      : super(
          code: "KZT",
          name: "Kazakhstani Tenge",
          symbol: "₸",
          subunit: "Tiyn",
          isoNumeric: "398",
          smallestDenomination: 100,
        );
}

class FiatLak extends FiatCurrency {
  const FiatLak()
      : super(
          code: "LAK",
          name: "Lao Kip",
          symbol: "₭",
          alternateSymbols: const ["₭N"],
          subunit: "Att",
          htmlEntity: "&#x20AD;",
          isoNumeric: "418",
          smallestDenomination: 10,
        );
}

class FiatLbp extends FiatCurrency {
  const FiatLbp()
      : super(
          code: "LBP",
          name: "Lebanese Pound",
          symbol: "ل.ل",
          alternateSymbols: const ["£", "L£"],
          subunit: "Piastre",
          unitFirst: true,
          htmlEntity: "&#x00A3;",
          isoNumeric: "422",
          smallestDenomination: 25000,
        );
}

class FiatLkr extends FiatCurrency {
  const FiatLkr()
      : super(
          code: "LKR",
          name: "Sri Lankan Rupee",
          symbol: "₨",
          disambiguateSymbol: "SLRs",
          alternateSymbols: const ["රු", "ரூ", "SLRs", "/-"],
          subunit: "Cent",
          htmlEntity: "&#8360;",
          isoNumeric: "144",
          smallestDenomination: 100,
        );
}

class FiatLrd extends FiatCurrency {
  const FiatLrd()
      : super(
          code: "LRD",
          name: "Liberian Dollar",
          symbol: r"$",
          disambiguateSymbol: r"L$",
          alternateSymbols: const [r"L$"],
          subunit: "Cent",
          htmlEntity: r"$",
          isoNumeric: "430",
          smallestDenomination: 5,
        );
}

class FiatLsl extends FiatCurrency {
  const FiatLsl()
      : super(
          code: "LSL",
          name: "Lesotho Loti",
          symbol: "L",
          disambiguateSymbol: "M",
          alternateSymbols: const ["M"],
          subunit: "Sente",
          isoNumeric: "426",
        );
}

class FiatLyd extends FiatCurrency {
  const FiatLyd()
      : super(
          code: "LYD",
          name: "Libyan Dinar",
          symbol: "ل.د",
          alternateSymbols: const ["LD"],
          subunit: "Dirham",
          subunitToUnit: 1000,
          isoNumeric: "434",
          smallestDenomination: 50,
        );
}

class FiatMad extends FiatCurrency {
  const FiatMad()
      : super(
          code: "MAD",
          name: "Moroccan Dirham",
          symbol: "د.م.",
          subunit: "Centime",
          isoNumeric: "504",
        );
}

class FiatMdl extends FiatCurrency {
  const FiatMdl()
      : super(
          code: "MDL",
          name: "Moldovan Leu",
          symbol: "L",
          alternateSymbols: const ["lei"],
          subunit: "Ban",
          isoNumeric: "498",
        );
}

class FiatMga extends FiatCurrency {
  const FiatMga()
      : super(
          code: "MGA",
          name: "Malagasy Ariary",
          symbol: "Ar",
          subunit: "Iraimbilanja",
          subunitToUnit: 5,
          unitFirst: true,
          isoNumeric: "969",
        );
}

class FiatMkd extends FiatCurrency {
  const FiatMkd()
      : super(
          code: "MKD",
          name: "Macedonian Denar",
          symbol: "ден",
          subunit: "Deni",
          isoNumeric: "807",
          smallestDenomination: 100,
        );
}

class FiatMmk extends FiatCurrency {
  const FiatMmk()
      : super(
          code: "MMK",
          name: "Myanmar Kyat",
          symbol: "K",
          disambiguateSymbol: "MMK",
          subunit: "Pya",
          isoNumeric: "104",
          smallestDenomination: 50,
        );
}

class FiatMnt extends FiatCurrency {
  const FiatMnt()
      : super(
          code: "MNT",
          name: "Mongolian Tögrög",
          symbol: "₮",
          subunit: "Möngö",
          htmlEntity: "&#x20AE;",
          isoNumeric: "496",
          smallestDenomination: 2000,
        );
}

class FiatMop extends FiatCurrency {
  const FiatMop()
      : super(
          code: "MOP",
          name: "Macanese Pataca",
          symbol: "P",
          alternateSymbols: const [r"MOP$"],
          subunit: "Avo",
          isoNumeric: "446",
          smallestDenomination: 10,
        );
}

class FiatMru extends FiatCurrency {
  const FiatMru()
      : super(
          code: "MRU",
          name: "Mauritanian Ouguiya",
          symbol: "UM",
          subunit: "Khoums",
          subunitToUnit: 5,
          isoNumeric: "929",
        );
}

class FiatMur extends FiatCurrency {
  const FiatMur()
      : super(
          code: "MUR",
          name: "Mauritian Rupee",
          symbol: "₨",
          subunit: "Cent",
          unitFirst: true,
          htmlEntity: "&#x20A8;",
          isoNumeric: "480",
          smallestDenomination: 100,
        );
}

class FiatMvr extends FiatCurrency {
  const FiatMvr()
      : super(
          code: "MVR",
          name: "Maldivian Rufiyaa",
          alternateSymbols: const ["MRF", "Rf", "/-", "ރ"],
          subunit: "Laari",
          isoNumeric: "462",
        );
}

class FiatMwk extends FiatCurrency {
  const FiatMwk()
      : super(
          code: "MWK",
          name: "Malawian Kwacha",
          symbol: "MK",
          subunit: "Tambala",
          isoNumeric: "454",
        );
}

class FiatMxn extends FiatCurrency {
  const FiatMxn()
      : super(
          code: "MXN",
          name: "Mexican Peso",
          symbol: r"$",
          disambiguateSymbol: r"MEX$",
          alternateSymbols: const [r"MEX$"],
          subunit: "Centavo",
          unitFirst: true,
          htmlEntity: r"$",
          isoNumeric: "484",
          smallestDenomination: 5,
        );
}

class FiatMyr extends FiatCurrency {
  const FiatMyr()
      : super(
          code: "MYR",
          name: "Malaysian Ringgit",
          symbol: "RM",
          subunit: "Sen",
          unitFirst: true,
          isoNumeric: "458",
          smallestDenomination: 5,
        );
}

class FiatMzn extends FiatCurrency {
  const FiatMzn()
      : super(
          code: "MZN",
          name: "Mozambican Metical",
          symbol: "MTn",
          alternateSymbols: const ["MZN"],
          subunit: "Centavo",
          unitFirst: true,
          decimalMark: ",",
          thousandsSeparator: ".",
          isoNumeric: "943",
        );
}

class FiatNad extends FiatCurrency {
  const FiatNad()
      : super(
          code: "NAD",
          name: "Namibian Dollar",
          symbol: r"$",
          disambiguateSymbol: r"N$",
          alternateSymbols: const [r"N$"],
          subunit: "Cent",
          htmlEntity: r"$",
          isoNumeric: "516",
          smallestDenomination: 5,
        );
}

class FiatNgn extends FiatCurrency {
  const FiatNgn()
      : super(
          code: "NGN",
          name: "Nigerian Naira",
          symbol: "₦",
          subunit: "Kobo",
          unitFirst: true,
          htmlEntity: "&#x20A6;",
          isoNumeric: "566",
          smallestDenomination: 50,
        );
}

class FiatNio extends FiatCurrency {
  const FiatNio()
      : super(
          code: "NIO",
          name: "Nicaraguan Córdoba",
          symbol: r"C$",
          disambiguateSymbol: r"NIO$",
          subunit: "Centavo",
          unitFirst: true,
          isoNumeric: "558",
          smallestDenomination: 5,
        );
}

class FiatNok extends FiatCurrency {
  const FiatNok()
      : super(
          code: "NOK",
          name: "Norwegian Krone",
          symbol: "kr",
          disambiguateSymbol: "NOK",
          alternateSymbols: const [",-"],
          subunit: "Øre",
          htmlEntity: "kr",
          decimalMark: ",",
          thousandsSeparator: ".",
          isoNumeric: "578",
          smallestDenomination: 100,
        );
}

class FiatNpr extends FiatCurrency {
  const FiatNpr()
      : super(
          code: "NPR",
          name: "Nepalese Rupee",
          symbol: "Rs.",
          disambiguateSymbol: "NPR",
          alternateSymbols: const ["Rs", "रू", "₨"],
          subunit: "Paisa",
          unitFirst: true,
          htmlEntity: "&#x20A8;",
          isoNumeric: "524",
        );
}

class FiatNzd extends FiatCurrency {
  const FiatNzd()
      : super(
          code: "NZD",
          name: "New Zealand Dollar",
          symbol: r"$",
          disambiguateSymbol: r"NZ$",
          alternateSymbols: const [r"NZ$"],
          subunit: "Cent",
          unitFirst: true,
          htmlEntity: r"$",
          isoNumeric: "554",
          smallestDenomination: 10,
        );
}

class FiatOmr extends FiatCurrency {
  const FiatOmr()
      : super(
          code: "OMR",
          name: "Omani Rial",
          symbol: "ر.ع.",
          subunit: "Baisa",
          subunitToUnit: 1000,
          unitFirst: true,
          htmlEntity: "&#xFDFC;",
          isoNumeric: "512",
          smallestDenomination: 5,
        );
}

class FiatPab extends FiatCurrency {
  const FiatPab()
      : super(
          code: "PAB",
          name: "Panamanian Balboa",
          symbol: "B/.",
          subunit: "Centésimo",
          unitFirst: true,
          isoNumeric: "590",
        );
}

class FiatPen extends FiatCurrency {
  const FiatPen()
      : super(
          code: "PEN",
          name: "Peruvian Sol",
          symbol: "S/",
          subunit: "Céntimo",
          unitFirst: true,
          htmlEntity: "S/",
          isoNumeric: "604",
        );
}

class FiatPgk extends FiatCurrency {
  const FiatPgk()
      : super(
          code: "PGK",
          name: "Papua New Guinean Kina",
          symbol: "K",
          disambiguateSymbol: "PGK",
          subunit: "Toea",
          isoNumeric: "598",
          smallestDenomination: 5,
        );
}

class FiatPhp extends FiatCurrency {
  const FiatPhp()
      : super(
          code: "PHP",
          name: "Philippine Peso",
          symbol: "₱",
          alternateSymbols: const ["PHP", "PhP", "P"],
          subunit: "Centavo",
          unitFirst: true,
          htmlEntity: "&#x20B1;",
          isoNumeric: "608",
        );
}

class FiatPkr extends FiatCurrency {
  const FiatPkr()
      : super(
          code: "PKR",
          name: "Pakistani Rupee",
          symbol: "₨",
          disambiguateSymbol: "PKR",
          alternateSymbols: const ["Rs"],
          subunit: "Paisa",
          unitFirst: true,
          htmlEntity: "&#x20A8;",
          isoNumeric: "586",
          smallestDenomination: 100,
        );
}

class FiatPln extends FiatCurrency {
  const FiatPln()
      : super(
          code: "PLN",
          name: "Polish Złoty",
          symbol: "zł",
          subunit: "Grosz",
          htmlEntity: "z&#322;",
          decimalMark: ",",
          thousandsSeparator: " ",
          isoNumeric: "985",
        );
}

class FiatPyg extends FiatCurrency {
  const FiatPyg()
      : super(
          code: "PYG",
          name: "Paraguayan Guaraní",
          symbol: "₲",
          subunit: "Céntimo",
          subunitToUnit: 1,
          unitFirst: true,
          htmlEntity: "&#x20B2;",
          isoNumeric: "600",
          smallestDenomination: 5000,
        );
}

class FiatZqar extends FiatCurrency {
  const FiatZqar()
      : super(
          code: "QAR",
          name: "Qatari Riyal",
          symbol: "ر.ق",
          alternateSymbols: const ["QR"],
          subunit: "Dirham",
          htmlEntity: "&#xFDFC;",
          isoNumeric: "634",
        );
}

class FiatRon extends FiatCurrency {
  const FiatRon()
      : super(
          code: "RON",
          name: "Romanian Leu",
          symbol: "Lei",
          subunit: "Bani",
          decimalMark: ",",
          thousandsSeparator: ".",
          isoNumeric: "946",
        );
}

class FiatRsd extends FiatCurrency {
  const FiatRsd()
      : super(
          code: "RSD",
          name: "Serbian Dinar",
          symbol: "РСД",
          alternateSymbols: const ["RSD", "din", "дин"],
          subunit: "Para",
          unitFirst: true,
          isoNumeric: "941",
          smallestDenomination: 100,
        );
}

class FiatRub extends FiatCurrency {
  const FiatRub()
      : super(
          code: "RUB",
          name: "Russian Ruble",
          symbol: "₽",
          alternateSymbols: const ["руб.", "р."],
          subunit: "Kopeck",
          htmlEntity: "&#x20BD;",
          decimalMark: ",",
          thousandsSeparator: ".",
          isoNumeric: "643",
        );
}

class FiatRwf extends FiatCurrency {
  const FiatRwf()
      : super(
          code: "RWF",
          name: "Rwandan Franc",
          symbol: "FRw",
          alternateSymbols: const ["RF", "R₣"],
          subunit: "Centime",
          subunitToUnit: 1,
          isoNumeric: "646",
          smallestDenomination: 100,
        );
}

class FiatSar extends FiatCurrency {
  const FiatSar()
      : super(
          code: "SAR",
          name: "Saudi Riyal",
          symbol: "ر.س",
          alternateSymbols: const ["SR", "﷼"],
          subunit: "Hallallah",
          unitFirst: true,
          htmlEntity: "&#xFDFC;",
          isoNumeric: "682",
          smallestDenomination: 5,
        );
}

class FiatSbd extends FiatCurrency {
  const FiatSbd()
      : super(
          code: "SBD",
          name: "Solomon Islands Dollar",
          symbol: r"$",
          disambiguateSymbol: r"SI$",
          alternateSymbols: const [r"SI$"],
          subunit: "Cent",
          htmlEntity: r"$",
          isoNumeric: "090",
          smallestDenomination: 10,
        );
}

class FiatScr extends FiatCurrency {
  const FiatScr()
      : super(
          code: "SCR",
          name: "Seychellois Rupee",
          symbol: "₨",
          disambiguateSymbol: "SRe",
          alternateSymbols: const ["SRe", "SR"],
          subunit: "Cent",
          htmlEntity: "&#x20A8;",
          isoNumeric: "690",
        );
}

class FiatSdg extends FiatCurrency {
  const FiatSdg()
      : super(
          code: "SDG",
          name: "Sudanese Pound",
          symbol: "£",
          disambiguateSymbol: "SDG",
          subunit: "Piastre",
          unitFirst: true,
          isoNumeric: "938",
        );
}

class FiatSek extends FiatCurrency {
  const FiatSek()
      : super(
          code: "SEK",
          name: "Swedish Krona",
          symbol: "kr",
          disambiguateSymbol: "SEK",
          alternateSymbols: const [":-"],
          subunit: "Öre",
          decimalMark: ",",
          thousandsSeparator: " ",
          isoNumeric: "752",
          smallestDenomination: 100,
        );
}

class FiatSgd extends FiatCurrency {
  const FiatSgd()
      : super(
          code: "SGD",
          name: "Singapore Dollar",
          symbol: r"$",
          disambiguateSymbol: r"S$",
          alternateSymbols: const [r"S$"],
          subunit: "Cent",
          unitFirst: true,
          htmlEntity: r"$",
          isoNumeric: "702",
        );
}

class FiatShp extends FiatCurrency {
  const FiatShp()
      : super(
          code: "SHP",
          name: "Saint Helenian Pound",
          symbol: "£",
          disambiguateSymbol: "SHP",
          subunit: "Penny",
          htmlEntity: "&#x00A3;",
          isoNumeric: "654",
        );
}

class FiatSkk extends FiatCurrency {
  const FiatSkk()
      : super(
          code: "SKK",
          name: "Slovak Koruna",
          symbol: "Sk",
          subunit: "Halier",
          unitFirst: true,
          isoNumeric: "703",
          smallestDenomination: 50,
        );
}

class FiatSle extends FiatCurrency {
  const FiatSle()
      : super(
          code: "SLE",
          name: "New Leone",
          symbol: "Le",
          subunit: "Cent",
          isoNumeric: "925",
          smallestDenomination: 1000,
        );
}

class FiatSll extends FiatCurrency {
  const FiatSll()
      : super(
          code: "SLL",
          name: "Sierra Leonean Leone",
          symbol: "Le",
          disambiguateSymbol: "SLL",
          subunit: "Cent",
          isoNumeric: "694",
          smallestDenomination: 1000,
        );
}

class FiatSos extends FiatCurrency {
  const FiatSos()
      : super(
          code: "SOS",
          name: "Somali Shilling",
          symbol: "Sh",
          alternateSymbols: const ["Sh.So"],
          subunit: "Cent",
          isoNumeric: "706",
        );
}

class FiatSrd extends FiatCurrency {
  const FiatSrd()
      : super(
          code: "SRD",
          name: "Surinamese Dollar",
          symbol: r"$",
          disambiguateSymbol: "SRD",
          subunit: "Cent",
          isoNumeric: "968",
        );
}

class FiatSsp extends FiatCurrency {
  const FiatSsp()
      : super(
          code: "SSP",
          name: "South Sudanese Pound",
          symbol: "£",
          disambiguateSymbol: "SSP",
          subunit: "piaster",
          htmlEntity: "&#x00A3;",
          isoNumeric: "728",
          smallestDenomination: 5,
        );
}

class FiatStd extends FiatCurrency {
  const FiatStd()
      : super(
          code: "STD",
          name: "São Tomé and Príncipe Dobra",
          symbol: "Db",
          subunit: "Cêntimo",
          isoNumeric: "678",
          smallestDenomination: 10000,
        );
}

class FiatStn extends FiatCurrency {
  const FiatStn()
      : super(
          code: "STN",
          name: "São Tomé and Príncipe Second Dobra",
          symbol: "Db",
          disambiguateSymbol: "STN",
          subunit: "Cêntimo",
          isoNumeric: "930",
          smallestDenomination: 10,
        );
}

class FiatSvc extends FiatCurrency {
  const FiatSvc()
      : super(
          code: "SVC",
          name: "Salvadoran Colón",
          symbol: "₡",
          alternateSymbols: const ["¢"],
          subunit: "Centavo",
          unitFirst: true,
          htmlEntity: "&#x20A1;",
          isoNumeric: "222",
        );
}

class FiatSyp extends FiatCurrency {
  const FiatSyp()
      : super(
          code: "SYP",
          name: "Syrian Pound",
          symbol: "£S",
          alternateSymbols: const ["£", "ل.س", "LS", "الليرة السورية"],
          subunit: "Piastre",
          htmlEntity: "&#x00A3;",
          isoNumeric: "760",
          smallestDenomination: 100,
        );
}

class FiatSzl extends FiatCurrency {
  const FiatSzl()
      : super(
          code: "SZL",
          name: "Swazi Lilangeni",
          symbol: "E",
          disambiguateSymbol: "SZL",
          subunit: "Cent",
          unitFirst: true,
          isoNumeric: "748",
        );
}

class FiatThb extends FiatCurrency {
  const FiatThb()
      : super(
          code: "THB",
          name: "Thai Baht",
          symbol: "฿",
          subunit: "Satang",
          unitFirst: true,
          htmlEntity: "&#x0E3F;",
          isoNumeric: "764",
        );
}

class FiatTjs extends FiatCurrency {
  const FiatTjs()
      : super(
          code: "TJS",
          name: "Tajikistani Somoni",
          symbol: "ЅМ",
          subunit: "Diram",
          isoNumeric: "972",
        );
}

class FiatTmt extends FiatCurrency {
  const FiatTmt()
      : super(
          code: "TMT",
          name: "Turkmenistani Manat",
          symbol: "T",
          subunit: "Tenge",
          isoNumeric: "934",
        );
}

class FiatTnd extends FiatCurrency {
  const FiatTnd()
      : super(
          code: "TND",
          name: "Tunisian Dinar",
          symbol: "د.ت",
          alternateSymbols: const ["TD", "DT"],
          subunit: "Millime",
          subunitToUnit: 1000,
          isoNumeric: "788",
          smallestDenomination: 10,
        );
}

class FiatTop extends FiatCurrency {
  const FiatTop()
      : super(
          code: "TOP",
          name: "Tongan Paʻanga",
          symbol: r"T$",
          alternateSymbols: const ["PT"],
          subunit: "Seniti",
          unitFirst: true,
          isoNumeric: "776",
        );
}

class FiatTry extends FiatCurrency {
  const FiatTry()
      : super(
          code: "TRY",
          name: "Turkish Lira",
          symbol: "₺",
          alternateSymbols: const ["TL"],
          subunit: "kuruş",
          unitFirst: true,
          htmlEntity: "&#8378;",
          decimalMark: ",",
          thousandsSeparator: ".",
          isoNumeric: "949",
        );
}

class FiatTtd extends FiatCurrency {
  const FiatTtd()
      : super(
          code: "TTD",
          name: "Trinidad and Tobago Dollar",
          symbol: r"$",
          disambiguateSymbol: r"TT$",
          alternateSymbols: const [r"TT$"],
          subunit: "Cent",
          htmlEntity: r"$",
          isoNumeric: "780",
        );
}

class FiatTwd extends FiatCurrency {
  const FiatTwd()
      : super(
          code: "TWD",
          name: "New Taiwan Dollar",
          symbol: r"$",
          disambiguateSymbol: r"NT$",
          alternateSymbols: const [r"NT$"],
          subunit: "Cent",
          unitFirst: true,
          htmlEntity: r"$",
          isoNumeric: "901",
          smallestDenomination: 50,
        );
}

class FiatTzs extends FiatCurrency {
  const FiatTzs()
      : super(
          code: "TZS",
          name: "Tanzanian Shilling",
          symbol: "Sh",
          subunit: "Cent",
          unitFirst: true,
          isoNumeric: "834",
          smallestDenomination: 5000,
        );
}

class FiatUah extends FiatCurrency {
  const FiatUah()
      : super(
          code: "UAH",
          name: "Ukrainian Hryvnia",
          symbol: "₴",
          subunit: "Kopiyka",
          htmlEntity: "&#x20B4;",
          isoNumeric: "980",
        );
}

class FiatUgx extends FiatCurrency {
  const FiatUgx()
      : super(
          code: "UGX",
          name: "Ugandan Shilling",
          symbol: "USh",
          subunit: "Cent",
          subunitToUnit: 1,
          isoNumeric: "800",
          smallestDenomination: 1000,
        );
}

class FiatUsd extends FiatCurrency {
  const FiatUsd()
      : super(
          priority: 1,
          code: "USD",
          name: "United States Dollar",
          symbol: r"$",
          disambiguateSymbol: r"US$",
          alternateSymbols: const [r"US$"],
          subunit: "Cent",
          unitFirst: true,
          htmlEntity: r"$",
          isoNumeric: "840",
        );
}

class FiatUyu extends FiatCurrency {
  const FiatUyu()
      : super(
          code: "UYU",
          name: "Uruguayan Peso",
          symbol: r"$U",
          alternateSymbols: const [r"$U"],
          subunit: "Centésimo",
          unitFirst: true,
          htmlEntity: r"$U",
          decimalMark: ",",
          thousandsSeparator: ".",
          isoNumeric: "858",
          smallestDenomination: 100,
        );
}

class FiatUzs extends FiatCurrency {
  const FiatUzs()
      : super(
          code: "UZS",
          name: "Uzbekistan Som",
          symbol: "so'm",
          alternateSymbols: const ["so‘m", "сўм", "сум", "s", "с"],
          subunit: "Tiyin",
          isoNumeric: "860",
          smallestDenomination: 100,
        );
}

class FiatVes extends FiatCurrency {
  const FiatVes()
      : super(
          code: "VES",
          name: "Venezuelan Bolívar Soberano",
          symbol: "Bs",
          alternateSymbols: const ["Bs.S"],
          subunit: "Céntimo",
          unitFirst: true,
          decimalMark: ",",
          thousandsSeparator: ".",
          isoNumeric: "928",
        );
}

class FiatVnd extends FiatCurrency {
  const FiatVnd()
      : super(
          code: "VND",
          name: "Vietnamese Đồng",
          symbol: "₫",
          subunit: "Hào",
          subunitToUnit: 1,
          htmlEntity: "&#x20AB;",
          decimalMark: ",",
          thousandsSeparator: ".",
          isoNumeric: "704",
          smallestDenomination: 100,
        );
}

class FiatVuv extends FiatCurrency {
  const FiatVuv()
      : super(
          code: "VUV",
          name: "Vanuatu Vatu",
          symbol: "Vt",
          subunit: null,
          subunitToUnit: 1,
          unitFirst: true,
          isoNumeric: "548",
        );
}

class FiatWst extends FiatCurrency {
  const FiatWst()
      : super(
          code: "WST",
          name: "Samoan Tala",
          symbol: "T",
          disambiguateSymbol: r"WS$",
          alternateSymbols: const [r"WS$", "SAT", "ST"],
          subunit: "Sene",
          isoNumeric: "882",
          smallestDenomination: 10,
        );
}

class FiatXaf extends FiatCurrency {
  const FiatXaf()
      : super(
          code: "XAF",
          name: "Central African Cfa Franc",
          symbol: "CFA",
          disambiguateSymbol: "FCFA",
          alternateSymbols: const ["FCFA"],
          subunit: "Centime",
          subunitToUnit: 1,
          isoNumeric: "950",
          smallestDenomination: 100,
        );
}

class FiatXag extends FiatCurrency {
  const FiatXag()
      : super(
          code: "XAG",
          name: "Silver (Troy Ounce)",
          symbol: "oz t",
          disambiguateSymbol: "XAG",
          subunit: "oz",
          subunitToUnit: 1,
          isoNumeric: "961",
          smallestDenomination: 0,
        );
}

class FiatXau extends FiatCurrency {
  const FiatXau()
      : super(
          code: "XAU",
          name: "Gold (Troy Ounce)",
          symbol: "oz t",
          disambiguateSymbol: "XAU",
          subunit: "oz",
          subunitToUnit: 1,
          isoNumeric: "959",
          smallestDenomination: 0,
        );
}

class FiatXba extends FiatCurrency {
  const FiatXba()
      : super(
          code: "XBA",
          name: "European Composite Unit",
          disambiguateSymbol: "XBA",
          subunitToUnit: 1,
          isoNumeric: "955",
          smallestDenomination: 0,
        );
}

class FiatXbb extends FiatCurrency {
  const FiatXbb()
      : super(
          code: "XBB",
          name: "European Monetary Unit",
          disambiguateSymbol: "XBB",
          subunitToUnit: 1,
          isoNumeric: "956",
          smallestDenomination: 0,
        );
}

class FiatXbc extends FiatCurrency {
  const FiatXbc()
      : super(
          code: "XBC",
          name: "European Unit of Account 9",
          disambiguateSymbol: "XBC",
          subunitToUnit: 1,
          isoNumeric: "957",
          smallestDenomination: 0,
        );
}

class FiatXbd extends FiatCurrency {
  const FiatXbd()
      : super(
          code: "XBD",
          name: "European Unit of Account 17",
          disambiguateSymbol: "XBD",
          subunitToUnit: 1,
          isoNumeric: "958",
          smallestDenomination: 0,
        );
}

class FiatXcd extends FiatCurrency {
  const FiatXcd()
      : super(
          code: "XCD",
          name: "East Caribbean Dollar",
          symbol: r"$",
          disambiguateSymbol: r"EX$",
          alternateSymbols: const [r"EC$"],
          subunit: "Cent",
          unitFirst: true,
          htmlEntity: r"$",
          isoNumeric: "951",
        );
}

class FiatXdr extends FiatCurrency {
  const FiatXdr()
      : super(
          code: "XDR",
          name: "Special Drawing Rights",
          symbol: "SDR",
          alternateSymbols: const ["XDR"],
          subunitToUnit: 1,
          htmlEntity: r"$",
          isoNumeric: "960",
          smallestDenomination: 0,
        );
}

class FiatXof extends FiatCurrency {
  const FiatXof()
      : super(
          code: "XOF",
          name: "West African Cfa Franc",
          symbol: "Fr",
          disambiguateSymbol: "CFA",
          alternateSymbols: const ["CFA"],
          subunit: "Centime",
          subunitToUnit: 1,
          isoNumeric: "952",
          smallestDenomination: 100,
        );
}

class FiatXpd extends FiatCurrency {
  const FiatXpd()
      : super(
          code: "XPD",
          name: "Palladium",
          symbol: "oz t",
          disambiguateSymbol: "XPD",
          subunit: "oz",
          subunitToUnit: 1,
          isoNumeric: "964",
          smallestDenomination: 0,
        );
}

class FiatXpf extends FiatCurrency {
  const FiatXpf()
      : super(
          code: "XPF",
          name: "Cfp Franc",
          symbol: "Fr",
          alternateSymbols: const ["F"],
          subunit: "Centime",
          subunitToUnit: 1,
          isoNumeric: "953",
          smallestDenomination: 100,
        );
}

class FiatXpt extends FiatCurrency {
  const FiatXpt()
      : super(
          code: "XPT",
          name: "Platinum",
          symbol: "oz t",
          subunitToUnit: 1,
          isoNumeric: "962",
          smallestDenomination: 0,
        );
}

class FiatXts extends FiatCurrency {
  const FiatXts()
      : super(
          code: "XTS",
          name: "Codes specifically reserved for testing purposes",
          subunitToUnit: 1,
          isoNumeric: "963",
          smallestDenomination: 0,
        );
}

class FiatYer extends FiatCurrency {
  const FiatYer()
      : super(
          code: "YER",
          name: "Yemeni Rial",
          symbol: "﷼",
          subunit: "Fils",
          htmlEntity: "&#xFDFC;",
          isoNumeric: "886",
          smallestDenomination: 100,
        );
}

class FiatZar extends FiatCurrency {
  const FiatZar()
      : super(
          code: "ZAR",
          name: "South African Rand",
          symbol: "R",
          subunit: "Cent",
          unitFirst: true,
          htmlEntity: "&#x0052;",
          decimalMark: ",",
          thousandsSeparator: " ",
          isoNumeric: "710",
          smallestDenomination: 10,
        );
}

class FiatZmk extends FiatCurrency {
  const FiatZmk()
      : super(
          code: "ZMK",
          name: "Zambian Kwacha",
          symbol: "ZK",
          disambiguateSymbol: "ZMK",
          subunit: "Ngwee",
          isoNumeric: "894",
          smallestDenomination: 5,
        );
}

class FiatZmw extends FiatCurrency {
  const FiatZmw()
      : super(
          code: "ZMW",
          name: "Zambian Kwacha",
          symbol: "K",
          disambiguateSymbol: "ZMW",
          subunit: "Ngwee",
          unitFirst: true,
          isoNumeric: "967",
          smallestDenomination: 5,
        );
}
