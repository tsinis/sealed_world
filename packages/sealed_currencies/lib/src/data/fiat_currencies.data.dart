import "../helpers/fiat_currency/fiat_currency_getters.dart";
import "../model/currency.dart";

/// {@hideConstantImplementations}
class FiatAed extends FiatCurrency {
  /// A class that represents the United Arab Emirates Dirham.
  const FiatAed()
      : super(
          code: "AED",
          namesNative: const ["درهم إماراتي"],
          name: "United Arab Emirates Dirham",
          symbol: "د.إ",
          alternateSymbols: const ["DH", "Dhs"],
          subunit: "Fils",
          codeNumeric: "784",
          smallestDenomination: 25,
        );
}

/// {@hideConstantImplementations}
class FiatAfn extends FiatCurrency {
  /// A class that represents the Afghan Afghani.
  const FiatAfn()
      : super(
          code: "AFN",
          namesNative: const ["افغانی"],
          name: "Afghan Afghani",
          symbol: "؋",
          alternateSymbols: const ["Af", "Afs"],
          subunit: "Pul",
          codeNumeric: "971",
          smallestDenomination: 100,
        );
}

/// {@hideConstantImplementations}
class FiatAll extends FiatCurrency {
  /// A class that represents the Albanian Lek.
  const FiatAll()
      : super(
          code: "ALL",
          namesNative: const ["Leku Shqiptar"],
          name: "Albanian Lek",
          symbol: "L",
          disambiguateSymbol: "Lek",
          alternateSymbols: const ["Lek"],
          subunit: "Qintar",
          codeNumeric: "008",
          smallestDenomination: 100,
        );
}

/// {@hideConstantImplementations}
class FiatAmd extends FiatCurrency {
  /// A class that represents the Armenian Dram.
  const FiatAmd()
      : super(
          code: "AMD",
          namesNative: const ["Հայկական Դրամ"],
          name: "Armenian Dram",
          symbol: "դր.",
          alternateSymbols: const ["dram"],
          subunit: "Luma",
          codeNumeric: "051",
          smallestDenomination: 10,
        );
}

/// {@hideConstantImplementations}
class FiatAng extends FiatCurrency {
  /// A class that represents the Netherlands Antillean Guilder.
  const FiatAng()
      : super(
          code: "ANG",
          namesNative: const ["Antilliaanse gulden"],
          name: "Netherlands Antillean Guilder",
          symbol: "ƒ",
          alternateSymbols: const ["NAƒ", "NAf", "f"],
          subunit: "Cent",
          unitFirst: true,
          htmlEntity: "&#x0192;",
          decimalMark: ",",
          thousandsSeparator: ".",
          codeNumeric: "532",
        );
}

/// {@hideConstantImplementations}
class FiatAoa extends FiatCurrency {
  /// A class that represents the Angolan Kwanza.
  const FiatAoa()
      : super(
          code: "AOA",
          namesNative: const ["Angolan kwanza"],
          name: "Angolan Kwanza",
          symbol: "Kz",
          subunit: "Cêntimo",
          codeNumeric: "973",
          smallestDenomination: 10,
        );
}

/// {@hideConstantImplementations}
class FiatArs extends FiatCurrency {
  /// A class that represents the Argentine Peso.
  const FiatArs()
      : super(
          code: "ARS",
          namesNative: const ["Argentine peso"],
          name: "Argentine Peso",
          symbol: r"$",
          disambiguateSymbol: r"$m/n",
          alternateSymbols: const [r"$m/n", r"m$n"],
          subunit: "Centavo",
          unitFirst: true,
          htmlEntity: r"$",
          decimalMark: ",",
          thousandsSeparator: ".",
          codeNumeric: "032",
        );
}

/// {@hideConstantImplementations}
class FiatAud extends FiatCurrency {
  /// A class that represents the Australian Dollar.
  const FiatAud()
      : super(
          priority: 4,
          code: "AUD",
          namesNative: const ["Australian dollar"],
          name: "Australian Dollar",
          symbol: r"$",
          disambiguateSymbol: r"A$",
          alternateSymbols: const [r"A$"],
          subunit: "Cent",
          unitFirst: true,
          htmlEntity: r"$",
          codeNumeric: "036",
          smallestDenomination: 5,
        );
}

/// {@hideConstantImplementations}
class FiatAwg extends FiatCurrency {
  /// A class that represents the Aruban Florin.
  const FiatAwg()
      : super(
          code: "AWG",
          namesNative: const ["Arubaanse florijn"],
          name: "Aruban Florin",
          symbol: "ƒ",
          alternateSymbols: const ["Afl"],
          subunit: "Cent",
          htmlEntity: "&#x0192;",
          codeNumeric: "533",
          smallestDenomination: 5,
        );
}

/// {@hideConstantImplementations}
class FiatAzn extends FiatCurrency {
  /// A class that represents the Azerbaijani Manat.
  const FiatAzn()
      : super(
          code: "AZN",
          namesNative: const ["Azərbaycan manatı"],
          name: "Azerbaijani Manat",
          symbol: "₼",
          alternateSymbols: const ["m", "man"],
          subunit: "Qəpik",
          unitFirst: true,
          codeNumeric: "944",
        );
}

/// {@hideConstantImplementations}
class FiatBam extends FiatCurrency {
  /// A class that represents the Bosnia and Herzegovina Convertible Mark.
  const FiatBam()
      : super(
          code: "BAM",
          namesNative: const ["Konvertibilna marka", "Конвертибилна марка"],
          name: "Convertible Mark",
          symbol: "КМ",
          alternateSymbols: const ["KM"],
          subunit: "Fening",
          unitFirst: true,
          codeNumeric: "977",
          smallestDenomination: 5,
        );
}

/// {@hideConstantImplementations}
class FiatBbd extends FiatCurrency {
  /// A class that represents the Barbadian Dollar.
  const FiatBbd()
      : super(
          code: "BBD",
          namesNative: const ["Barbadian dollar"],
          name: "Barbadian Dollar",
          symbol: r"$",
          disambiguateSymbol: r"Bds$",
          alternateSymbols: const [r"Bds$"],
          subunit: "Cent",
          unitFirst: true,
          htmlEntity: r"$",
          codeNumeric: "052",
        );
}

/// {@hideConstantImplementations}
class FiatBdt extends FiatCurrency {
  /// A class that represents the Bangladeshi Taka.
  const FiatBdt()
      : super(
          code: "BDT",
          namesNative: const ["টাকা"],
          name: "Bangladeshi Taka",
          symbol: "৳",
          alternateSymbols: const ["Tk"],
          subunit: "Paisa",
          unitFirst: true,
          codeNumeric: "050",
        );
}

/// {@hideConstantImplementations}
class FiatBgn extends FiatCurrency {
  /// A class that represents the Bulgarian Lev.
  const FiatBgn()
      : super(
          code: "BGN",
          namesNative: const ["Български лев"],
          name: "Bulgarian Lev",
          symbol: "лв.",
          alternateSymbols: const ["lev", "leva", "лев", "лева"],
          subunit: "Stotinka",
          codeNumeric: "975",
        );
}

/// {@hideConstantImplementations}
class FiatBhd extends FiatCurrency {
  /// A class that represents the Bahraini Dinar.
  const FiatBhd()
      : super(
          code: "BHD",
          namesNative: const ["دينار بحريني"],
          name: "Bahraini Dinar",
          symbol: "د.ب",
          alternateSymbols: const ["BD"],
          subunit: "Fils",
          subunitToUnit: 1000,
          unitFirst: true,
          codeNumeric: "048",
          smallestDenomination: 5,
        );
}

/// {@hideConstantImplementations}
class FiatBif extends FiatCurrency {
  /// A class that represents the Burundian Franc.
  const FiatBif()
      : super(
          code: "BIF",
          namesNative: const ["franc burundais"],
          name: "Burundian Franc",
          symbol: "Fr",
          disambiguateSymbol: "FBu",
          alternateSymbols: const ["FBu"],
          subunit: "Centime",
          subunitToUnit: 1,
          codeNumeric: "108",
          smallestDenomination: 100,
        );
}

/// {@hideConstantImplementations}
class FiatBmd extends FiatCurrency {
  /// A class that represents the Bermuda Dollar.
  const FiatBmd()
      : super(
          code: "BMD",
          namesNative: const ["Bermudian dollars"],
          name: "Bermudian Dollar",
          symbol: r"$",
          disambiguateSymbol: r"BD$",
          alternateSymbols: const [r"BD$"],
          subunit: "Cent",
          unitFirst: true,
          htmlEntity: r"$",
          codeNumeric: "060",
        );
}

/// {@hideConstantImplementations}
class FiatBnd extends FiatCurrency {
  /// A class that represents the Brunei Dollar.
  const FiatBnd()
      : super(
          code: "BND",
          namesNative: const ["Ringgit Brunei"],
          name: "Brunei Dollar",
          symbol: r"$",
          disambiguateSymbol: "BND",
          alternateSymbols: const [r"B$"],
          subunit: "Sen",
          unitFirst: true,
          htmlEntity: r"$",
          codeNumeric: "096",
        );
}

/// {@hideConstantImplementations}
class FiatBob extends FiatCurrency {
  /// A class that represents the Bolivian Boliviano.
  const FiatBob()
      : super(
          code: "BOB",
          namesNative: const ["Bolivian boliviano"],
          name: "Bolivian Boliviano",
          symbol: "Bs.",
          alternateSymbols: const ["Bs"],
          subunit: "Centavo",
          unitFirst: true,
          codeNumeric: "068",
          smallestDenomination: 10,
        );
}

/// {@hideConstantImplementations}
class FiatBrl extends FiatCurrency {
  /// A class that represents the Brazilian Real.
  const FiatBrl()
      : super(
          code: "BRL",
          namesNative: const ["real brasileiro"],
          name: "Brazilian Real",
          symbol: r"R$",
          subunit: "Centavo",
          unitFirst: true,
          htmlEntity: r"R$",
          decimalMark: ",",
          thousandsSeparator: ".",
          codeNumeric: "986",
          smallestDenomination: 5,
        );
}

/// {@hideConstantImplementations}
class FiatBsd extends FiatCurrency {
  /// A class that represents the Bahamian Dollar.
  const FiatBsd()
      : super(
          code: "BSD",
          namesNative: const ["Bahamian dollar"],
          name: "Bahamian Dollar",
          symbol: r"$",
          disambiguateSymbol: "BSD",
          alternateSymbols: const [r"B$"],
          subunit: "Cent",
          unitFirst: true,
          htmlEntity: r"$",
          codeNumeric: "044",
        );
}

/// {@hideConstantImplementations}
class FiatBtn extends FiatCurrency {
  /// A class that represents the Bhutanese Ngultrum.
  const FiatBtn()
      : super(
          code: "BTN",
          namesNative: const ["དངུལ་ཀྲམ"],
          name: "Bhutanese Ngultrum",
          symbol: "Nu.",
          alternateSymbols: const ["Nu"],
          subunit: "Chertrum",
          codeNumeric: "064",
          smallestDenomination: 5,
        );
}

/// {@hideConstantImplementations}
class FiatBwp extends FiatCurrency {
  /// A class that represents the Botswana Pula.
  const FiatBwp()
      : super(
          code: "BWP",
          namesNative: const ["Botswana pula"],
          name: "Botswanan Pula",
          symbol: "P",
          subunit: "Thebe",
          unitFirst: true,
          codeNumeric: "072",
          smallestDenomination: 5,
        );
}

/// {@hideConstantImplementations}
class FiatByn extends FiatCurrency {
  /// A class that represents the Belarusian Ruble.
  const FiatByn()
      : super(
          code: "BYN",
          namesNative: const ["беларускі рубель", "белорусский рубль"],
          name: "Belarusian Ruble",
          symbol: "Br",
          disambiguateSymbol: "BYN",
          alternateSymbols: const ["бел. руб.", "б.р.", "руб.", "р."],
          subunit: "Kapeyka",
          decimalMark: ",",
          thousandsSeparator: " ",
          codeNumeric: "933",
        );
}

/// {@hideConstantImplementations}
class FiatBzd extends FiatCurrency {
  /// A class that represents the Belize Dollar.
  const FiatBzd()
      : super(
          code: "BZD",
          namesNative: const ["Belize dollar"],
          name: "Belize Dollar",
          symbol: r"$",
          disambiguateSymbol: r"BZ$",
          alternateSymbols: const [r"BZ$"],
          subunit: "Cent",
          unitFirst: true,
          htmlEntity: r"$",
          codeNumeric: "084",
        );
}

/// {@hideConstantImplementations}
class FiatCad extends FiatCurrency {
  /// A class that represents the Canadian Dollar.
  const FiatCad()
      : super(
          priority: 5,
          code: "CAD",
          namesNative: const ["Canadian dollar"],
          name: "Canadian Dollar",
          symbol: r"$",
          disambiguateSymbol: r"C$",
          alternateSymbols: const [r"C$", r"CAD$"],
          subunit: "Cent",
          unitFirst: true,
          htmlEntity: r"$",
          codeNumeric: "124",
          smallestDenomination: 5,
        );
}

/// {@hideConstantImplementations}
class FiatCdf extends FiatCurrency {
  /// A class that represents the Congolese Franc.
  const FiatCdf()
      : super(
          code: "CDF",
          namesNative: const ["franc congolais"],
          name: "Congolese Franc",
          symbol: "Fr",
          disambiguateSymbol: "FC",
          alternateSymbols: const ["FC"],
          subunit: "Centime",
          codeNumeric: "976",
        );
}

/// {@hideConstantImplementations}
class FiatChf extends FiatCurrency {
  /// A class that represents the Swiss Franc.
  const FiatChf()
      : super(
          code: "CHF",
          namesNative: const ["Schweizer Franken"],
          name: "Swiss Franc",
          alternateSymbols: const ["SFr", "Fr"],
          subunit: "Rappen",
          unitFirst: true,
          codeNumeric: "756",
          smallestDenomination: 5,
        );

  @override
  String addUnit(String value) => "$unit$value";
}

/// {@hideConstantImplementations}
class FiatClf extends FiatCurrency {
  /// A class that represents the Unidad de Fomento.
  const FiatClf()
      : super(
          code: "CLF",
          namesNative: const ["Unidad de Fomento"],
          name: "Chilean Unit of Account (UF)",
          symbol: "UF",
          subunit: "Peso",
          subunitToUnit: 10000,
          unitFirst: true,
          htmlEntity: "&#x20B1;",
          decimalMark: ",",
          thousandsSeparator: ".",
          codeNumeric: "990",
          smallestDenomination: 0,
        );
}

/// {@hideConstantImplementations}
class FiatClp extends FiatCurrency {
  /// A class that represents the Chilean Peso.
  const FiatClp()
      : super(
          code: "CLP",
          namesNative: const ["Peso chileno"],
          name: "Chilean Peso",
          symbol: r"$",
          disambiguateSymbol: "CLP",
          subunit: "Peso",
          subunitToUnit: 1,
          unitFirst: true,
          htmlEntity: "&#36;",
          decimalMark: ",",
          thousandsSeparator: ".",
          codeNumeric: "152",
        );
}

/// {@hideConstantImplementations}
class FiatCny extends FiatCurrency {
  /// A class that represents the Chinese Renminbi Yuan.
  const FiatCny()
      : super(
          code: "CNY",
          namesNative: const ["人民币"],
          name: "Chinese Renminbi Yuan",
          symbol: "¥",
          alternateSymbols: const ["CN¥", "元", "CN元"],
          subunit: "Fen",
          unitFirst: true,
          htmlEntity: "￥",
          codeNumeric: "156",
        );
}

/// {@hideConstantImplementations}
class FiatCop extends FiatCurrency {
  /// A class that represents the Colombian Peso.
  const FiatCop()
      : super(
          code: "COP",
          namesNative: const ["peso colombiano"],
          name: "Colombian Peso",
          symbol: r"$",
          disambiguateSymbol: r"COL$",
          alternateSymbols: const [r"COL$"],
          subunit: "Centavo",
          unitFirst: true,
          htmlEntity: "&#36;",
          decimalMark: ",",
          thousandsSeparator: ".",
          codeNumeric: "170",
          smallestDenomination: 20,
        );
}

/// {@hideConstantImplementations}
class FiatCrc extends FiatCurrency {
  /// A class that represents the Costa Rican Colón.
  const FiatCrc()
      : super(
          code: "CRC",
          namesNative: const ["colón costarricense"],
          name: "Costa Rican Colón",
          symbol: "₡",
          alternateSymbols: const ["¢"],
          subunit: "Céntimo",
          unitFirst: true,
          htmlEntity: "&#x20A1;",
          decimalMark: ",",
          thousandsSeparator: ".",
          codeNumeric: "188",
          smallestDenomination: 500,
        );
}

/// {@hideConstantImplementations}
class FiatCuc extends FiatCurrency {
  /// A class that represents the Cuban Convertible Peso.
  const FiatCuc()
      : super(
          code: "CUC",
          namesNative: const ["Peso Convertible"],
          name: "Cuban Convertible Peso",
          symbol: r"$",
          disambiguateSymbol: r"CUC$",
          alternateSymbols: const [r"CUC$"],
          subunit: "Centavo",
          codeNumeric: "931",
        );
}

/// {@hideConstantImplementations}
class FiatCup extends FiatCurrency {
  /// A class that represents the Cuban Peso.
  const FiatCup()
      : super(
          code: "CUP",
          namesNative: const ["peso cubano"],
          name: "Cuban Peso",
          symbol: r"$",
          disambiguateSymbol: r"$MN",
          alternateSymbols: const [r"$MN"],
          subunit: "Centavo",
          unitFirst: true,
          htmlEntity: "&#x20B1;",
          codeNumeric: "192",
        );
}

/// {@hideConstantImplementations}
class FiatCve extends FiatCurrency {
  /// A class that represents the Cape Verdean Escudo.
  const FiatCve()
      : super(
          code: "CVE",
          namesNative: const ["eskudu kabu-verdianu"],
          name: "Cape Verdean Escudo",
          symbol: r"$",
          disambiguateSymbol: "Esc",
          alternateSymbols: const ["Esc"],
          subunit: "Centavo",
          codeNumeric: "132",
          smallestDenomination: 100,
        );
}

/// {@hideConstantImplementations}
class FiatCzk extends FiatCurrency {
  /// A class that represents the Czech Koruna.
  const FiatCzk()
      : super(
          code: "CZK",
          namesNative: const ["koruna česká"],
          name: "Czech Koruna",
          symbol: "Kč",
          subunit: "Haléř",
          decimalMark: ",",
          thousandsSeparator: " ",
          codeNumeric: "203",
          smallestDenomination: 100,
        );
}

/// {@hideConstantImplementations}
class FiatDjf extends FiatCurrency {
  /// A class that represents the Djiboutian Franc.
  const FiatDjf()
      : super(
          code: "DJF",
          namesNative: const ["franc djibouti"],
          name: "Djiboutian Franc",
          symbol: "Fdj",
          subunit: "Centime",
          subunitToUnit: 1,
          codeNumeric: "262",
          smallestDenomination: 100,
        );
}

/// {@hideConstantImplementations}
class FiatDkk extends FiatCurrency {
  /// A class that represents the Danish Krone.
  const FiatDkk()
      : super(
          code: "DKK",
          namesNative: const ["dansk krone"],
          name: "Danish Krone",
          symbol: "kr.",
          disambiguateSymbol: "DKK",
          alternateSymbols: const ["krone"],
          subunit: "Øre",
          decimalMark: ",",
          thousandsSeparator: ".",
          codeNumeric: "208",
          smallestDenomination: 50,
        );
}

/// {@hideConstantImplementations}
class FiatDop extends FiatCurrency {
  /// A class that represents the Dominican Peso.
  const FiatDop()
      : super(
          code: "DOP",
          namesNative: const ["Dominican peso"],
          name: "Dominican Peso",
          symbol: r"$",
          disambiguateSymbol: r"RD$",
          alternateSymbols: const [r"RD$"],
          subunit: "Centavo",
          unitFirst: true,
          htmlEntity: "&#x20B1;",
          codeNumeric: "214",
          smallestDenomination: 100,
        );
}

/// {@hideConstantImplementations}
class FiatDzd extends FiatCurrency {
  /// A class that represents the Algerian Dinar.
  const FiatDzd()
      : super(
          code: "DZD",
          namesNative: const ["دينار جزائري"],
          name: "Algerian Dinar",
          symbol: "د.ج",
          alternateSymbols: const ["DA"],
          subunit: "Centime",
          codeNumeric: "012",
          smallestDenomination: 100,
        );
}

/// {@hideConstantImplementations}
class FiatEgp extends FiatCurrency {
  /// A class that represents the Egyptian Pound.
  const FiatEgp()
      : super(
          code: "EGP",
          namesNative: const ["جنيه مصرى"],
          name: "Egyptian Pound",
          symbol: "ج.م",
          alternateSymbols: const ["LE", "E£", "L.E."],
          subunit: "Piastre",
          unitFirst: true,
          htmlEntity: "&#x00A3;",
          codeNumeric: "818",
          smallestDenomination: 25,
        );
}

/// {@hideConstantImplementations}
class FiatErn extends FiatCurrency {
  /// A class that represents the Eritrean Nakfa.
  const FiatErn()
      : super(
          code: "ERN",
          namesNative: const ["Eritrean nakfa"],
          name: "Eritrean Nakfa",
          symbol: "Nfk",
          subunit: "Cent",
          codeNumeric: "232",
        );
}

/// {@hideConstantImplementations}
class FiatEtb extends FiatCurrency {
  /// A class that represents the Ethiopian Birr.
  const FiatEtb()
      : super(
          code: "ETB",
          namesNative: const ["Ethiopian birr"],
          name: "Ethiopian Birr",
          symbol: "Br",
          disambiguateSymbol: "ETB",
          subunit: "Santim",
          codeNumeric: "230",
        );
}

/// {@hideConstantImplementations}
class FiatEur extends FiatCurrency {
  /// A class that represents the Euro.
  const FiatEur()
      : super(
          priority: 2,
          code: "EUR",
          namesNative: const ["Euro"],
          name: "Euro",
          symbol: "€",
          subunit: "Cent",
          unitFirst: true,
          htmlEntity: "€",
          decimalMark: ",",
          thousandsSeparator: ".",
          codeNumeric: "978",
        );
}

/// {@hideConstantImplementations}
class FiatFjd extends FiatCurrency {
  /// A class that represents the Fijian Dollar.
  const FiatFjd()
      : super(
          code: "FJD",
          namesNative: const ["Fijian dollar"],
          name: "Fijian Dollar",
          symbol: r"$",
          disambiguateSymbol: r"FJ$",
          alternateSymbols: const [r"FJ$"],
          subunit: "Cent",
          htmlEntity: r"$",
          codeNumeric: "242",
          smallestDenomination: 5,
        );
}

/// {@hideConstantImplementations}
class FiatFkp extends FiatCurrency {
  /// A class that represents the Falkland Islands Pound.
  const FiatFkp()
      : super(
          code: "FKP",
          namesNative: const ["Falkland Islands pound"],
          name: "Falkland Pound",
          symbol: "£",
          disambiguateSymbol: "FK£",
          alternateSymbols: const ["FK£"],
          subunit: "Penny",
          htmlEntity: "&#x00A3;",
          codeNumeric: "238",
        );
}

/// {@hideConstantImplementations}
class FiatGbp extends FiatCurrency {
  /// A class that represents the British Pound.
  const FiatGbp()
      : super(
          priority: 3,
          code: "GBP",
          namesNative: const ["British pound"],
          name: "British Pound",
          symbol: "£",
          subunit: "Penny",
          unitFirst: true,
          htmlEntity: "&#x00A3;",
          codeNumeric: "826",
        );
}

/// {@hideConstantImplementations}
class FiatGel extends FiatCurrency {
  /// A class that represents the Georgian Lari.
  const FiatGel()
      : super(
          code: "GEL",
          namesNative: const ["ქართული ლარი"],
          name: "Georgian Lari",
          symbol: "₾",
          alternateSymbols: const ["lari"],
          subunit: "Tetri",
          codeNumeric: "981",
        );
}

/// {@hideConstantImplementations}
class FiatGhs extends FiatCurrency {
  /// A class that represents the Ghanaian Cedi.
  const FiatGhs()
      : super(
          code: "GHS",
          namesNative: const ["Ghanaian cedi"],
          name: "Ghanaian Cedi",
          symbol: "₵",
          alternateSymbols: const ["GH¢", "GH₵"],
          subunit: "Pesewa",
          unitFirst: true,
          htmlEntity: "&#x20B5;",
          codeNumeric: "936",
        );
}

/// {@hideConstantImplementations}
class FiatGip extends FiatCurrency {
  /// A class that represents the Gibraltar Pound.
  const FiatGip()
      : super(
          code: "GIP",
          namesNative: const ["Gibraltar pound"],
          name: "Gibraltar Pound",
          symbol: "£",
          disambiguateSymbol: "GIP",
          subunit: "Penny",
          unitFirst: true,
          htmlEntity: "&#x00A3;",
          codeNumeric: "292",
        );
}

/// {@hideConstantImplementations}
class FiatGmd extends FiatCurrency {
  /// A class that represents the Gambian Dalasi.
  const FiatGmd()
      : super(
          code: "GMD",
          namesNative: const ["Gambian dalasi"],
          name: "Gambian Dalasi",
          symbol: "D",
          subunit: "Butut",
          codeNumeric: "270",
        );
}

/// {@hideConstantImplementations}
class FiatGnf extends FiatCurrency {
  /// A class that represents the Guinean Franc.
  const FiatGnf()
      : super(
          code: "GNF",
          namesNative: const ["franc guinéen"],
          name: "Guinean Franc",
          symbol: "Fr",
          disambiguateSymbol: "FG",
          alternateSymbols: const ["FG", "GFr"],
          subunit: "Centime",
          subunitToUnit: 1,
          codeNumeric: "324",
          smallestDenomination: 100,
        );
}

/// {@hideConstantImplementations}
class FiatGtq extends FiatCurrency {
  /// A class that represents the Guatemalan Quetzal.
  const FiatGtq()
      : super(
          code: "GTQ",
          namesNative: const ["quetzal guatemalteco"],
          name: "Guatemalan Quetzal",
          symbol: "Q",
          subunit: "Centavo",
          unitFirst: true,
          codeNumeric: "320",
        );
}

/// {@hideConstantImplementations}
class FiatGyd extends FiatCurrency {
  /// A class that represents the Guyanaese Dollar.
  const FiatGyd()
      : super(
          code: "GYD",
          namesNative: const ["Guyanese dollar"],
          name: "Guyanaese Dollar",
          symbol: r"$",
          disambiguateSymbol: r"G$",
          alternateSymbols: const [r"G$"],
          subunit: "Cent",
          htmlEntity: r"$",
          codeNumeric: "328",
          smallestDenomination: 100,
        );
}

/// {@hideConstantImplementations}
class FiatHkd extends FiatCurrency {
  /// A class that represents the Hong Kong Dollar.
  const FiatHkd()
      : super(
          code: "HKD",
          namesNative: const ["港幣"],
          name: "Hong Kong Dollar",
          symbol: r"$",
          disambiguateSymbol: r"HK$",
          alternateSymbols: const [r"HK$"],
          subunit: "Cent",
          unitFirst: true,
          htmlEntity: r"$",
          codeNumeric: "344",
          smallestDenomination: 10,
        );
}

/// {@hideConstantImplementations}
class FiatHnl extends FiatCurrency {
  /// A class that represents the Honduran Lempira.
  const FiatHnl()
      : super(
          code: "HNL",
          namesNative: const ["lempira hondureño"],
          name: "Honduran Lempira",
          symbol: "L",
          disambiguateSymbol: "HNL",
          subunit: "Centavo",
          unitFirst: true,
          codeNumeric: "340",
          smallestDenomination: 5,
        );
}

/// {@hideConstantImplementations}
class FiatHrk extends FiatCurrency {
  /// A class that represents the Croatian Kuna.
  const FiatHrk()
      : super(
          code: "HRK",
          namesNative: const ["hrvatska kuna"],
          name: "Croatian Kuna",
          symbol: "kn",
          subunit: "Lipa",
          decimalMark: ",",
          thousandsSeparator: ".",
          codeNumeric: "191",
        );
}

/// {@hideConstantImplementations}
class FiatHtg extends FiatCurrency {
  /// A class that represents the Haitian Gourde.
  const FiatHtg()
      : super(
          code: "HTG",
          namesNative: const ["goud ayisyen"],
          name: "Haitian Gourde",
          symbol: "G",
          subunit: "Centime",
          codeNumeric: "332",
          smallestDenomination: 5,
        );
}

/// {@hideConstantImplementations}
class FiatHuf extends FiatCurrency {
  /// A class that represents the Hungarian Forint.
  const FiatHuf()
      : super(
          code: "HUF",
          namesNative: const ["Magyar forint"],
          name: "Hungarian Forint",
          symbol: "Ft",
          subunitToUnit: 1,
          decimalMark: ",",
          thousandsSeparator: " ",
          codeNumeric: "348",
          smallestDenomination: 5,
        );
}

/// {@hideConstantImplementations}
class FiatIdr extends FiatCurrency {
  /// A class that represents the Indonesian Rupiah.
  const FiatIdr()
      : super(
          code: "IDR",
          namesNative: const ["Rupiah"],
          name: "Indonesian Rupiah",
          symbol: "Rp",
          subunit: "Sen",
          unitFirst: true,
          decimalMark: ",",
          thousandsSeparator: ".",
          codeNumeric: "360",
          smallestDenomination: 5000,
        );
}

/// {@hideConstantImplementations}
class FiatIls extends FiatCurrency {
  /// A class that represents the Israeli New Shekel.
  const FiatIls()
      : super(
          code: "ILS",
          namesNative: const ["שקל חדש"],
          name: "Israeli New Shekel",
          symbol: "₪",
          alternateSymbols: const ["ש״ח", "NIS"],
          subunit: "Agora",
          unitFirst: true,
          htmlEntity: "&#x20AA;",
          codeNumeric: "376",
          smallestDenomination: 10,
        );
}

/// {@hideConstantImplementations}
class FiatInr extends FiatCurrency {
  /// A class that represents the Indian Rupee.
  const FiatInr()
      : super(
          code: "INR",
          namesNative: const ["रुपया"],
          name: "Indian Rupee",
          symbol: "₹",
          alternateSymbols: const ["Rs", "৳", "૱", "௹", "रु", "₨"],
          subunit: "Paisa",
          unitFirst: true,
          htmlEntity: "&#x20b9;",
          codeNumeric: "356",
          smallestDenomination: 50,
        );
}

/// {@hideConstantImplementations}
class FiatIqd extends FiatCurrency {
  /// A class that represents the Iraqi Dinar.
  const FiatIqd()
      : super(
          code: "IQD",
          namesNative: const ["دينار عراقي"],
          name: "Iraqi Dinar",
          symbol: "ع.د",
          subunit: "Fils",
          subunitToUnit: 1000,
          codeNumeric: "368",
          smallestDenomination: 50000,
        );
}

/// {@hideConstantImplementations}
class FiatIrr extends FiatCurrency {
  /// A class that represents the Iranian Rial.
  const FiatIrr()
      : super(
          code: "IRR",
          namesNative: const ["ریال ایران"],
          name: "Iranian Rial",
          symbol: "﷼",
          unitFirst: true,
          htmlEntity: "&#xFDFC;",
          codeNumeric: "364",
          smallestDenomination: 5000,
        );
}

/// {@hideConstantImplementations}
class FiatIsk extends FiatCurrency {
  /// A class that represents the Icelandic Króna.
  const FiatIsk()
      : super(
          code: "ISK",
          namesNative: const ["íslensk króna"],
          name: "Icelandic Króna",
          symbol: "kr.",
          alternateSymbols: const ["Íkr"],
          subunitToUnit: 1,
          decimalMark: ",",
          thousandsSeparator: ".",
          codeNumeric: "352",
        );
}

/// {@hideConstantImplementations}
class FiatJmd extends FiatCurrency {
  /// A class that represents the Jamaican Dollar.
  const FiatJmd()
      : super(
          code: "JMD",
          namesNative: const ["Jamaican dollar"],
          name: "Jamaican Dollar",
          symbol: r"$",
          disambiguateSymbol: r"J$",
          alternateSymbols: const [r"J$"],
          subunit: "Cent",
          unitFirst: true,
          htmlEntity: r"$",
          codeNumeric: "388",
        );
}

/// {@hideConstantImplementations}
class FiatJod extends FiatCurrency {
  /// A class that represents the Jordanian Dinar.
  const FiatJod()
      : super(
          code: "JOD",
          namesNative: const ["دينار أردني"],
          name: "Jordanian Dinar",
          symbol: "د.ا",
          alternateSymbols: const ["JD"],
          subunit: "Fils",
          subunitToUnit: 1000,
          unitFirst: true,
          codeNumeric: "400",
          smallestDenomination: 5,
        );
}

/// {@hideConstantImplementations}
class FiatJpy extends FiatCurrency {
  /// A class that represents the Japanese Yen.
  const FiatJpy()
      : super(
          priority: 6,
          code: "JPY",
          namesNative: const ["日本円"],
          name: "Japanese Yen",
          symbol: "¥",
          alternateSymbols: const ["円", "圓"],
          subunitToUnit: 1,
          unitFirst: true,
          htmlEntity: "&#x00A5;",
          codeNumeric: "392",
        );
}

/// {@hideConstantImplementations}
class FiatKes extends FiatCurrency {
  /// A class that represents the Kenyan Shilling.
  const FiatKes()
      : super(
          code: "KES",
          namesNative: const ["Shillingi ya Kenya"],
          name: "Kenyan Shilling",
          symbol: "KSh",
          alternateSymbols: const ["Sh"],
          subunit: "Cent",
          unitFirst: true,
          codeNumeric: "404",
          smallestDenomination: 50,
        );
}

/// {@hideConstantImplementations}
class FiatKgs extends FiatCurrency {
  /// A class that represents the Kyrgystani Som.
  const FiatKgs()
      : super(
          code: "KGS",
          namesNative: const ["Кыргыз сом"],
          name: "Kyrgystani Som",
          symbol: "som",
          alternateSymbols: const ["сом"],
          subunit: "Tyiyn",
          codeNumeric: "417",
        );
}

/// {@hideConstantImplementations}
class FiatKhr extends FiatCurrency {
  /// A class that represents the Cambodian Riel.
  const FiatKhr()
      : super(
          code: "KHR",
          namesNative: const ["រៀល"],
          name: "Cambodian Riel",
          symbol: "៛",
          subunit: "Sen",
          htmlEntity: "&#x17DB;",
          codeNumeric: "116",
          smallestDenomination: 5000,
        );
}

/// {@hideConstantImplementations}
class FiatKmf extends FiatCurrency {
  /// A class that represents the Comorian Franc.
  const FiatKmf()
      : super(
          code: "KMF",
          namesNative: const ["Comorian franc"],
          name: "Comorian Franc",
          symbol: "Fr",
          disambiguateSymbol: "CF",
          alternateSymbols: const ["CF"],
          subunit: "Centime",
          subunitToUnit: 1,
          codeNumeric: "174",
          smallestDenomination: 100,
        );
}

/// {@hideConstantImplementations}
class FiatKpw extends FiatCurrency {
  /// A class that represents the North Korean Won.
  const FiatKpw()
      : super(
          code: "KPW",
          namesNative: const ["조선 민주주의 인민 공화국 원"],
          name: "North Korean Won",
          symbol: "₩",
          subunit: "Chŏn",
          htmlEntity: "&#x20A9;",
          codeNumeric: "408",
        );
}

/// {@hideConstantImplementations}
class FiatKrw extends FiatCurrency {
  /// A class that represents the South Korean Won.
  const FiatKrw()
      : super(
          code: "KRW",
          namesNative: const ["원"],
          name: "South Korean Won",
          symbol: "₩",
          subunitToUnit: 1,
          unitFirst: true,
          htmlEntity: "&#x20A9;",
          codeNumeric: "410",
        );
}

/// {@hideConstantImplementations}
class FiatKwd extends FiatCurrency {
  /// A class that represents the Kuwaiti Dinar.
  const FiatKwd()
      : super(
          code: "KWD",
          namesNative: const ["دينار كويتي"],
          name: "Kuwaiti Dinar",
          symbol: "د.ك",
          alternateSymbols: const ["K.D."],
          subunit: "Fils",
          subunitToUnit: 1000,
          unitFirst: true,
          codeNumeric: "414",
          smallestDenomination: 5,
        );
}

/// {@hideConstantImplementations}
class FiatKyd extends FiatCurrency {
  /// A class that represents the Cayman Islands Dollar.
  const FiatKyd()
      : super(
          code: "KYD",
          namesNative: const ["Cayman Islands dollar"],
          name: "Cayman Islands Dollar",
          symbol: r"$",
          disambiguateSymbol: r"CI$",
          alternateSymbols: const [r"CI$"],
          subunit: "Cent",
          unitFirst: true,
          htmlEntity: r"$",
          codeNumeric: "136",
        );
}

/// {@hideConstantImplementations}
class FiatKzt extends FiatCurrency {
  /// A class that represents the Kazakhstani Tenge.
  const FiatKzt()
      : super(
          code: "KZT",
          namesNative: const ["Қазақстан теңгесі", "Казахстанский тенге"],
          name: "Kazakhstani Tenge",
          symbol: "₸",
          subunit: "Tiyn",
          codeNumeric: "398",
          smallestDenomination: 100,
        );
}

/// {@hideConstantImplementations}
class FiatLak extends FiatCurrency {
  /// A class that represents the Laotian Kip.
  const FiatLak()
      : super(
          code: "LAK",
          namesNative: const ["ເງີນກີບລາວ"],
          name: "Laotian Kip",
          symbol: "₭",
          alternateSymbols: const ["₭N"],
          subunit: "Att",
          htmlEntity: "&#x20AD;",
          codeNumeric: "418",
          smallestDenomination: 10,
        );
}

/// {@hideConstantImplementations}
class FiatLbp extends FiatCurrency {
  /// A class that represents the Lebanese Pound.
  const FiatLbp()
      : super(
          code: "LBP",
          namesNative: const ["ليرة لبنانية"],
          name: "Lebanese Pound",
          symbol: "ل.ل",
          alternateSymbols: const ["£", "L£"],
          subunit: "Piastre",
          unitFirst: true,
          htmlEntity: "&#x00A3;",
          codeNumeric: "422",
          smallestDenomination: 25000,
        );
}

/// {@hideConstantImplementations}
class FiatLkr extends FiatCurrency {
  /// A class that represents the Sri Lankan Rupee.
  const FiatLkr()
      : super(
          code: "LKR",
          namesNative: const ["ශ්‍රී ලංකා රුපියල්"],
          name: "Sri Lankan Rupee",
          symbol: "₨",
          disambiguateSymbol: "SLRs",
          alternateSymbols: const ["රු", "ரூ", "SLRs", "/-"],
          subunit: "Cent",
          htmlEntity: "&#8360;",
          codeNumeric: "144",
          smallestDenomination: 100,
        );
}

/// {@hideConstantImplementations}
class FiatLrd extends FiatCurrency {
  /// A class that represents the Liberian Dollar.
  const FiatLrd()
      : super(
          code: "LRD",
          namesNative: const ["Liberian dollars"],
          name: "Liberian Dollar",
          symbol: r"$",
          disambiguateSymbol: r"L$",
          alternateSymbols: const [r"L$"],
          subunit: "Cent",
          htmlEntity: r"$",
          codeNumeric: "430",
          smallestDenomination: 5,
        );
}

/// {@hideConstantImplementations}
class FiatLsl extends FiatCurrency {
  /// A class that represents the Lesotho Loti.
  const FiatLsl()
      : super(
          code: "LSL",
          namesNative: const ["Lesotho loti"],
          name: "Lesotho Loti",
          symbol: "L",
          disambiguateSymbol: "M",
          alternateSymbols: const ["M"],
          subunit: "Sente",
          codeNumeric: "426",
        );
}

/// {@hideConstantImplementations}
class FiatLyd extends FiatCurrency {
  /// A class that represents the Libyan Dinar.
  const FiatLyd()
      : super(
          code: "LYD",
          namesNative: const ["دينار ليبي"],
          name: "Libyan Dinar",
          symbol: "ل.د",
          alternateSymbols: const ["LD"],
          subunit: "Dirham",
          subunitToUnit: 1000,
          codeNumeric: "434",
          smallestDenomination: 50,
        );
}

/// {@hideConstantImplementations}
class FiatMad extends FiatCurrency {
  /// A class that represents the Moroccan Dirham.
  const FiatMad()
      : super(
          code: "MAD",
          namesNative: const ["درهم مغربي"],
          name: "Moroccan Dirham",
          symbol: "د.م.",
          subunit: "Centime",
          codeNumeric: "504",
        );
}

/// {@hideConstantImplementations}
class FiatMdl extends FiatCurrency {
  /// A class that represents the Moldovan Leu.
  const FiatMdl()
      : super(
          code: "MDL",
          namesNative: const ["leu moldovenesc"],
          name: "Moldovan Leu",
          symbol: "L",
          alternateSymbols: const ["lei"],
          subunit: "Ban",
          codeNumeric: "498",
        );
}

/// {@hideConstantImplementations}
class FiatMga extends FiatCurrency {
  /// A class that represents the Malagasy Ariary.
  const FiatMga()
      : super(
          code: "MGA",
          namesNative: const ["ariary malgache"],
          name: "Malagasy Ariary",
          symbol: "Ar",
          subunit: "Iraimbilanja",
          subunitToUnit: 5,
          unitFirst: true,
          codeNumeric: "969",
        );
}

/// {@hideConstantImplementations}
class FiatMkd extends FiatCurrency {
  /// A class that represents the Macedonian Denar.
  const FiatMkd()
      : super(
          code: "MKD",
          namesNative: const ["Македонски денар"],
          name: "Macedonian Denar",
          symbol: "ден",
          subunit: "Deni",
          codeNumeric: "807",
          smallestDenomination: 100,
        );
}

/// {@hideConstantImplementations}
class FiatMmk extends FiatCurrency {
  /// A class that represents the Myanmar Kyat.
  const FiatMmk()
      : super(
          code: "MMK",
          namesNative: const ["ကျပ်"],
          name: "Myanmar Kyat",
          symbol: "K",
          disambiguateSymbol: "MMK",
          subunit: "Pya",
          codeNumeric: "104",
          smallestDenomination: 50,
        );
}

/// {@hideConstantImplementations}
class FiatMnt extends FiatCurrency {
  /// A class that represents the Mongolian Tugrik.
  const FiatMnt()
      : super(
          code: "MNT",
          namesNative: const ["Монгол төгрөг"],
          name: "Mongolian Tugrik",
          symbol: "₮",
          subunit: "Möngö",
          htmlEntity: "&#x20AE;",
          codeNumeric: "496",
          smallestDenomination: 2000,
        );
}

/// {@hideConstantImplementations}
class FiatMop extends FiatCurrency {
  /// A class that represents the Macanese Pataca.
  const FiatMop()
      : super(
          code: "MOP",
          namesNative: const ["澳門圓"],
          name: "Macanese Pataca",
          symbol: "P",
          alternateSymbols: const [r"MOP$"],
          subunit: "Avo",
          codeNumeric: "446",
          smallestDenomination: 10,
        );
}

/// {@hideConstantImplementations}
class FiatMru extends FiatCurrency {
  /// A class that represents the Mauritian Ouguiya.
  const FiatMru()
      : super(
          code: "MRU",
          namesNative: const ["أوقية موريتانية"],
          name: "Mauritanian Ouguiya",
          symbol: "UM",
          subunit: "Khoums",
          subunitToUnit: 5,
          codeNumeric: "929",
        );
}

/// {@hideConstantImplementations}
class FiatMur extends FiatCurrency {
  /// A class that represents the Mauritian Rupee.
  const FiatMur()
      : super(
          code: "MUR",
          namesNative: const ["Roupie mauricienne"],
          name: "Mauritian Rupee",
          symbol: "₨",
          subunit: "Cent",
          unitFirst: true,
          htmlEntity: "&#x20A8;",
          codeNumeric: "480",
          smallestDenomination: 100,
        );
}

/// {@hideConstantImplementations}
class FiatMvr extends FiatCurrency {
  /// A class that represents the Maldivian Rufiyaa.
  const FiatMvr()
      : super(
          code: "MVR",
          namesNative: const ["ދިވެހި ރުފިޔާ"],
          name: "Maldivian Rufiyaa",
          alternateSymbols: const ["MRF", "Rf", "/-", "ރ"],
          subunit: "Laari",
          codeNumeric: "462",
        );
}

/// {@hideConstantImplementations}
class FiatMwk extends FiatCurrency {
  /// A class that represents the Malawian Kwacha.
  const FiatMwk()
      : super(
          code: "MWK",
          namesNative: const ["Malawian kwacha"],
          name: "Malawian Kwacha",
          symbol: "MK",
          subunit: "Tambala",
          codeNumeric: "454",
        );
}

/// {@hideConstantImplementations}
class FiatMxn extends FiatCurrency {
  /// A class that represents the Mexican Peso.
  const FiatMxn()
      : super(
          code: "MXN",
          namesNative: const ["Peso Mexicano"],
          name: "Mexican Peso",
          symbol: r"$",
          disambiguateSymbol: r"MEX$",
          alternateSymbols: const [r"MEX$"],
          subunit: "Centavo",
          unitFirst: true,
          htmlEntity: r"$",
          codeNumeric: "484",
          smallestDenomination: 5,
        );
}

/// {@hideConstantImplementations}
class FiatMyr extends FiatCurrency {
  /// A class that represents the Malaysian Ringgit.
  const FiatMyr()
      : super(
          code: "MYR",
          namesNative: const ["Ringgit Malaysia"],
          name: "Malaysian Ringgit",
          symbol: "RM",
          subunit: "Sen",
          unitFirst: true,
          codeNumeric: "458",
          smallestDenomination: 5,
        );
}

/// {@hideConstantImplementations}
class FiatMzn extends FiatCurrency {
  /// A class that represents the Mozambican Metical.
  const FiatMzn()
      : super(
          code: "MZN",
          namesNative: const ["Metical moçambicano"],
          name: "Mozambican Metical",
          symbol: "MTn",
          alternateSymbols: const ["MZN"],
          subunit: "Centavo",
          unitFirst: true,
          decimalMark: ",",
          thousandsSeparator: ".",
          codeNumeric: "943",
        );
}

/// {@hideConstantImplementations}
class FiatNad extends FiatCurrency {
  /// A class that represents the Namibian Dollar.
  const FiatNad()
      : super(
          code: "NAD",
          namesNative: const ["Namibian dollar"],
          name: "Namibian Dollar",
          symbol: r"$",
          disambiguateSymbol: r"N$",
          alternateSymbols: const [r"N$"],
          subunit: "Cent",
          htmlEntity: r"$",
          codeNumeric: "516",
          smallestDenomination: 5,
        );
}

/// {@hideConstantImplementations}
class FiatNgn extends FiatCurrency {
  /// A class that represents the Nigerian Naira.
  const FiatNgn()
      : super(
          code: "NGN",
          namesNative: const ["Nigerian naira"],
          name: "Nigerian Naira",
          symbol: "₦",
          subunit: "Kobo",
          unitFirst: true,
          htmlEntity: "&#x20A6;",
          codeNumeric: "566",
          smallestDenomination: 50,
        );
}

/// {@hideConstantImplementations}
class FiatNio extends FiatCurrency {
  /// A class that represents the Nicaraguan Córdoba.
  const FiatNio()
      : super(
          code: "NIO",
          namesNative: const ["córdoba nicaragüense"],
          name: "Nicaraguan Córdoba",
          symbol: r"C$",
          disambiguateSymbol: r"NIO$",
          subunit: "Centavo",
          unitFirst: true,
          codeNumeric: "558",
          smallestDenomination: 5,
        );
}

/// {@hideConstantImplementations}
class FiatNok extends FiatCurrency {
  /// A class that represents the Norwegian Krone.
  const FiatNok()
      : super(
          code: "NOK",
          namesNative: const ["norsk krone"],
          name: "Norwegian Krone",
          symbol: "kr",
          disambiguateSymbol: "NOK",
          alternateSymbols: const ["krone"],
          subunit: "Øre",
          htmlEntity: "kr",
          decimalMark: ",",
          thousandsSeparator: ".",
          codeNumeric: "578",
          smallestDenomination: 100,
        );
}

/// {@hideConstantImplementations}
class FiatNpr extends FiatCurrency {
  /// A class that represents the Nepalese Rupee.
  const FiatNpr()
      : super(
          code: "NPR",
          namesNative: const ["रुपैयाँ"],
          name: "Nepalese Rupee",
          symbol: "Rs.",
          disambiguateSymbol: "NPR",
          alternateSymbols: const ["Rs", "रू", "₨"],
          subunit: "Paisa",
          unitFirst: true,
          htmlEntity: "&#x20A8;",
          codeNumeric: "524",
        );
}

/// {@hideConstantImplementations}
class FiatNzd extends FiatCurrency {
  /// A class that represents the New Zealand Dollar.
  const FiatNzd()
      : super(
          code: "NZD",
          namesNative: const ["New Zealand dollar"],
          name: "New Zealand Dollar",
          symbol: r"$",
          disambiguateSymbol: r"NZ$",
          alternateSymbols: const [r"NZ$"],
          subunit: "Cent",
          unitFirst: true,
          htmlEntity: r"$",
          codeNumeric: "554",
          smallestDenomination: 10,
        );
}

/// {@hideConstantImplementations}
class FiatOmr extends FiatCurrency {
  /// A class that represents the Omani Rial.
  const FiatOmr()
      : super(
          code: "OMR",
          namesNative: const ["ريال عماني"],
          name: "Omani Rial",
          symbol: "ر.ع.",
          subunit: "Baisa",
          subunitToUnit: 1000,
          unitFirst: true,
          htmlEntity: "&#xFDFC;",
          codeNumeric: "512",
          smallestDenomination: 5,
        );
}

/// {@hideConstantImplementations}
class FiatPab extends FiatCurrency {
  /// A class that represents the Panamanian Balboa.
  const FiatPab()
      : super(
          code: "PAB",
          namesNative: const ["Balboa panameño"],
          name: "Panamanian Balboa",
          symbol: "B/.",
          subunit: "Centésimo",
          unitFirst: true,
          codeNumeric: "590",
        );
}

/// {@hideConstantImplementations}
class FiatPen extends FiatCurrency {
  /// A class that represents the Peruvian Sol.
  const FiatPen()
      : super(
          code: "PEN",
          namesNative: const ["sol peruano"],
          name: "Peruvian Sol",
          symbol: "S/",
          subunit: "Céntimo",
          unitFirst: true,
          htmlEntity: "S/",
          codeNumeric: "604",
          decimalMark: ",",
          thousandsSeparator: ".",
        );
}

/// {@hideConstantImplementations}
class FiatPgk extends FiatCurrency {
  /// A class that represents the Papua New Guinean Kina.
  const FiatPgk()
      : super(
          code: "PGK",
          namesNative: const ["Papua New Guinean kina"],
          name: "Papua New Guinean Kina",
          symbol: "K",
          disambiguateSymbol: "PGK",
          subunit: "Toea",
          codeNumeric: "598",
          smallestDenomination: 5,
        );
}

/// {@hideConstantImplementations}
class FiatPhp extends FiatCurrency {
  /// A class that represents the Philippine Peso.
  const FiatPhp()
      : super(
          code: "PHP",
          namesNative: const ["Piso ng Pilipinas"],
          name: "Philippine Peso",
          symbol: "₱",
          alternateSymbols: const ["PHP", "PhP", "P"],
          subunit: "Centavo",
          unitFirst: true,
          htmlEntity: "&#x20B1;",
          codeNumeric: "608",
        );
}

/// {@hideConstantImplementations}
class FiatPkr extends FiatCurrency {
  /// A class that represents the Pakistani Rupee.
  const FiatPkr()
      : super(
          code: "PKR",
          namesNative: const ["پاکستانی روپیہ"],
          name: "Pakistani Rupee",
          symbol: "₨",
          disambiguateSymbol: "PKR",
          alternateSymbols: const ["Rs"],
          subunit: "Paisa",
          unitFirst: true,
          htmlEntity: "&#x20A8;",
          codeNumeric: "586",
          smallestDenomination: 100,
        );
}

/// {@hideConstantImplementations}
class FiatPln extends FiatCurrency {
  /// A class that represents the Polish Zloty.
  const FiatPln()
      : super(
          code: "PLN",
          namesNative: const ["Polski złoty"],
          name: "Polish Zloty",
          symbol: "zł",
          subunit: "Grosz",
          htmlEntity: "z&#322;",
          decimalMark: ",",
          thousandsSeparator: " ",
          codeNumeric: "985",
        );
}

/// {@hideConstantImplementations}
class FiatPyg extends FiatCurrency {
  /// A class that represents the Paraguayan Guarani.
  const FiatPyg()
      : super(
          code: "PYG",
          namesNative: const ["Guaraní paraguayo"],
          name: "Paraguayan Guarani",
          symbol: "₲",
          subunit: "Céntimo",
          subunitToUnit: 1,
          unitFirst: true,
          htmlEntity: "&#x20B2;",
          codeNumeric: "600",
          smallestDenomination: 5000,
        );
}

/// {@hideConstantImplementations}
class FiatQar extends FiatCurrency {
  /// A class that represents the Qatari Riyal.
  const FiatQar()
      : super(
          code: "QAR",
          namesNative: const ["ريال قطري"],
          name: "Qatari Riyal",
          symbol: "ر.ق",
          alternateSymbols: const ["QR"],
          subunit: "Dirham",
          htmlEntity: "&#xFDFC;",
          codeNumeric: "634",
        );
}

/// {@hideConstantImplementations}
class FiatRon extends FiatCurrency {
  /// A class that represents the Romanian Leu.
  const FiatRon()
      : super(
          code: "RON",
          namesNative: const ["Leu românesc"],
          name: "Romanian Leu",
          symbol: "Lei",
          subunit: "Bani",
          decimalMark: ",",
          thousandsSeparator: ".",
          codeNumeric: "946",
        );
}

/// {@hideConstantImplementations}
class FiatRsd extends FiatCurrency {
  /// A class that represents the Serbian Dinar.
  const FiatRsd()
      : super(
          code: "RSD",
          namesNative: const ["Српски динар", "Srpski dinar"],
          name: "Serbian Dinar",
          symbol: "РСД",
          alternateSymbols: const ["RSD", "din", "дин"],
          subunit: "Para",
          unitFirst: true,
          codeNumeric: "941",
          smallestDenomination: 100,
        );
}

/// {@hideConstantImplementations}
class FiatRub extends FiatCurrency {
  /// A class that represents the Russian Ruble.
  const FiatRub()
      : super(
          code: "RUB",
          namesNative: const ["Российский рубль"],
          name: "Russian Ruble",
          symbol: "₽",
          alternateSymbols: const ["руб.", "р."],
          subunit: "Kopeck",
          htmlEntity: "&#x20BD;",
          decimalMark: ",",
          thousandsSeparator: ".",
          codeNumeric: "643",
        );
}

/// {@hideConstantImplementations}
class FiatRwf extends FiatCurrency {
  /// A class that represents the Rwandan Franc.
  const FiatRwf()
      : super(
          code: "RWF",
          namesNative: const ["Franc Rwandais"],
          name: "Rwandan Franc",
          symbol: "FRw",
          alternateSymbols: const ["RF", "R₣"],
          subunit: "Centime",
          subunitToUnit: 1,
          codeNumeric: "646",
          smallestDenomination: 100,
        );
}

/// {@hideConstantImplementations}
class FiatSar extends FiatCurrency {
  /// A class that represents the Saudi Riyal.
  const FiatSar()
      : super(
          code: "SAR",
          namesNative: const ["ريال سعودي"],
          name: "Saudi Riyal",
          symbol: "ر.س",
          alternateSymbols: const ["SR", "﷼"],
          subunit: "Hallallah",
          unitFirst: true,
          htmlEntity: "&#xFDFC;",
          codeNumeric: "682",
          smallestDenomination: 5,
        );
}

/// {@hideConstantImplementations}
class FiatSbd extends FiatCurrency {
  /// A class that represents the Solomon Islands Dollar.
  const FiatSbd()
      : super(
          code: "SBD",
          namesNative: const ["Solomon Islands dollar"],
          name: "Solomon Islands Dollar",
          symbol: r"$",
          disambiguateSymbol: r"SI$",
          alternateSymbols: const [r"SI$"],
          subunit: "Cent",
          htmlEntity: r"$",
          codeNumeric: "090",
          smallestDenomination: 10,
        );
}

/// {@hideConstantImplementations}
class FiatScr extends FiatCurrency {
  /// A class that represents the Seychellois Rupee.
  const FiatScr()
      : super(
          code: "SCR",
          namesNative: const ["roupie seychelloise"],
          name: "Seychellois Rupee",
          symbol: "₨",
          disambiguateSymbol: "SRe",
          alternateSymbols: const ["SRe", "SR"],
          subunit: "Cent",
          htmlEntity: "&#x20A8;",
          codeNumeric: "690",
        );
}

/// {@hideConstantImplementations}
class FiatSdg extends FiatCurrency {
  /// A class that represents the Sudanese Pound.
  const FiatSdg()
      : super(
          code: "SDG",
          namesNative: const ["جنيه سوداني"],
          name: "Sudanese Pound",
          symbol: "£",
          disambiguateSymbol: "SDG",
          subunit: "Piastre",
          unitFirst: true,
          codeNumeric: "938",
        );
}

/// {@hideConstantImplementations}
class FiatSek extends FiatCurrency {
  /// A class that represents the Swedish Krona.
  const FiatSek()
      : super(
          code: "SEK",
          namesNative: const ["svensk krona"],
          name: "Swedish Krona",
          symbol: "kr",
          disambiguateSymbol: "SEK",
          alternateSymbols: const [":-"],
          subunit: "Öre",
          decimalMark: ",",
          thousandsSeparator: " ",
          codeNumeric: "752",
          smallestDenomination: 100,
        );
}

/// {@hideConstantImplementations}
class FiatSgd extends FiatCurrency {
  /// A class that represents the Singapore Dollar.
  const FiatSgd()
      : super(
          code: "SGD",
          namesNative: const ["Singapore dollar"],
          name: "Singapore Dollar",
          symbol: r"$",
          disambiguateSymbol: r"S$",
          alternateSymbols: const [r"S$"],
          subunit: "Cent",
          unitFirst: true,
          htmlEntity: r"$",
          codeNumeric: "702",
        );
}

/// {@hideConstantImplementations}
class FiatShp extends FiatCurrency {
  /// A class that represents the St. Helena Pound.
  const FiatShp()
      : super(
          code: "SHP",
          namesNative: const ["Saint Helena pound"],
          name: "St. Helena Pound",
          symbol: "£",
          disambiguateSymbol: "SHP",
          subunit: "Penny",
          htmlEntity: "&#x00A3;",
          codeNumeric: "654",
        );
}

/// {@hideConstantImplementations}
class FiatSle extends FiatCurrency {
  /// A class that represents the Sierra Leonean Leone (New).
  const FiatSle()
      : super(
          code: "SLE",
          namesNative: const ["Sierra Leonean leone"],
          name: "Sierra Leonean Leone",
          symbol: "Le",
          disambiguateSymbol: "SLE",
          subunit: "Cent",
          codeNumeric: "925",
          smallestDenomination: 1000,
        );
}

/// {@hideConstantImplementations}
class FiatSll extends FiatCurrency {
  /// A class that represents the Sierra Leonean Leone (Old).
  const FiatSll()
      : super(
          code: "SLL",
          namesNative: const ["Sierra Leonean leone"],
          name: "Sierra Leonean Leone (Old)",
          symbol: "Le",
          disambiguateSymbol: "SLL",
          subunit: "Cent",
          codeNumeric: "694",
          smallestDenomination: 1000,
        );
}

/// {@hideConstantImplementations}
class FiatSos extends FiatCurrency {
  /// A class that represents the Somali Shilling.
  const FiatSos()
      : super(
          code: "SOS",
          namesNative: const ["Shilin soomaali"],
          name: "Somali Shilling",
          symbol: "Sh",
          alternateSymbols: const ["Sh.So"],
          subunit: "Cent",
          codeNumeric: "706",
        );
}

/// {@hideConstantImplementations}
class FiatSrd extends FiatCurrency {
  /// A class that represents the Surinamese Dollar.
  const FiatSrd()
      : super(
          code: "SRD",
          namesNative: const ["Surinamese dollar"],
          name: "Surinamese Dollar",
          symbol: r"$",
          disambiguateSymbol: "SRD",
          subunit: "Cent",
          codeNumeric: "968",
        );
}

/// {@hideConstantImplementations}
class FiatSsp extends FiatCurrency {
  /// A class that represents the South Sudanese Pound.
  const FiatSsp()
      : super(
          code: "SSP",
          namesNative: const ["South Sudanese pound"],
          name: "South Sudanese Pound",
          symbol: "£",
          disambiguateSymbol: "SSP",
          subunit: "piaster",
          htmlEntity: "&#x00A3;",
          codeNumeric: "728",
          smallestDenomination: 5,
        );
}

/// {@hideConstantImplementations}
class FiatStn extends FiatCurrency {
  /// A class that represents the São Tomé and Príncipe Dobra.
  const FiatStn()
      : super(
          code: "STN",
          namesNative: const ["dobra são-tomense"],
          name: "São Tomé and Príncipe Second Dobra",
          symbol: "Db",
          disambiguateSymbol: "STN",
          subunit: "Cêntimo",
          codeNumeric: "930",
          smallestDenomination: 10,
        );
}

/// {@hideConstantImplementations}
class FiatSvc extends FiatCurrency {
  /// A class that represents the Salvadoran Colón.
  const FiatSvc()
      : super(
          code: "SVC",
          namesNative: const ["Colón salvadoreño"],
          name: "Salvadoran Colón",
          symbol: "₡",
          alternateSymbols: const ["¢"],
          subunit: "Centavo",
          unitFirst: true,
          htmlEntity: "&#x20A1;",
          codeNumeric: "222",
        );
}

/// {@hideConstantImplementations}
class FiatSyp extends FiatCurrency {
  /// A class that represents the Syrian Pound.
  const FiatSyp()
      : super(
          code: "SYP",
          namesNative: const ["الليرة السورية"],
          name: "Syrian Pound",
          symbol: "£S",
          alternateSymbols: const ["£", "ل.س", "LS", "الليرة السورية"],
          subunit: "Piastre",
          htmlEntity: "&#x00A3;",
          codeNumeric: "760",
          smallestDenomination: 100,
        );
}

/// {@hideConstantImplementations}
class FiatSzl extends FiatCurrency {
  /// A class that represents the Swazi Lilangeni.
  const FiatSzl()
      : super(
          code: "SZL",
          namesNative: const ["Swazi lilangeni"],
          name: "Swazi Lilangeni",
          symbol: "E",
          disambiguateSymbol: "SZL",
          subunit: "Cent",
          unitFirst: true,
          codeNumeric: "748",
        );
}

/// {@hideConstantImplementations}
class FiatThb extends FiatCurrency {
  /// A class that represents the Thai Baht.
  const FiatThb()
      : super(
          code: "THB",
          namesNative: const ["บาทไทย"],
          name: "Thai Baht",
          symbol: "฿",
          subunit: "Satang",
          unitFirst: true,
          htmlEntity: "&#x0E3F;",
          codeNumeric: "764",
        );
}

/// {@hideConstantImplementations}
class FiatTjs extends FiatCurrency {
  /// A class that represents the Tajikistani Somoni.
  const FiatTjs()
      : super(
          code: "TJS",
          namesNative: const ["Сомонӣ"],
          name: "Tajikistani Somoni",
          symbol: "ЅМ",
          subunit: "Diram",
          codeNumeric: "972",
        );
}

/// {@hideConstantImplementations}
class FiatTmt extends FiatCurrency {
  /// A class that represents the Turkmenistani Manat.
  const FiatTmt()
      : super(
          code: "TMT",
          namesNative: const ["manat"],
          name: "Turkmenistani Manat",
          symbol: "T",
          subunit: "Tenge",
          codeNumeric: "934",
        );
}

/// {@hideConstantImplementations}
class FiatTnd extends FiatCurrency {
  /// A class that represents the Tunisian Dinar.
  const FiatTnd()
      : super(
          code: "TND",
          namesNative: const ["دينار تونسي"],
          name: "Tunisian Dinar",
          symbol: "د.ت",
          alternateSymbols: const ["TD", "DT"],
          subunit: "Millime",
          subunitToUnit: 1000,
          codeNumeric: "788",
          smallestDenomination: 10,
        );
}

/// {@hideConstantImplementations}
class FiatTop extends FiatCurrency {
  /// A class that represents the Tongan Paʻanga.
  const FiatTop()
      : super(
          code: "TOP",
          namesNative: const ["Tongan paʻanga"],
          name: "Tongan Paʻanga",
          symbol: r"T$",
          alternateSymbols: const ["PT"],
          subunit: "Seniti",
          unitFirst: true,
          codeNumeric: "776",
        );
}

/// {@hideConstantImplementations}
class FiatTry extends FiatCurrency {
  /// A class that represents the Turkish Lira.
  const FiatTry()
      : super(
          code: "TRY",
          namesNative: const ["Türk lirası"],
          name: "Turkish Lira",
          symbol: "₺",
          alternateSymbols: const ["TL"],
          subunit: "kuruş",
          unitFirst: true,
          htmlEntity: "&#8378;",
          decimalMark: ",",
          thousandsSeparator: ".",
          codeNumeric: "949",
        );
}

/// {@hideConstantImplementations}
class FiatTtd extends FiatCurrency {
  /// A class that represents the Trinidad & Tobago Dollar.
  const FiatTtd()
      : super(
          code: "TTD",
          namesNative: const ["Trinidad & Tobago Dollar"],
          name: "Trinidad & Tobago Dollar",
          symbol: r"$",
          disambiguateSymbol: r"TT$",
          alternateSymbols: const [r"TT$"],
          subunit: "Cent",
          htmlEntity: r"$",
          codeNumeric: "780",
        );
}

/// {@hideConstantImplementations}
class FiatTwd extends FiatCurrency {
  /// A class that represents the New Taiwan Dollar.
  const FiatTwd()
      : super(
          code: "TWD",
          namesNative: const ["新臺幣"],
          name: "New Taiwan Dollar",
          symbol: r"$",
          disambiguateSymbol: r"NT$",
          alternateSymbols: const [r"NT$"],
          subunit: "Cent",
          unitFirst: true,
          htmlEntity: r"$",
          codeNumeric: "901",
          smallestDenomination: 50,
        );
}

/// {@hideConstantImplementations}
class FiatTzs extends FiatCurrency {
  /// A class that represents the Tanzanian Shilling.
  const FiatTzs()
      : super(
          code: "TZS",
          namesNative: const ["Shilingi ya Tanzania"],
          name: "Tanzanian Shilling",
          symbol: "Sh",
          subunit: "Cent",
          unitFirst: true,
          codeNumeric: "834",
          smallestDenomination: 5000,
        );
}

/// {@hideConstantImplementations}
class FiatUah extends FiatCurrency {
  /// A class that represents the Ukrainian Hryvnia.
  const FiatUah()
      : super(
          code: "UAH",
          namesNative: const ["українська гривня"],
          name: "Ukrainian Hryvnia",
          symbol: "₴",
          subunit: "Kopiyka",
          htmlEntity: "&#x20B4;",
          codeNumeric: "980",
        );
}

/// {@hideConstantImplementations}
class FiatUgx extends FiatCurrency {
  /// A class that represents the Ugandan Shilling.
  const FiatUgx()
      : super(
          code: "UGX",
          namesNative: const ["Shilingi ya Uganda"],
          name: "Ugandan Shilling",
          symbol: "USh",
          subunit: "Cent",
          subunitToUnit: 1,
          codeNumeric: "800",
          smallestDenomination: 1000,
        );
}

/// {@hideConstantImplementations}
class FiatUsd extends FiatCurrency {
  /// A class that represents the United States Dollar.
  const FiatUsd()
      : super(
          priority: 1,
          code: "USD",
          namesNative: const ["US Dollars"],
          name: "United States Dollar",
          symbol: r"$",
          disambiguateSymbol: r"US$",
          alternateSymbols: const [r"US$"],
          subunit: "Cent",
          unitFirst: true,
          htmlEntity: r"$",
          codeNumeric: "840",
        );
}

/// {@hideConstantImplementations}
class FiatUyu extends FiatCurrency {
  /// A class that represents the Uruguayan Peso.
  const FiatUyu()
      : super(
          code: "UYU",
          namesNative: const ["peso uruguayo"],
          name: "Uruguayan Peso",
          symbol: r"$U",
          alternateSymbols: const [r"$U"],
          subunit: "Centésimo",
          unitFirst: true,
          htmlEntity: r"$U",
          decimalMark: ",",
          thousandsSeparator: ".",
          codeNumeric: "858",
          smallestDenomination: 100,
        );
}

/// {@hideConstantImplementations}
class FiatUzs extends FiatCurrency {
  /// A class that represents the Uzbekistani Som.
  const FiatUzs()
      : super(
          code: "UZS",
          namesNative: const ["Oʻzbekiston soʻmi"],
          name: "Uzbekistani Som",
          symbol: "so'm",
          alternateSymbols: const ["so‘m", "сўм", "сум", "s", "с"],
          subunit: "Tiyin",
          codeNumeric: "860",
          smallestDenomination: 100,
        );
}

/// {@hideConstantImplementations}
class FiatVes extends FiatCurrency {
  /// A class that represents the Venezuelan Bolívar Soberano.
  const FiatVes()
      : super(
          code: "VES",
          namesNative: const ["Bolívar Soberano"],
          name: "Venezuelan Bolívar Soberano",
          symbol: "Bs",
          alternateSymbols: const ["Bs.S"],
          subunit: "Céntimo",
          unitFirst: true,
          decimalMark: ",",
          thousandsSeparator: ".",
          codeNumeric: "928",
        );
}

/// {@hideConstantImplementations}
class FiatVnd extends FiatCurrency {
  /// A class that represents the Vietnamese Dong.
  const FiatVnd()
      : super(
          code: "VND",
          namesNative: const ["đồng Việt Nam"],
          name: "Vietnamese Dong",
          symbol: "₫",
          subunit: "Hào",
          subunitToUnit: 1,
          htmlEntity: "&#x20AB;",
          decimalMark: ",",
          thousandsSeparator: ".",
          codeNumeric: "704",
          smallestDenomination: 100,
        );
}

/// {@hideConstantImplementations}
class FiatVuv extends FiatCurrency {
  /// A class that represents the Vanuatu vatu.
  const FiatVuv()
      : super(
          code: "VUV",
          namesNative: const ["Vanuatu vatu"],
          name: "Vanuatu Vatu",
          symbol: "Vt",
          subunitToUnit: 1,
          unitFirst: true,
          codeNumeric: "548",
        );
}

/// {@hideConstantImplementations}
class FiatWst extends FiatCurrency {
  /// A class that represents the Samoan Tala.
  const FiatWst()
      : super(
          code: "WST",
          namesNative: const ["Samoa tālā"],
          name: "Samoan Tala",
          symbol: "T",
          disambiguateSymbol: r"WS$",
          alternateSymbols: const [r"WS$", "SAT", "ST"],
          subunit: "Sene",
          codeNumeric: "882",
          smallestDenomination: 10,
        );
}

/// {@hideConstantImplementations}
class FiatXaf extends FiatCurrency {
  /// A class that represents the Central African Cfa Franc.
  const FiatXaf()
      : super(
          code: "XAF",
          namesNative: const ["franc CFA"],
          name: "Central African Cfa Franc",
          symbol: "CFA",
          disambiguateSymbol: "FCFA",
          alternateSymbols: const ["FCFA"],
          subunit: "Centime",
          subunitToUnit: 1,
          codeNumeric: "950",
          smallestDenomination: 100,
        );
}

/// {@hideConstantImplementations}
class FiatXag extends FiatCurrency {
  /// A class that represents the Silver (Troy Ounce).
  const FiatXag()
      : super(
          code: "XAG",
          namesNative: const ["Silver"],
          name: "Silver (Troy Ounce)",
          symbol: "oz t",
          disambiguateSymbol: "XAG",
          subunit: "oz",
          subunitToUnit: 1,
          codeNumeric: "961",
          smallestDenomination: 0,
        );
}

/// {@hideConstantImplementations}
class FiatXau extends FiatCurrency {
  /// A class that represents the Gold (Troy Ounce).
  const FiatXau()
      : super(
          code: "XAU",
          namesNative: const ["Gold"],
          name: "Gold (Troy Ounce)",
          symbol: "oz t",
          disambiguateSymbol: "XAU",
          subunit: "oz",
          subunitToUnit: 1,
          codeNumeric: "959",
          smallestDenomination: 0,
        );
}

/// {@hideConstantImplementations}
class FiatXba extends FiatCurrency {
  /// A class that represents the European Composite Unit (EURCO).
  const FiatXba()
      : super(
          code: "XBA",
          namesNative: const ["European Composite Unit (EURCO)"],
          name: "European Composite Unit",
          disambiguateSymbol: "XBA",
          subunitToUnit: 1,
          codeNumeric: "955",
          smallestDenomination: 0,
        );
}

/// {@hideConstantImplementations}
class FiatXbb extends FiatCurrency {
  /// A class that represents the European Monetary Unit (E.M.U.-6).
  const FiatXbb()
      : super(
          code: "XBB",
          namesNative: const ["European Monetary Unit (E.M.U.-6)"],
          name: "European Monetary Unit",
          disambiguateSymbol: "XBB",
          subunitToUnit: 1,
          codeNumeric: "956",
          smallestDenomination: 0,
        );
}

/// {@hideConstantImplementations}
class FiatXbc extends FiatCurrency {
  /// A class that represents the European Unit of Account 9 (E.U.A.-9).
  const FiatXbc()
      : super(
          code: "XBC",
          namesNative: const ["European Unit of Account 9 (E.U.A.-9)"],
          name: "European Unit of Account 9",
          disambiguateSymbol: "XBC",
          subunitToUnit: 1,
          codeNumeric: "957",
          smallestDenomination: 0,
        );
}

/// {@hideConstantImplementations}
class FiatXbd extends FiatCurrency {
  /// A class that represents the European Unit of Account 17 (E.U.A.-17).
  const FiatXbd()
      : super(
          code: "XBD",
          namesNative: const ["European Unit of Account 17 (E.U.A.-17)"],
          name: "European Unit of Account 17",
          disambiguateSymbol: "XBD",
          subunitToUnit: 1,
          codeNumeric: "958",
          smallestDenomination: 0,
        );
}

/// {@hideConstantImplementations}
class FiatXcd extends FiatCurrency {
  /// A class that represents the East Caribbean dollar.
  const FiatXcd()
      : super(
          code: "XCD",
          namesNative: const ["East Caribbean dollar"],
          name: "East Caribbean Dollar",
          symbol: r"$",
          disambiguateSymbol: r"EX$",
          alternateSymbols: const [r"EC$"],
          subunit: "Cent",
          unitFirst: true,
          htmlEntity: r"$",
          codeNumeric: "951",
        );
}

/// {@hideConstantImplementations}
class FiatXdr extends FiatCurrency {
  /// A class that represents the Special Drawing Rights.
  const FiatXdr()
      : super(
          code: "XDR",
          namesNative: const ["Derechos especiales de giro"],
          name: "Special Drawing Rights",
          symbol: "SDR",
          alternateSymbols: const ["XDR"],
          subunitToUnit: 1,
          htmlEntity: r"$",
          codeNumeric: "960",
          smallestDenomination: 0,
        );
}

/// {@hideConstantImplementations}
class FiatXof extends FiatCurrency {
  /// A class that represents the West African Cfa Franc.
  const FiatXof()
      : super(
          code: "XOF",
          namesNative: const ["CFA Franc BCEAO"],
          name: "West African Cfa Franc",
          symbol: "Fr",
          disambiguateSymbol: "CFA",
          alternateSymbols: const ["CFA"],
          subunit: "Centime",
          subunitToUnit: 1,
          codeNumeric: "952",
          smallestDenomination: 100,
        );
}

/// {@hideConstantImplementations}
class FiatXpd extends FiatCurrency {
  /// A class that represents the Palladium.
  const FiatXpd()
      : super(
          code: "XPD",
          namesNative: const ["Palladium"],
          name: "Palladium",
          symbol: "oz t",
          disambiguateSymbol: "XPD",
          subunit: "oz",
          subunitToUnit: 1,
          codeNumeric: "964",
          smallestDenomination: 0,
        );
}

/// {@hideConstantImplementations}
class FiatXpf extends FiatCurrency {
  /// A class that represents the Cfp Franc.
  const FiatXpf()
      : super(
          code: "XPF",
          namesNative: const ["franc pacifique"],
          name: "Cfp Franc",
          symbol: "Fr",
          alternateSymbols: const ["F"],
          subunit: "Centime",
          subunitToUnit: 1,
          codeNumeric: "953",
          smallestDenomination: 100,
        );
}

/// {@hideConstantImplementations}
class FiatXpt extends FiatCurrency {
  /// A class that represents the Platinum.
  const FiatXpt()
      : super(
          code: "XPT",
          namesNative: const ["Platinum"],
          name: "Platinum",
          symbol: "oz t",
          subunitToUnit: 1,
          codeNumeric: "962",
          smallestDenomination: 0,
        );
}

/// {@hideConstantImplementations}
class FiatXts extends FiatCurrency {
  /// A class that represents the Test currency.
  const FiatXts()
      : super(
          code: "XTS",
          namesNative: const ["Test currency"],
          name: "Codes specifically reserved for testing purposes",
          subunitToUnit: 1,
          codeNumeric: "963",
          smallestDenomination: 0,
        );
}

/// {@hideConstantImplementations}
class FiatYer extends FiatCurrency {
  /// A class that represents the Yemeni Rial.
  const FiatYer()
      : super(
          code: "YER",
          namesNative: const ["ريال يمني"],
          name: "Yemeni Rial",
          symbol: "﷼",
          subunit: "Fils",
          htmlEntity: "&#xFDFC;",
          codeNumeric: "886",
          smallestDenomination: 100,
        );
}

/// {@hideConstantImplementations}
class FiatZar extends FiatCurrency {
  /// A class that represents the South African Rand.
  const FiatZar()
      : super(
          code: "ZAR",
          namesNative: const ["Rand"],
          name: "South African Rand",
          symbol: "R",
          subunit: "Cent",
          unitFirst: true,
          htmlEntity: "&#x0052;",
          decimalMark: ",",
          thousandsSeparator: " ",
          codeNumeric: "710",
          smallestDenomination: 10,
        );
}

/// {@hideConstantImplementations}
class FiatZwl extends FiatCurrency {
  /// A class that represents the Zimbabwean Dollar.
  const FiatZwl()
      : super(
          code: "ZWL",
          namesNative: const ["Zimbabwe Dollar"],
          name: "Zimbabwean Dollar",
          symbol: r"Z$",
          subunit: "Cent",
          unitFirst: true,
          decimalMark: ",",
          thousandsSeparator: " ",
          codeNumeric: "932",
        );
}

/// {@hideConstantImplementations}
class FiatZmw extends FiatCurrency {
  /// A class that represents the Zambian Kwacha.
  const FiatZmw()
      : super(
          code: "ZMW",
          namesNative: const ["Zambian kwacha"],
          name: "Zambian Kwacha",
          symbol: "K",
          disambiguateSymbol: "ZMW",
          subunit: "Ngwee",
          unitFirst: true,
          codeNumeric: "967",
          smallestDenomination: 5,
        );
}
