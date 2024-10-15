// ignore: avoid-importing-entrypoint-exports, it contains all the translations.
import "../../currency_translations.dart";
import "../model/currency/currency.dart";

/// A class that represents the United Arab Emirates Dirham currency.
class FiatAed extends FiatCurrency {
  /// Creates a instance of [FiatAed] (United Arab Emirates Dirham currency).
  ///
  /// ISO 4217 Alpha code: "AED", ISO 4217 Numeric code: "784".
  const FiatAed()
      : super(
          code: "AED",
          name: "United Arab Emirates Dirham",
          symbol: "د.إ",
          alternateSymbols: const ["DH", "Dhs"],
          codeNumeric: "784",
          namesNative: const ["درهم إماراتي"],
          smallestDenomination: 25,
          subunit: "Fils",
          translations: aedCurrencyTranslations,
        );
}

/// A class that represents the Afghan Afghani currency.
class FiatAfn extends FiatCurrency {
  /// Creates a instance of [FiatAfn] (Afghan Afghani currency).
  ///
  /// ISO 4217 Alpha code: "AFN", ISO 4217 Numeric code: "971".
  const FiatAfn()
      : super(
          code: "AFN",
          name: "Afghan Afghani",
          symbol: "؋",
          alternateSymbols: const ["Af", "Afs"],
          codeNumeric: "971",
          namesNative: const ["افغانی"],
          smallestDenomination: 100,
          subunit: "Pul",
          translations: afnCurrencyTranslations,
        );
}

/// A class that represents the Albanian Lek currency.
class FiatAll extends FiatCurrency {
  /// Creates a instance of [FiatAll] (Albanian Lek currency).
  ///
  /// ISO 4217 Alpha code: "ALL", ISO 4217 Numeric code: "008".
  const FiatAll()
      : super(
          code: "ALL",
          name: "Albanian Lek",
          symbol: "L",
          alternateSymbols: const ["Lek"],
          disambiguateSymbol: "Lek",
          codeNumeric: "008",
          namesNative: const ["Leku Shqiptar"],
          smallestDenomination: 100,
          subunit: "Qintar",
          translations: allCurrencyTranslations,
        );
}

/// A class that represents the Armenian Dram currency.
class FiatAmd extends FiatCurrency {
  /// Creates a instance of [FiatAmd] (Armenian Dram currency).
  ///
  /// ISO 4217 Alpha code: "AMD", ISO 4217 Numeric code: "051".
  const FiatAmd()
      : super(
          code: "AMD",
          name: "Armenian Dram",
          symbol: "դր.",
          alternateSymbols: const ["dram"],
          codeNumeric: "051",
          namesNative: const ["Հայկական Դրամ"],
          smallestDenomination: 10,
          subunit: "Luma",
          translations: amdCurrencyTranslations,
        );
}

/// A class that represents the Netherlands Antillean Guilder currency.
class FiatAng extends FiatCurrency {
  /// Creates a instance of [FiatAng] (Netherlands Antillean Guilder currency).
  ///
  /// ISO 4217 Alpha code: "ANG", ISO 4217 Numeric code: "532".
  const FiatAng()
      : super(
          code: "ANG",
          name: "Netherlands Antillean Guilder",
          decimalMark: ",",
          thousandsSeparator: ".",
          symbol: "ƒ",
          alternateSymbols: const ["NAƒ", "NAf", "f"],
          htmlEntity: "&#x0192;",
          codeNumeric: "532",
          namesNative: const ["Antilliaanse gulden"],
          subunit: "Cent",
          unitFirst: true,
          translations: angCurrencyTranslations,
        );
}

/// A class that represents the Angolan Kwanza currency.
class FiatAoa extends FiatCurrency {
  /// Creates a instance of [FiatAoa] (Angolan Kwanza currency).
  ///
  /// ISO 4217 Alpha code: "AOA", ISO 4217 Numeric code: "973".
  const FiatAoa()
      : super(
          code: "AOA",
          name: "Angolan Kwanza",
          symbol: "Kz",
          codeNumeric: "973",
          namesNative: const ["Angolan kwanza"],
          smallestDenomination: 10,
          subunit: "Cêntimo",
          translations: aoaCurrencyTranslations,
        );
}

/// A class that represents the Argentine Peso currency.
class FiatArs extends FiatCurrency {
  /// Creates a instance of [FiatArs] (Argentine Peso currency).
  ///
  /// ISO 4217 Alpha code: "ARS", ISO 4217 Numeric code: "032".
  const FiatArs()
      : super(
          code: "ARS",
          name: "Argentine Peso",
          decimalMark: ",",
          thousandsSeparator: ".",
          symbol: r"$",
          alternateSymbols: const [r"$m/n", r"m$n"],
          disambiguateSymbol: r"$m/n",
          htmlEntity: r"$",
          codeNumeric: "032",
          namesNative: const ["Argentine peso"],
          subunit: "Centavo",
          unitFirst: true,
          translations: arsCurrencyTranslations,
        );
}

/// A class that represents the Australian Dollar currency.
class FiatAud extends FiatCurrency {
  /// Creates a instance of [FiatAud] (Australian Dollar currency).
  ///
  /// ISO 4217 Alpha code: "AUD", ISO 4217 Numeric code: "036".
  const FiatAud()
      : super(
          code: "AUD",
          name: "Australian Dollar",
          symbol: r"$",
          alternateSymbols: const [r"A$"],
          disambiguateSymbol: r"A$",
          htmlEntity: r"$",
          codeNumeric: "036",
          namesNative: const ["Australian dollar"],
          priority: 4,
          smallestDenomination: 5,
          subunit: "Cent",
          unitFirst: true,
          translations: audCurrencyTranslations,
        );
}

/// A class that represents the Aruban Florin currency.
class FiatAwg extends FiatCurrency {
  /// Creates a instance of [FiatAwg] (Aruban Florin currency).
  ///
  /// ISO 4217 Alpha code: "AWG", ISO 4217 Numeric code: "533".
  const FiatAwg()
      : super(
          code: "AWG",
          name: "Aruban Florin",
          symbol: "ƒ",
          alternateSymbols: const ["Afl"],
          htmlEntity: "&#x0192;",
          codeNumeric: "533",
          namesNative: const ["Arubaanse florijn"],
          smallestDenomination: 5,
          subunit: "Cent",
          translations: awgCurrencyTranslations,
        );
}

/// A class that represents the Azerbaijani Manat currency.
class FiatAzn extends FiatCurrency {
  /// Creates a instance of [FiatAzn] (Azerbaijani Manat currency).
  ///
  /// ISO 4217 Alpha code: "AZN", ISO 4217 Numeric code: "944".
  const FiatAzn()
      : super(
          code: "AZN",
          name: "Azerbaijani Manat",
          symbol: "₼",
          alternateSymbols: const ["m", "man"],
          codeNumeric: "944",
          namesNative: const ["Azərbaycan manatı"],
          subunit: "Qəpik",
          unitFirst: true,
          translations: aznCurrencyTranslations,
        );
}

/// A class that represents the Convertible Mark currency.
class FiatBam extends FiatCurrency {
  /// Creates a instance of [FiatBam] (Convertible Mark currency).
  ///
  /// ISO 4217 Alpha code: "BAM", ISO 4217 Numeric code: "977".
  const FiatBam()
      : super(
          code: "BAM",
          name: "Convertible Mark",
          symbol: "КМ",
          alternateSymbols: const ["KM"],
          codeNumeric: "977",
          namesNative: const ["Konvertibilna marka", "Конвертибилна марка"],
          smallestDenomination: 5,
          subunit: "Fening",
          unitFirst: true,
          translations: bamCurrencyTranslations,
        );
}

/// A class that represents the Barbadian Dollar currency.
class FiatBbd extends FiatCurrency {
  /// Creates a instance of [FiatBbd] (Barbadian Dollar currency).
  ///
  /// ISO 4217 Alpha code: "BBD", ISO 4217 Numeric code: "052".
  const FiatBbd()
      : super(
          code: "BBD",
          name: "Barbadian Dollar",
          symbol: r"$",
          alternateSymbols: const [r"Bds$"],
          disambiguateSymbol: r"Bds$",
          htmlEntity: r"$",
          codeNumeric: "052",
          namesNative: const ["Barbadian dollar"],
          subunit: "Cent",
          unitFirst: true,
          translations: bbdCurrencyTranslations,
        );
}

/// A class that represents the Bangladeshi Taka currency.
class FiatBdt extends FiatCurrency {
  /// Creates a instance of [FiatBdt] (Bangladeshi Taka currency).
  ///
  /// ISO 4217 Alpha code: "BDT", ISO 4217 Numeric code: "050".
  const FiatBdt()
      : super(
          code: "BDT",
          name: "Bangladeshi Taka",
          symbol: "৳",
          alternateSymbols: const ["Tk"],
          codeNumeric: "050",
          namesNative: const ["টাকা"],
          subunit: "Paisa",
          unitFirst: true,
          translations: bdtCurrencyTranslations,
        );
}

/// A class that represents the Bulgarian Lev currency.
class FiatBgn extends FiatCurrency {
  /// Creates a instance of [FiatBgn] (Bulgarian Lev currency).
  ///
  /// ISO 4217 Alpha code: "BGN", ISO 4217 Numeric code: "975".
  const FiatBgn()
      : super(
          code: "BGN",
          name: "Bulgarian Lev",
          symbol: "лв.",
          alternateSymbols: const ["lev", "leva", "лев", "лева"],
          codeNumeric: "975",
          namesNative: const ["Български лев"],
          subunit: "Stotinka",
          translations: bgnCurrencyTranslations,
        );
}

/// A class that represents the Bahraini Dinar currency.
class FiatBhd extends FiatCurrency {
  /// Creates a instance of [FiatBhd] (Bahraini Dinar currency).
  ///
  /// ISO 4217 Alpha code: "BHD", ISO 4217 Numeric code: "048".
  const FiatBhd()
      : super(
          code: "BHD",
          name: "Bahraini Dinar",
          symbol: "د.ب",
          alternateSymbols: const ["BD"],
          codeNumeric: "048",
          namesNative: const ["دينار بحريني"],
          smallestDenomination: 5,
          subunit: "Fils",
          subunitToUnit: 1000,
          unitFirst: true,
          translations: bhdCurrencyTranslations,
        );
}

/// A class that represents the Burundian Franc currency.
class FiatBif extends FiatCurrency {
  /// Creates a instance of [FiatBif] (Burundian Franc currency).
  ///
  /// ISO 4217 Alpha code: "BIF", ISO 4217 Numeric code: "108".
  const FiatBif()
      : super(
          code: "BIF",
          name: "Burundian Franc",
          symbol: "Fr",
          alternateSymbols: const ["FBu"],
          disambiguateSymbol: "FBu",
          codeNumeric: "108",
          namesNative: const ["franc burundais"],
          smallestDenomination: 100,
          subunit: "Centime",
          subunitToUnit: 1,
          translations: bifCurrencyTranslations,
        );
}

/// A class that represents the Bermudian Dollar currency.
class FiatBmd extends FiatCurrency {
  /// Creates a instance of [FiatBmd] (Bermudian Dollar currency).
  ///
  /// ISO 4217 Alpha code: "BMD", ISO 4217 Numeric code: "060".
  const FiatBmd()
      : super(
          code: "BMD",
          name: "Bermudian Dollar",
          symbol: r"$",
          alternateSymbols: const [r"BD$"],
          disambiguateSymbol: r"BD$",
          htmlEntity: r"$",
          codeNumeric: "060",
          namesNative: const ["Bermudian dollars"],
          subunit: "Cent",
          unitFirst: true,
          translations: bmdCurrencyTranslations,
        );
}

/// A class that represents the Brunei Dollar currency.
class FiatBnd extends FiatCurrency {
  /// Creates a instance of [FiatBnd] (Brunei Dollar currency).
  ///
  /// ISO 4217 Alpha code: "BND", ISO 4217 Numeric code: "096".
  const FiatBnd()
      : super(
          code: "BND",
          name: "Brunei Dollar",
          symbol: r"$",
          alternateSymbols: const [r"B$"],
          disambiguateSymbol: "BND",
          htmlEntity: r"$",
          codeNumeric: "096",
          namesNative: const ["Ringgit Brunei"],
          subunit: "Sen",
          unitFirst: true,
          translations: bndCurrencyTranslations,
        );
}

/// A class that represents the Bolivian Boliviano currency.
class FiatBob extends FiatCurrency {
  /// Creates a instance of [FiatBob] (Bolivian Boliviano currency).
  ///
  /// ISO 4217 Alpha code: "BOB", ISO 4217 Numeric code: "068".
  const FiatBob()
      : super(
          code: "BOB",
          name: "Bolivian Boliviano",
          symbol: "Bs.",
          alternateSymbols: const ["Bs"],
          codeNumeric: "068",
          namesNative: const ["Bolivian boliviano"],
          smallestDenomination: 10,
          subunit: "Centavo",
          unitFirst: true,
          translations: bobCurrencyTranslations,
        );
}

/// A class that represents the Brazilian Real currency.
class FiatBrl extends FiatCurrency {
  /// Creates a instance of [FiatBrl] (Brazilian Real currency).
  ///
  /// ISO 4217 Alpha code: "BRL", ISO 4217 Numeric code: "986".
  const FiatBrl()
      : super(
          code: "BRL",
          name: "Brazilian Real",
          decimalMark: ",",
          thousandsSeparator: ".",
          symbol: r"R$",
          htmlEntity: r"R$",
          codeNumeric: "986",
          namesNative: const ["real brasileiro"],
          smallestDenomination: 5,
          subunit: "Centavo",
          unitFirst: true,
          translations: brlCurrencyTranslations,
        );
}

/// A class that represents the Bahamian Dollar currency.
class FiatBsd extends FiatCurrency {
  /// Creates a instance of [FiatBsd] (Bahamian Dollar currency).
  ///
  /// ISO 4217 Alpha code: "BSD", ISO 4217 Numeric code: "044".
  const FiatBsd()
      : super(
          code: "BSD",
          name: "Bahamian Dollar",
          symbol: r"$",
          alternateSymbols: const [r"B$"],
          disambiguateSymbol: "BSD",
          htmlEntity: r"$",
          codeNumeric: "044",
          namesNative: const ["Bahamian dollar"],
          subunit: "Cent",
          unitFirst: true,
          translations: bsdCurrencyTranslations,
        );
}

/// A class that represents the Bhutanese Ngultrum currency.
class FiatBtn extends FiatCurrency {
  /// Creates a instance of [FiatBtn] (Bhutanese Ngultrum currency).
  ///
  /// ISO 4217 Alpha code: "BTN", ISO 4217 Numeric code: "064".
  const FiatBtn()
      : super(
          code: "BTN",
          name: "Bhutanese Ngultrum",
          symbol: "Nu.",
          alternateSymbols: const ["Nu"],
          codeNumeric: "064",
          namesNative: const ["དངུལ་ཀྲམ"],
          smallestDenomination: 5,
          subunit: "Chertrum",
          translations: btnCurrencyTranslations,
        );
}

/// A class that represents the Botswanan Pula currency.
class FiatBwp extends FiatCurrency {
  /// Creates a instance of [FiatBwp] (Botswanan Pula currency).
  ///
  /// ISO 4217 Alpha code: "BWP", ISO 4217 Numeric code: "072".
  const FiatBwp()
      : super(
          code: "BWP",
          name: "Botswanan Pula",
          symbol: "P",
          codeNumeric: "072",
          namesNative: const ["Botswana pula"],
          smallestDenomination: 5,
          subunit: "Thebe",
          unitFirst: true,
          translations: bwpCurrencyTranslations,
        );
}

/// A class that represents the Belarusian Ruble currency.
class FiatByn extends FiatCurrency {
  /// Creates a instance of [FiatByn] (Belarusian Ruble currency).
  ///
  /// ISO 4217 Alpha code: "BYN", ISO 4217 Numeric code: "933".
  const FiatByn()
      : super(
          code: "BYN",
          name: "Belarusian Ruble",
          decimalMark: ",",
          thousandsSeparator: " ",
          symbol: "Br",
          alternateSymbols: const ["бел. руб.", "б.р.", "руб.", "р."],
          disambiguateSymbol: "BYN",
          codeNumeric: "933",
          namesNative: const ["беларускі рубель", "белорусский рубль"],
          subunit: "Kapeyka",
          translations: bynCurrencyTranslations,
        );
}

/// A class that represents the Belize Dollar currency.
class FiatBzd extends FiatCurrency {
  /// Creates a instance of [FiatBzd] (Belize Dollar currency).
  ///
  /// ISO 4217 Alpha code: "BZD", ISO 4217 Numeric code: "084".
  const FiatBzd()
      : super(
          code: "BZD",
          name: "Belize Dollar",
          symbol: r"$",
          alternateSymbols: const [r"BZ$"],
          disambiguateSymbol: r"BZ$",
          htmlEntity: r"$",
          codeNumeric: "084",
          namesNative: const ["Belize dollar"],
          subunit: "Cent",
          unitFirst: true,
          translations: bzdCurrencyTranslations,
        );
}

/// A class that represents the Canadian Dollar currency.
class FiatCad extends FiatCurrency {
  /// Creates a instance of [FiatCad] (Canadian Dollar currency).
  ///
  /// ISO 4217 Alpha code: "CAD", ISO 4217 Numeric code: "124".
  const FiatCad()
      : super(
          code: "CAD",
          name: "Canadian Dollar",
          symbol: r"$",
          alternateSymbols: const [r"C$", r"CAD$"],
          disambiguateSymbol: r"C$",
          htmlEntity: r"$",
          codeNumeric: "124",
          namesNative: const ["Canadian dollar"],
          priority: 5,
          smallestDenomination: 5,
          subunit: "Cent",
          unitFirst: true,
          translations: cadCurrencyTranslations,
        );
}

/// A class that represents the Congolese Franc currency.
class FiatCdf extends FiatCurrency {
  /// Creates a instance of [FiatCdf] (Congolese Franc currency).
  ///
  /// ISO 4217 Alpha code: "CDF", ISO 4217 Numeric code: "976".
  const FiatCdf()
      : super(
          code: "CDF",
          name: "Congolese Franc",
          symbol: "Fr",
          alternateSymbols: const ["FC"],
          disambiguateSymbol: "FC",
          codeNumeric: "976",
          namesNative: const ["franc congolais"],
          subunit: "Centime",
          translations: cdfCurrencyTranslations,
        );
}

/// A class that represents the Swiss Franc currency.
class FiatChf extends FiatCurrency {
  /// Creates a instance of [FiatChf] (Swiss Franc currency).
  ///
  /// ISO 4217 Alpha code: "CHF", ISO 4217 Numeric code: "756".
  const FiatChf()
      : super(
          code: "CHF",
          name: "Swiss Franc",

          /// https://de.wikipedia.org/wiki/Zifferngruppierung#Regelung_in_den_L%C3%A4ndern
          thousandsSeparator: "'",
          alternateSymbols: const ["SFr", "Fr"],
          codeNumeric: "756",
          namesNative: const ["Schweizer Franken"],
          smallestDenomination: 5,
          subunit: "Rappen",
          unitFirst: true,
          translations: chfCurrencyTranslations,
        );
}

/// A class that represents the Chilean Unit of Account (UF) currency.
class FiatClf extends FiatCurrency {
  /// Creates a instance of [FiatClf] (Chilean Unit of Account (UF) currency).
  ///
  /// ISO 4217 Alpha code: "CLF", ISO 4217 Numeric code: "990".
  const FiatClf()
      : super(
          code: "CLF",
          name: "Chilean Unit of Account (UF)",
          decimalMark: ",",
          thousandsSeparator: ".",
          symbol: "UF",
          htmlEntity: "&#x20B1;",
          codeNumeric: "990",
          namesNative: const ["Unidad de Fomento"],
          smallestDenomination: 0,
          subunit: "Peso",
          subunitToUnit: 10000,
          unitFirst: true,
          translations: clfCurrencyTranslations,
        );
}

/// A class that represents the Chilean Peso currency.
class FiatClp extends FiatCurrency {
  /// Creates a instance of [FiatClp] (Chilean Peso currency).
  ///
  /// ISO 4217 Alpha code: "CLP", ISO 4217 Numeric code: "152".
  const FiatClp()
      : super(
          code: "CLP",
          name: "Chilean Peso",
          decimalMark: ",",
          thousandsSeparator: ".",
          symbol: r"$",
          disambiguateSymbol: "CLP",
          htmlEntity: "&#36;",
          codeNumeric: "152",
          namesNative: const ["Peso chileno"],
          subunit: "Peso",
          subunitToUnit: 1,
          unitFirst: true,
          translations: clpCurrencyTranslations,
        );
}

/// A class that represents the Chinese Renminbi Yuan currency.
class FiatCny extends FiatCurrency {
  /// Creates a instance of [FiatCny] (Chinese Renminbi Yuan currency).
  ///
  /// ISO 4217 Alpha code: "CNY", ISO 4217 Numeric code: "156".
  const FiatCny()
      : super(
          code: "CNY",
          name: "Chinese Renminbi Yuan",
          symbol: "¥",
          alternateSymbols: const ["CN¥", "元", "CN元"],
          htmlEntity: "￥",
          codeNumeric: "156",
          namesNative: const ["人民币"],
          subunit: "Fen",
          unitFirst: true,
          translations: cnyCurrencyTranslations,
        );
}

/// A class that represents the Colombian Peso currency.
class FiatCop extends FiatCurrency {
  /// Creates a instance of [FiatCop] (Colombian Peso currency).
  ///
  /// ISO 4217 Alpha code: "COP", ISO 4217 Numeric code: "170".
  const FiatCop()
      : super(
          code: "COP",
          name: "Colombian Peso",
          decimalMark: ",",
          thousandsSeparator: ".",
          symbol: r"$",
          alternateSymbols: const [r"COL$"],
          disambiguateSymbol: r"COL$",
          htmlEntity: "&#36;",
          codeNumeric: "170",
          namesNative: const ["peso colombiano"],
          smallestDenomination: 20,
          subunit: "Centavo",
          unitFirst: true,
          translations: copCurrencyTranslations,
        );
}

/// A class that represents the Costa Rican Colón currency.
class FiatCrc extends FiatCurrency {
  /// Creates a instance of [FiatCrc] (Costa Rican Colón currency).
  ///
  /// ISO 4217 Alpha code: "CRC", ISO 4217 Numeric code: "188".
  const FiatCrc()
      : super(
          code: "CRC",
          name: "Costa Rican Colón",
          decimalMark: ",",
          thousandsSeparator: ".",
          symbol: "₡",
          alternateSymbols: const ["¢"],
          htmlEntity: "&#x20A1;",
          codeNumeric: "188",
          namesNative: const ["colón costarricense"],
          smallestDenomination: 500,
          subunit: "Céntimo",
          unitFirst: true,
          translations: crcCurrencyTranslations,
        );
}

/// A class that represents the Cuban Convertible Peso currency.
class FiatCuc extends FiatCurrency {
  /// Creates a instance of [FiatCuc] (Cuban Convertible Peso currency).
  ///
  /// ISO 4217 Alpha code: "CUC", ISO 4217 Numeric code: "931".
  const FiatCuc()
      : super(
          code: "CUC",
          name: "Cuban Convertible Peso",
          symbol: r"$",
          alternateSymbols: const [r"CUC$"],
          disambiguateSymbol: r"CUC$",
          codeNumeric: "931",
          namesNative: const ["Peso Convertible"],
          subunit: "Centavo",
          translations: cucCurrencyTranslations,
        );
}

/// A class that represents the Cuban Peso currency.
class FiatCup extends FiatCurrency {
  /// Creates a instance of [FiatCup] (Cuban Peso currency).
  ///
  /// ISO 4217 Alpha code: "CUP", ISO 4217 Numeric code: "192".
  const FiatCup()
      : super(
          code: "CUP",
          name: "Cuban Peso",
          symbol: r"$",
          alternateSymbols: const [r"$MN"],
          disambiguateSymbol: r"$MN",
          htmlEntity: "&#x20B1;",
          codeNumeric: "192",
          namesNative: const ["peso cubano"],
          subunit: "Centavo",
          unitFirst: true,
          translations: cupCurrencyTranslations,
        );
}

/// A class that represents the Cape Verdean Escudo currency.
class FiatCve extends FiatCurrency {
  /// Creates a instance of [FiatCve] (Cape Verdean Escudo currency).
  ///
  /// ISO 4217 Alpha code: "CVE", ISO 4217 Numeric code: "132".
  const FiatCve()
      : super(
          code: "CVE",
          name: "Cape Verdean Escudo",
          symbol: r"$",
          alternateSymbols: const ["Esc"],
          disambiguateSymbol: "Esc",
          codeNumeric: "132",
          namesNative: const ["eskudu kabu-verdianu"],
          smallestDenomination: 100,
          subunit: "Centavo",
          translations: cveCurrencyTranslations,
        );
}

/// A class that represents the Czech Koruna currency.
class FiatCzk extends FiatCurrency {
  /// Creates a instance of [FiatCzk] (Czech Koruna currency).
  ///
  /// ISO 4217 Alpha code: "CZK", ISO 4217 Numeric code: "203".
  const FiatCzk()
      : super(
          code: "CZK",
          name: "Czech Koruna",
          decimalMark: ",",
          thousandsSeparator: " ",
          symbol: "Kč",
          codeNumeric: "203",
          namesNative: const ["koruna česká"],
          smallestDenomination: 100,
          subunit: "Haléř",
          translations: czkCurrencyTranslations,
        );
}

/// A class that represents the Djiboutian Franc currency.
class FiatDjf extends FiatCurrency {
  /// Creates a instance of [FiatDjf] (Djiboutian Franc currency).
  ///
  /// ISO 4217 Alpha code: "DJF", ISO 4217 Numeric code: "262".
  const FiatDjf()
      : super(
          code: "DJF",
          name: "Djiboutian Franc",
          symbol: "Fdj",
          codeNumeric: "262",
          namesNative: const ["franc djibouti"],
          smallestDenomination: 100,
          subunit: "Centime",
          subunitToUnit: 1,
          translations: djfCurrencyTranslations,
        );
}

/// A class that represents the Danish Krone currency.
class FiatDkk extends FiatCurrency {
  /// Creates a instance of [FiatDkk] (Danish Krone currency).
  ///
  /// ISO 4217 Alpha code: "DKK", ISO 4217 Numeric code: "208".
  const FiatDkk()
      : super(
          code: "DKK",
          name: "Danish Krone",
          decimalMark: ",",
          thousandsSeparator: ".",
          symbol: "kr.",
          alternateSymbols: const ["krone"],
          disambiguateSymbol: "DKK",
          codeNumeric: "208",
          namesNative: const ["dansk krone"],
          smallestDenomination: 50,
          subunit: "Øre",
          translations: dkkCurrencyTranslations,
        );
}

/// A class that represents the Dominican Peso currency.
class FiatDop extends FiatCurrency {
  /// Creates a instance of [FiatDop] (Dominican Peso currency).
  ///
  /// ISO 4217 Alpha code: "DOP", ISO 4217 Numeric code: "214".
  const FiatDop()
      : super(
          code: "DOP",
          name: "Dominican Peso",
          symbol: r"$",
          alternateSymbols: const [r"RD$"],
          disambiguateSymbol: r"RD$",
          htmlEntity: "&#x20B1;",
          codeNumeric: "214",
          namesNative: const ["Dominican peso"],
          smallestDenomination: 100,
          subunit: "Centavo",
          unitFirst: true,
          translations: dopCurrencyTranslations,
        );
}

/// A class that represents the Algerian Dinar currency.
class FiatDzd extends FiatCurrency {
  /// Creates a instance of [FiatDzd] (Algerian Dinar currency).
  ///
  /// ISO 4217 Alpha code: "DZD", ISO 4217 Numeric code: "012".
  const FiatDzd()
      : super(
          code: "DZD",
          name: "Algerian Dinar",
          symbol: "د.ج",
          alternateSymbols: const ["DA"],
          codeNumeric: "012",
          namesNative: const ["دينار جزائري"],
          smallestDenomination: 100,
          subunit: "Centime",
          translations: dzdCurrencyTranslations,
        );
}

/// A class that represents the Egyptian Pound currency.
class FiatEgp extends FiatCurrency {
  /// Creates a instance of [FiatEgp] (Egyptian Pound currency).
  ///
  /// ISO 4217 Alpha code: "EGP", ISO 4217 Numeric code: "818".
  const FiatEgp()
      : super(
          code: "EGP",
          name: "Egyptian Pound",
          symbol: "ج.م",
          alternateSymbols: const ["LE", "E£", "L.E."],
          htmlEntity: "&#x00A3;",
          codeNumeric: "818",
          namesNative: const ["جنيه مصرى"],
          smallestDenomination: 25,
          subunit: "Piastre",
          unitFirst: true,
          translations: egpCurrencyTranslations,
        );
}

/// A class that represents the Eritrean Nakfa currency.
class FiatErn extends FiatCurrency {
  /// Creates a instance of [FiatErn] (Eritrean Nakfa currency).
  ///
  /// ISO 4217 Alpha code: "ERN", ISO 4217 Numeric code: "232".
  const FiatErn()
      : super(
          code: "ERN",
          name: "Eritrean Nakfa",
          symbol: "Nfk",
          codeNumeric: "232",
          namesNative: const ["Eritrean nakfa"],
          subunit: "Cent",
          translations: ernCurrencyTranslations,
        );
}

/// A class that represents the Ethiopian Birr currency.
class FiatEtb extends FiatCurrency {
  /// Creates a instance of [FiatEtb] (Ethiopian Birr currency).
  ///
  /// ISO 4217 Alpha code: "ETB", ISO 4217 Numeric code: "230".
  const FiatEtb()
      : super(
          code: "ETB",
          name: "Ethiopian Birr",
          symbol: "Br",
          disambiguateSymbol: "ETB",
          codeNumeric: "230",
          namesNative: const ["Ethiopian birr"],
          subunit: "Santim",
          translations: etbCurrencyTranslations,
        );
}

/// A class that represents the Euro currency.
class FiatEur extends FiatCurrency {
  /// Creates a instance of [FiatEur] (Euro currency).
  ///
  /// ISO 4217 Alpha code: "EUR", ISO 4217 Numeric code: "978".
  const FiatEur()
      : super(
          code: "EUR",
          name: "Euro",
          decimalMark: ",",
          thousandsSeparator: ".",
          symbol: "€",
          htmlEntity: "€",
          codeNumeric: "978",
          namesNative: const ["Euro"],
          priority: 2,
          subunit: "Cent",
          unitFirst: true,
          translations: eurCurrencyTranslations,
        );
}

/// A class that represents the Fijian Dollar currency.
class FiatFjd extends FiatCurrency {
  /// Creates a instance of [FiatFjd] (Fijian Dollar currency).
  ///
  /// ISO 4217 Alpha code: "FJD", ISO 4217 Numeric code: "242".
  const FiatFjd()
      : super(
          code: "FJD",
          name: "Fijian Dollar",
          symbol: r"$",
          alternateSymbols: const [r"FJ$"],
          disambiguateSymbol: r"FJ$",
          htmlEntity: r"$",
          codeNumeric: "242",
          namesNative: const ["Fijian dollar"],
          smallestDenomination: 5,
          subunit: "Cent",
          translations: fjdCurrencyTranslations,
        );
}

/// A class that represents the Falkland Pound currency.
class FiatFkp extends FiatCurrency {
  /// Creates a instance of [FiatFkp] (Falkland Pound currency).
  ///
  /// ISO 4217 Alpha code: "FKP", ISO 4217 Numeric code: "238".
  const FiatFkp()
      : super(
          code: "FKP",
          name: "Falkland Pound",
          symbol: "£",
          alternateSymbols: const ["FK£"],
          disambiguateSymbol: "FK£",
          htmlEntity: "&#x00A3;",
          codeNumeric: "238",
          namesNative: const ["Falkland Islands pound"],
          subunit: "Penny",
          translations: fkpCurrencyTranslations,
        );
}

/// A class that represents the British Pound currency.
class FiatGbp extends FiatCurrency {
  /// Creates a instance of [FiatGbp] (British Pound currency).
  ///
  /// ISO 4217 Alpha code: "GBP", ISO 4217 Numeric code: "826".
  const FiatGbp()
      : super(
          code: "GBP",
          name: "British Pound",
          symbol: "£",
          htmlEntity: "&#x00A3;",
          codeNumeric: "826",
          namesNative: const ["British pound"],
          priority: 3,
          subunit: "Penny",
          unitFirst: true,
          translations: gbpCurrencyTranslations,
        );
}

/// A class that represents the Georgian Lari currency.
class FiatGel extends FiatCurrency {
  /// Creates a instance of [FiatGel] (Georgian Lari currency).
  ///
  /// ISO 4217 Alpha code: "GEL", ISO 4217 Numeric code: "981".
  const FiatGel()
      : super(
          code: "GEL",
          name: "Georgian Lari",
          symbol: "₾",
          alternateSymbols: const ["lari"],
          codeNumeric: "981",
          namesNative: const ["ქართული ლარი"],
          subunit: "Tetri",
          translations: gelCurrencyTranslations,
        );
}

/// A class that represents the Ghanaian Cedi currency.
class FiatGhs extends FiatCurrency {
  /// Creates a instance of [FiatGhs] (Ghanaian Cedi currency).
  ///
  /// ISO 4217 Alpha code: "GHS", ISO 4217 Numeric code: "936".
  const FiatGhs()
      : super(
          code: "GHS",
          name: "Ghanaian Cedi",
          symbol: "₵",
          alternateSymbols: const ["GH¢", "GH₵"],
          htmlEntity: "&#x20B5;",
          codeNumeric: "936",
          namesNative: const ["Ghanaian cedi"],
          subunit: "Pesewa",
          unitFirst: true,
          translations: ghsCurrencyTranslations,
        );
}

/// A class that represents the Gibraltar Pound currency.
class FiatGip extends FiatCurrency {
  /// Creates a instance of [FiatGip] (Gibraltar Pound currency).
  ///
  /// ISO 4217 Alpha code: "GIP", ISO 4217 Numeric code: "292".
  const FiatGip()
      : super(
          code: "GIP",
          name: "Gibraltar Pound",
          symbol: "£",
          disambiguateSymbol: "GIP",
          htmlEntity: "&#x00A3;",
          codeNumeric: "292",
          namesNative: const ["Gibraltar pound"],
          subunit: "Penny",
          unitFirst: true,
          translations: gipCurrencyTranslations,
        );
}

/// A class that represents the Gambian Dalasi currency.
class FiatGmd extends FiatCurrency {
  /// Creates a instance of [FiatGmd] (Gambian Dalasi currency).
  ///
  /// ISO 4217 Alpha code: "GMD", ISO 4217 Numeric code: "270".
  const FiatGmd()
      : super(
          code: "GMD",
          name: "Gambian Dalasi",
          symbol: "D",
          codeNumeric: "270",
          namesNative: const ["Gambian dalasi"],
          subunit: "Butut",
          translations: gmdCurrencyTranslations,
        );
}

/// A class that represents the Guinean Franc currency.
class FiatGnf extends FiatCurrency {
  /// Creates a instance of [FiatGnf] (Guinean Franc currency).
  ///
  /// ISO 4217 Alpha code: "GNF", ISO 4217 Numeric code: "324".
  const FiatGnf()
      : super(
          code: "GNF",
          name: "Guinean Franc",
          symbol: "Fr",
          alternateSymbols: const ["FG", "GFr"],
          disambiguateSymbol: "FG",
          codeNumeric: "324",
          namesNative: const ["franc guinéen"],
          smallestDenomination: 100,
          subunit: "Centime",
          subunitToUnit: 1,
          translations: gnfCurrencyTranslations,
        );
}

/// A class that represents the Guatemalan Quetzal currency.
class FiatGtq extends FiatCurrency {
  /// Creates a instance of [FiatGtq] (Guatemalan Quetzal currency).
  ///
  /// ISO 4217 Alpha code: "GTQ", ISO 4217 Numeric code: "320".
  const FiatGtq()
      : super(
          code: "GTQ",
          name: "Guatemalan Quetzal",
          symbol: "Q",
          codeNumeric: "320",
          namesNative: const ["quetzal guatemalteco"],
          subunit: "Centavo",
          unitFirst: true,
          translations: gtqCurrencyTranslations,
        );
}

/// A class that represents the Guyanaese Dollar currency.
class FiatGyd extends FiatCurrency {
  /// Creates a instance of [FiatGyd] (Guyanaese Dollar currency).
  ///
  /// ISO 4217 Alpha code: "GYD", ISO 4217 Numeric code: "328".
  const FiatGyd()
      : super(
          code: "GYD",
          name: "Guyanaese Dollar",
          symbol: r"$",
          alternateSymbols: const [r"G$"],
          disambiguateSymbol: r"G$",
          htmlEntity: r"$",
          codeNumeric: "328",
          namesNative: const ["Guyanese dollar"],
          smallestDenomination: 100,
          subunit: "Cent",
          translations: gydCurrencyTranslations,
        );
}

/// A class that represents the Hong Kong Dollar currency.
class FiatHkd extends FiatCurrency {
  /// Creates a instance of [FiatHkd] (Hong Kong Dollar currency).
  ///
  /// ISO 4217 Alpha code: "HKD", ISO 4217 Numeric code: "344".
  const FiatHkd()
      : super(
          code: "HKD",
          name: "Hong Kong Dollar",
          symbol: r"$",
          alternateSymbols: const [r"HK$"],
          disambiguateSymbol: r"HK$",
          htmlEntity: r"$",
          codeNumeric: "344",
          namesNative: const ["港幣"],
          smallestDenomination: 10,
          subunit: "Cent",
          unitFirst: true,
          translations: hkdCurrencyTranslations,
        );
}

/// A class that represents the Honduran Lempira currency.
class FiatHnl extends FiatCurrency {
  /// Creates a instance of [FiatHnl] (Honduran Lempira currency).
  ///
  /// ISO 4217 Alpha code: "HNL", ISO 4217 Numeric code: "340".
  const FiatHnl()
      : super(
          code: "HNL",
          name: "Honduran Lempira",
          symbol: "L",
          disambiguateSymbol: "HNL",
          codeNumeric: "340",
          namesNative: const ["lempira hondureño"],
          smallestDenomination: 5,
          subunit: "Centavo",
          unitFirst: true,
          translations: hnlCurrencyTranslations,
        );
}

/// A class that represents the Croatian Kuna currency.
class FiatHrk extends FiatCurrency {
  /// Creates a instance of [FiatHrk] (Croatian Kuna currency).
  ///
  /// ISO 4217 Alpha code: "HRK", ISO 4217 Numeric code: "191".
  @Deprecated("Use `FiatEur()` instead")
  const FiatHrk()
      : super(
          code: "HRK",
          name: "Croatian Kuna",
          decimalMark: ",",
          thousandsSeparator: ".",
          symbol: "kn",
          codeNumeric: "191",
          namesNative: const ["hrvatska kuna"],
          subunit: "Lipa",
          translations: hrkCurrencyTranslations,
        );
}

/// A class that represents the Haitian Gourde currency.
class FiatHtg extends FiatCurrency {
  /// Creates a instance of [FiatHtg] (Haitian Gourde currency).
  ///
  /// ISO 4217 Alpha code: "HTG", ISO 4217 Numeric code: "332".
  const FiatHtg()
      : super(
          code: "HTG",
          name: "Haitian Gourde",
          symbol: "G",
          codeNumeric: "332",
          namesNative: const ["goud ayisyen"],
          smallestDenomination: 5,
          subunit: "Centime",
          translations: htgCurrencyTranslations,
        );
}

/// A class that represents the Hungarian Forint currency.
class FiatHuf extends FiatCurrency {
  /// Creates a instance of [FiatHuf] (Hungarian Forint currency).
  ///
  /// ISO 4217 Alpha code: "HUF", ISO 4217 Numeric code: "348".
  const FiatHuf()
      : super(
          code: "HUF",
          name: "Hungarian Forint",
          decimalMark: ",",
          thousandsSeparator: " ",
          symbol: "Ft",
          codeNumeric: "348",
          namesNative: const ["Magyar forint"],
          smallestDenomination: 5,
          subunitToUnit: 1,
          translations: hufCurrencyTranslations,
        );
}

/// A class that represents the Indonesian Rupiah currency.
class FiatIdr extends FiatCurrency {
  /// Creates a instance of [FiatIdr] (Indonesian Rupiah currency).
  ///
  /// ISO 4217 Alpha code: "IDR", ISO 4217 Numeric code: "360".
  const FiatIdr()
      : super(
          code: "IDR",
          name: "Indonesian Rupiah",
          decimalMark: ",",
          thousandsSeparator: ".",
          symbol: "Rp",
          codeNumeric: "360",
          namesNative: const ["Rupiah"],
          smallestDenomination: 5000,
          subunit: "Sen",
          unitFirst: true,
          translations: idrCurrencyTranslations,
        );
}

/// A class that represents the Israeli New Shekel currency.
class FiatIls extends FiatCurrency {
  /// Creates a instance of [FiatIls] (Israeli New Shekel currency).
  ///
  /// ISO 4217 Alpha code: "ILS", ISO 4217 Numeric code: "376".
  const FiatIls()
      : super(
          code: "ILS",
          name: "Israeli New Shekel",
          symbol: "₪",
          alternateSymbols: const ["ש״ח", "NIS"],
          htmlEntity: "&#x20AA;",
          codeNumeric: "376",
          namesNative: const ["שקל חדש"],
          smallestDenomination: 10,
          subunit: "Agora",
          unitFirst: true,
          translations: ilsCurrencyTranslations,
        );
}

/// A class that represents the Indian Rupee currency.
class FiatInr extends FiatCurrency {
  /// Creates a instance of [FiatInr] (Indian Rupee currency).
  ///
  /// ISO 4217 Alpha code: "INR", ISO 4217 Numeric code: "356".
  const FiatInr()
      : super(
          code: "INR",
          name: "Indian Rupee",
          symbol: "₹",
          alternateSymbols: const ["Rs", "৳", "૱", "௹", "रु", "₨"],
          htmlEntity: "&#x20b9;",
          codeNumeric: "356",
          namesNative: const ["रुपया"],
          smallestDenomination: 50,
          subunit: "Paisa",
          unitFirst: true,
          translations: inrCurrencyTranslations,
        );
}

/// A class that represents the Iraqi Dinar currency.
class FiatIqd extends FiatCurrency {
  /// Creates a instance of [FiatIqd] (Iraqi Dinar currency).
  ///
  /// ISO 4217 Alpha code: "IQD", ISO 4217 Numeric code: "368".
  const FiatIqd()
      : super(
          code: "IQD",
          name: "Iraqi Dinar",
          symbol: "ع.د",
          codeNumeric: "368",
          namesNative: const ["دينار عراقي"],
          smallestDenomination: 50000,
          subunit: "Fils",
          subunitToUnit: 1000,
          translations: iqdCurrencyTranslations,
        );
}

/// A class that represents the Iranian Rial currency.
class FiatIrr extends FiatCurrency {
  /// Creates a instance of [FiatIrr] (Iranian Rial currency).
  ///
  /// ISO 4217 Alpha code: "IRR", ISO 4217 Numeric code: "364".
  const FiatIrr()
      : super(
          code: "IRR",
          name: "Iranian Rial",
          symbol: "﷼",
          htmlEntity: "&#xFDFC;",
          codeNumeric: "364",
          namesNative: const ["ریال ایران"],
          smallestDenomination: 5000,
          unitFirst: true,
          translations: irrCurrencyTranslations,
        );
}

/// A class that represents the Icelandic Króna currency.
class FiatIsk extends FiatCurrency {
  /// Creates a instance of [FiatIsk] (Icelandic Króna currency).
  ///
  /// ISO 4217 Alpha code: "ISK", ISO 4217 Numeric code: "352".
  const FiatIsk()
      : super(
          code: "ISK",
          name: "Icelandic Króna",
          decimalMark: ",",
          thousandsSeparator: ".",
          symbol: "kr.",
          alternateSymbols: const ["Íkr"],
          codeNumeric: "352",
          namesNative: const ["íslensk króna"],
          subunitToUnit: 1,
          translations: iskCurrencyTranslations,
        );
}

/// A class that represents the Jamaican Dollar currency.
class FiatJmd extends FiatCurrency {
  /// Creates a instance of [FiatJmd] (Jamaican Dollar currency).
  ///
  /// ISO 4217 Alpha code: "JMD", ISO 4217 Numeric code: "388".
  const FiatJmd()
      : super(
          code: "JMD",
          name: "Jamaican Dollar",
          symbol: r"$",
          alternateSymbols: const [r"J$"],
          disambiguateSymbol: r"J$",
          htmlEntity: r"$",
          codeNumeric: "388",
          namesNative: const ["Jamaican dollar"],
          subunit: "Cent",
          unitFirst: true,
          translations: jmdCurrencyTranslations,
        );
}

/// A class that represents the Jordanian Dinar currency.
class FiatJod extends FiatCurrency {
  /// Creates a instance of [FiatJod] (Jordanian Dinar currency).
  ///
  /// ISO 4217 Alpha code: "JOD", ISO 4217 Numeric code: "400".
  const FiatJod()
      : super(
          code: "JOD",
          name: "Jordanian Dinar",
          symbol: "د.ا",
          alternateSymbols: const ["JD"],
          codeNumeric: "400",
          namesNative: const ["دينار أردني"],
          smallestDenomination: 5,
          subunit: "Fils",
          subunitToUnit: 1000,
          unitFirst: true,
          translations: jodCurrencyTranslations,
        );
}

/// A class that represents the Japanese Yen currency.
class FiatJpy extends FiatCurrency {
  /// Creates a instance of [FiatJpy] (Japanese Yen currency).
  ///
  /// ISO 4217 Alpha code: "JPY", ISO 4217 Numeric code: "392".
  const FiatJpy()
      : super(
          code: "JPY",
          name: "Japanese Yen",
          symbol: "¥",
          alternateSymbols: const ["円", "圓"],
          htmlEntity: "&#x00A5;",
          codeNumeric: "392",
          namesNative: const ["日本円"],
          priority: 6,
          subunitToUnit: 1,
          unitFirst: true,
          translations: jpyCurrencyTranslations,
        );
}

/// A class that represents the Kenyan Shilling currency.
class FiatKes extends FiatCurrency {
  /// Creates a instance of [FiatKes] (Kenyan Shilling currency).
  ///
  /// ISO 4217 Alpha code: "KES", ISO 4217 Numeric code: "404".
  const FiatKes()
      : super(
          code: "KES",
          name: "Kenyan Shilling",
          symbol: "KSh",
          alternateSymbols: const ["Sh"],
          codeNumeric: "404",
          namesNative: const ["Shillingi ya Kenya"],
          smallestDenomination: 50,
          subunit: "Cent",
          unitFirst: true,
          translations: kesCurrencyTranslations,
        );
}

/// A class that represents the Kyrgystani Som currency.
class FiatKgs extends FiatCurrency {
  /// Creates a instance of [FiatKgs] (Kyrgystani Som currency).
  ///
  /// ISO 4217 Alpha code: "KGS", ISO 4217 Numeric code: "417".
  const FiatKgs()
      : super(
          code: "KGS",
          name: "Kyrgystani Som",
          symbol: "som",
          alternateSymbols: const ["сом"],
          codeNumeric: "417",
          namesNative: const ["Кыргыз сом"],
          subunit: "Tyiyn",
          translations: kgsCurrencyTranslations,
        );
}

/// A class that represents the Cambodian Riel currency.
class FiatKhr extends FiatCurrency {
  /// Creates a instance of [FiatKhr] (Cambodian Riel currency).
  ///
  /// ISO 4217 Alpha code: "KHR", ISO 4217 Numeric code: "116".
  const FiatKhr()
      : super(
          code: "KHR",
          name: "Cambodian Riel",
          symbol: "៛",
          htmlEntity: "&#x17DB;",
          codeNumeric: "116",
          namesNative: const ["រៀល"],
          smallestDenomination: 5000,
          subunit: "Sen",
          translations: khrCurrencyTranslations,
        );
}

/// A class that represents the Comorian Franc currency.
class FiatKmf extends FiatCurrency {
  /// Creates a instance of [FiatKmf] (Comorian Franc currency).
  ///
  /// ISO 4217 Alpha code: "KMF", ISO 4217 Numeric code: "174".
  const FiatKmf()
      : super(
          code: "KMF",
          name: "Comorian Franc",
          symbol: "Fr",
          alternateSymbols: const ["CF"],
          disambiguateSymbol: "CF",
          codeNumeric: "174",
          namesNative: const ["Comorian franc"],
          smallestDenomination: 100,
          subunit: "Centime",
          subunitToUnit: 1,
          translations: kmfCurrencyTranslations,
        );
}

/// A class that represents the North Korean Won currency.
class FiatKpw extends FiatCurrency {
  /// Creates a instance of [FiatKpw] (North Korean Won currency).
  ///
  /// ISO 4217 Alpha code: "KPW", ISO 4217 Numeric code: "408".
  const FiatKpw()
      : super(
          code: "KPW",
          name: "North Korean Won",
          symbol: "₩",
          htmlEntity: "&#x20A9;",
          codeNumeric: "408",
          namesNative: const ["조선 민주주의 인민 공화국 원"],
          subunit: "Chŏn",
          translations: kpwCurrencyTranslations,
        );
}

/// A class that represents the South Korean Won currency.
class FiatKrw extends FiatCurrency {
  /// Creates a instance of [FiatKrw] (South Korean Won currency).
  ///
  /// ISO 4217 Alpha code: "KRW", ISO 4217 Numeric code: "410".
  const FiatKrw()
      : super(
          code: "KRW",
          name: "South Korean Won",
          symbol: "₩",
          htmlEntity: "&#x20A9;",
          codeNumeric: "410",
          namesNative: const ["원"],
          subunitToUnit: 1,
          unitFirst: true,
          translations: krwCurrencyTranslations,
        );
}

/// A class that represents the Kuwaiti Dinar currency.
class FiatKwd extends FiatCurrency {
  /// Creates a instance of [FiatKwd] (Kuwaiti Dinar currency).
  ///
  /// ISO 4217 Alpha code: "KWD", ISO 4217 Numeric code: "414".
  const FiatKwd()
      : super(
          code: "KWD",
          name: "Kuwaiti Dinar",
          symbol: "د.ك",
          alternateSymbols: const ["K.D."],
          codeNumeric: "414",
          namesNative: const ["دينار كويتي"],
          smallestDenomination: 5,
          subunit: "Fils",
          subunitToUnit: 1000,
          unitFirst: true,
          translations: kwdCurrencyTranslations,
        );
}

/// A class that represents the Cayman Islands Dollar currency.
class FiatKyd extends FiatCurrency {
  /// Creates a instance of [FiatKyd] (Cayman Islands Dollar currency).
  ///
  /// ISO 4217 Alpha code: "KYD", ISO 4217 Numeric code: "136".
  const FiatKyd()
      : super(
          code: "KYD",
          name: "Cayman Islands Dollar",
          symbol: r"$",
          alternateSymbols: const [r"CI$"],
          disambiguateSymbol: r"CI$",
          htmlEntity: r"$",
          codeNumeric: "136",
          namesNative: const ["Cayman Islands dollar"],
          subunit: "Cent",
          unitFirst: true,
          translations: kydCurrencyTranslations,
        );
}

/// A class that represents the Kazakhstani Tenge currency.
class FiatKzt extends FiatCurrency {
  /// Creates a instance of [FiatKzt] (Kazakhstani Tenge currency).
  ///
  /// ISO 4217 Alpha code: "KZT", ISO 4217 Numeric code: "398".
  const FiatKzt()
      : super(
          code: "KZT",
          name: "Kazakhstani Tenge",
          symbol: "₸",
          codeNumeric: "398",
          namesNative: const ["Қазақстан теңгесі", "Казахстанский тенге"],
          smallestDenomination: 100,
          subunit: "Tiyn",
          translations: kztCurrencyTranslations,
        );
}

/// A class that represents the Laotian Kip currency.
class FiatLak extends FiatCurrency {
  /// Creates a instance of [FiatLak] (Laotian Kip currency).
  ///
  /// ISO 4217 Alpha code: "LAK", ISO 4217 Numeric code: "418".
  const FiatLak()
      : super(
          code: "LAK",
          name: "Laotian Kip",
          symbol: "₭",
          alternateSymbols: const ["₭N"],
          htmlEntity: "&#x20AD;",
          codeNumeric: "418",
          namesNative: const ["ເງີນກີບລາວ"],
          smallestDenomination: 10,
          subunit: "Att",
          translations: lakCurrencyTranslations,
        );
}

/// A class that represents the Lebanese Pound currency.
class FiatLbp extends FiatCurrency {
  /// Creates a instance of [FiatLbp] (Lebanese Pound currency).
  ///
  /// ISO 4217 Alpha code: "LBP", ISO 4217 Numeric code: "422".
  const FiatLbp()
      : super(
          code: "LBP",
          name: "Lebanese Pound",
          symbol: "ل.ل",
          alternateSymbols: const ["£", "L£"],
          htmlEntity: "&#x00A3;",
          codeNumeric: "422",
          namesNative: const ["ليرة لبنانية"],
          smallestDenomination: 25000,
          subunit: "Piastre",
          unitFirst: true,
          translations: lbpCurrencyTranslations,
        );
}

/// A class that represents the Sri Lankan Rupee currency.
class FiatLkr extends FiatCurrency {
  /// Creates a instance of [FiatLkr] (Sri Lankan Rupee currency).
  ///
  /// ISO 4217 Alpha code: "LKR", ISO 4217 Numeric code: "144".
  const FiatLkr()
      : super(
          code: "LKR",
          name: "Sri Lankan Rupee",
          symbol: "₨",
          alternateSymbols: const ["රු", "ரூ", "SLRs", "/-"],
          disambiguateSymbol: "SLRs",
          htmlEntity: "&#8360;",
          codeNumeric: "144",
          namesNative: const ["ශ්‍රී ලංකා රුපියල්"],
          smallestDenomination: 100,
          subunit: "Cent",
          translations: lkrCurrencyTranslations,
        );
}

/// A class that represents the Liberian Dollar currency.
class FiatLrd extends FiatCurrency {
  /// Creates a instance of [FiatLrd] (Liberian Dollar currency).
  ///
  /// ISO 4217 Alpha code: "LRD", ISO 4217 Numeric code: "430".
  const FiatLrd()
      : super(
          code: "LRD",
          name: "Liberian Dollar",
          symbol: r"$",
          alternateSymbols: const [r"L$"],
          disambiguateSymbol: r"L$",
          htmlEntity: r"$",
          codeNumeric: "430",
          namesNative: const ["Liberian dollars"],
          smallestDenomination: 5,
          subunit: "Cent",
          translations: lrdCurrencyTranslations,
        );
}

/// A class that represents the Lesotho Loti currency.
class FiatLsl extends FiatCurrency {
  /// Creates a instance of [FiatLsl] (Lesotho Loti currency).
  ///
  /// ISO 4217 Alpha code: "LSL", ISO 4217 Numeric code: "426".
  const FiatLsl()
      : super(
          code: "LSL",
          name: "Lesotho Loti",
          symbol: "L",
          alternateSymbols: const ["M"],
          disambiguateSymbol: "M",
          codeNumeric: "426",
          namesNative: const ["Lesotho loti"],
          subunit: "Sente",
          translations: lslCurrencyTranslations,
        );
}

/// A class that represents the Libyan Dinar currency.
class FiatLyd extends FiatCurrency {
  /// Creates a instance of [FiatLyd] (Libyan Dinar currency).
  ///
  /// ISO 4217 Alpha code: "LYD", ISO 4217 Numeric code: "434".
  const FiatLyd()
      : super(
          code: "LYD",
          name: "Libyan Dinar",
          symbol: "ل.د",
          alternateSymbols: const ["LD"],
          codeNumeric: "434",
          namesNative: const ["دينار ليبي"],
          smallestDenomination: 50,
          subunit: "Dirham",
          subunitToUnit: 1000,
          translations: lydCurrencyTranslations,
        );
}

/// A class that represents the Moroccan Dirham currency.
class FiatMad extends FiatCurrency {
  /// Creates a instance of [FiatMad] (Moroccan Dirham currency).
  ///
  /// ISO 4217 Alpha code: "MAD", ISO 4217 Numeric code: "504".
  const FiatMad()
      : super(
          code: "MAD",
          name: "Moroccan Dirham",
          symbol: "د.م.",
          codeNumeric: "504",
          namesNative: const ["درهم مغربي"],
          subunit: "Centime",
          translations: madCurrencyTranslations,
        );
}

/// A class that represents the Moldovan Leu currency.
class FiatMdl extends FiatCurrency {
  /// Creates a instance of [FiatMdl] (Moldovan Leu currency).
  ///
  /// ISO 4217 Alpha code: "MDL", ISO 4217 Numeric code: "498".
  const FiatMdl()
      : super(
          code: "MDL",
          name: "Moldovan Leu",
          symbol: "L",
          alternateSymbols: const ["lei"],
          codeNumeric: "498",
          namesNative: const ["leu moldovenesc"],
          subunit: "Ban",
          translations: mdlCurrencyTranslations,
        );
}

/// A class that represents the Malagasy Ariary currency.
class FiatMga extends FiatCurrency {
  /// Creates a instance of [FiatMga] (Malagasy Ariary currency).
  ///
  /// ISO 4217 Alpha code: "MGA", ISO 4217 Numeric code: "969".
  const FiatMga()
      : super(
          code: "MGA",
          name: "Malagasy Ariary",
          symbol: "Ar",
          codeNumeric: "969",
          namesNative: const ["ariary malgache"],
          subunit: "Iraimbilanja",
          subunitToUnit: 5,
          unitFirst: true,
          translations: mgaCurrencyTranslations,
        );
}

/// A class that represents the Macedonian Denar currency.
class FiatMkd extends FiatCurrency {
  /// Creates a instance of [FiatMkd] (Macedonian Denar currency).
  ///
  /// ISO 4217 Alpha code: "MKD", ISO 4217 Numeric code: "807".
  const FiatMkd()
      : super(
          code: "MKD",
          name: "Macedonian Denar",
          symbol: "ден",
          codeNumeric: "807",
          namesNative: const ["Македонски денар"],
          smallestDenomination: 100,
          subunit: "Deni",
          translations: mkdCurrencyTranslations,
        );
}

/// A class that represents the Myanmar Kyat currency.
class FiatMmk extends FiatCurrency {
  /// Creates a instance of [FiatMmk] (Myanmar Kyat currency).
  ///
  /// ISO 4217 Alpha code: "MMK", ISO 4217 Numeric code: "104".
  const FiatMmk()
      : super(
          code: "MMK",
          name: "Myanmar Kyat",
          symbol: "K",
          disambiguateSymbol: "MMK",
          codeNumeric: "104",
          namesNative: const ["ကျပ်"],
          smallestDenomination: 50,
          subunit: "Pya",
          translations: mmkCurrencyTranslations,
        );
}

/// A class that represents the Mongolian Tugrik currency.
class FiatMnt extends FiatCurrency {
  /// Creates a instance of [FiatMnt] (Mongolian Tugrik currency).
  ///
  /// ISO 4217 Alpha code: "MNT", ISO 4217 Numeric code: "496".
  const FiatMnt()
      : super(
          code: "MNT",
          name: "Mongolian Tugrik",
          symbol: "₮",
          htmlEntity: "&#x20AE;",
          codeNumeric: "496",
          namesNative: const ["Монгол төгрөг"],
          smallestDenomination: 2000,
          subunit: "Möngö",
          translations: mntCurrencyTranslations,
        );
}

/// A class that represents the Macanese Pataca currency.
class FiatMop extends FiatCurrency {
  /// Creates a instance of [FiatMop] (Macanese Pataca currency).
  ///
  /// ISO 4217 Alpha code: "MOP", ISO 4217 Numeric code: "446".
  const FiatMop()
      : super(
          code: "MOP",
          name: "Macanese Pataca",
          symbol: "P",
          alternateSymbols: const [r"MOP$"],
          codeNumeric: "446",
          namesNative: const ["澳門圓"],
          smallestDenomination: 10,
          subunit: "Avo",
          translations: mopCurrencyTranslations,
        );
}

/// A class that represents the Mauritanian Ouguiya currency.
class FiatMru extends FiatCurrency {
  /// Creates a instance of [FiatMru] (Mauritanian Ouguiya currency).
  ///
  /// ISO 4217 Alpha code: "MRU", ISO 4217 Numeric code: "929".
  const FiatMru()
      : super(
          code: "MRU",
          name: "Mauritanian Ouguiya",
          symbol: "UM",
          codeNumeric: "929",
          namesNative: const ["أوقية موريتانية"],
          subunit: "Khoums",
          subunitToUnit: 5,
          translations: mruCurrencyTranslations,
        );
}

/// A class that represents the Mauritian Rupee currency.
class FiatMur extends FiatCurrency {
  /// Creates a instance of [FiatMur] (Mauritian Rupee currency).
  ///
  /// ISO 4217 Alpha code: "MUR", ISO 4217 Numeric code: "480".
  const FiatMur()
      : super(
          code: "MUR",
          name: "Mauritian Rupee",
          symbol: "₨",
          htmlEntity: "&#x20A8;",
          codeNumeric: "480",
          namesNative: const ["Roupie mauricienne"],
          smallestDenomination: 100,
          subunit: "Cent",
          unitFirst: true,
          translations: murCurrencyTranslations,
        );
}

/// A class that represents the Maldivian Rufiyaa currency.
class FiatMvr extends FiatCurrency {
  /// Creates a instance of [FiatMvr] (Maldivian Rufiyaa currency).
  ///
  /// ISO 4217 Alpha code: "MVR", ISO 4217 Numeric code: "462".
  const FiatMvr()
      : super(
          code: "MVR",
          name: "Maldivian Rufiyaa",
          alternateSymbols: const ["MRF", "Rf", "/-", "ރ"],
          codeNumeric: "462",
          namesNative: const ["ދިވެހި ރުފިޔާ"],
          subunit: "Laari",
          translations: mvrCurrencyTranslations,
        );
}

/// A class that represents the Malawian Kwacha currency.
class FiatMwk extends FiatCurrency {
  /// Creates a instance of [FiatMwk] (Malawian Kwacha currency).
  ///
  /// ISO 4217 Alpha code: "MWK", ISO 4217 Numeric code: "454".
  const FiatMwk()
      : super(
          code: "MWK",
          name: "Malawian Kwacha",
          symbol: "MK",
          codeNumeric: "454",
          namesNative: const ["Malawian kwacha"],
          subunit: "Tambala",
          translations: mwkCurrencyTranslations,
        );
}

/// A class that represents the Mexican Peso currency.
class FiatMxn extends FiatCurrency {
  /// Creates a instance of [FiatMxn] (Mexican Peso currency).
  ///
  /// ISO 4217 Alpha code: "MXN", ISO 4217 Numeric code: "484".
  const FiatMxn()
      : super(
          code: "MXN",
          name: "Mexican Peso",
          symbol: r"$",
          alternateSymbols: const [r"MEX$"],
          disambiguateSymbol: r"MEX$",
          htmlEntity: r"$",
          codeNumeric: "484",
          namesNative: const ["Peso Mexicano"],
          smallestDenomination: 5,
          subunit: "Centavo",
          unitFirst: true,
          translations: mxnCurrencyTranslations,
        );
}

/// A class that represents the Malaysian Ringgit currency.
class FiatMyr extends FiatCurrency {
  /// Creates a instance of [FiatMyr] (Malaysian Ringgit currency).
  ///
  /// ISO 4217 Alpha code: "MYR", ISO 4217 Numeric code: "458".
  const FiatMyr()
      : super(
          code: "MYR",
          name: "Malaysian Ringgit",
          symbol: "RM",
          codeNumeric: "458",
          namesNative: const ["Ringgit Malaysia"],
          smallestDenomination: 5,
          subunit: "Sen",
          unitFirst: true,
          translations: myrCurrencyTranslations,
        );
}

/// A class that represents the Mozambican Metical currency.
class FiatMzn extends FiatCurrency {
  /// Creates a instance of [FiatMzn] (Mozambican Metical currency).
  ///
  /// ISO 4217 Alpha code: "MZN", ISO 4217 Numeric code: "943".
  const FiatMzn()
      : super(
          code: "MZN",
          name: "Mozambican Metical",
          decimalMark: ",",
          thousandsSeparator: ".",
          symbol: "MTn",
          alternateSymbols: const ["MZN"],
          codeNumeric: "943",
          namesNative: const ["Metical moçambicano"],
          subunit: "Centavo",
          unitFirst: true,
          translations: mznCurrencyTranslations,
        );
}

/// A class that represents the Namibian Dollar currency.
class FiatNad extends FiatCurrency {
  /// Creates a instance of [FiatNad] (Namibian Dollar currency).
  ///
  /// ISO 4217 Alpha code: "NAD", ISO 4217 Numeric code: "516".
  const FiatNad()
      : super(
          code: "NAD",
          name: "Namibian Dollar",
          symbol: r"$",
          alternateSymbols: const [r"N$"],
          disambiguateSymbol: r"N$",
          htmlEntity: r"$",
          codeNumeric: "516",
          namesNative: const ["Namibian dollar"],
          smallestDenomination: 5,
          subunit: "Cent",
          translations: nadCurrencyTranslations,
        );
}

/// A class that represents the Nigerian Naira currency.
class FiatNgn extends FiatCurrency {
  /// Creates a instance of [FiatNgn] (Nigerian Naira currency).
  ///
  /// ISO 4217 Alpha code: "NGN", ISO 4217 Numeric code: "566".
  const FiatNgn()
      : super(
          code: "NGN",
          name: "Nigerian Naira",
          symbol: "₦",
          htmlEntity: "&#x20A6;",
          codeNumeric: "566",
          namesNative: const ["Nigerian naira"],
          smallestDenomination: 50,
          subunit: "Kobo",
          unitFirst: true,
          translations: ngnCurrencyTranslations,
        );
}

/// A class that represents the Nicaraguan Córdoba currency.
class FiatNio extends FiatCurrency {
  /// Creates a instance of [FiatNio] (Nicaraguan Córdoba currency).
  ///
  /// ISO 4217 Alpha code: "NIO", ISO 4217 Numeric code: "558".
  const FiatNio()
      : super(
          code: "NIO",
          name: "Nicaraguan Córdoba",
          symbol: r"C$",
          disambiguateSymbol: r"NIO$",
          codeNumeric: "558",
          namesNative: const ["córdoba nicaragüense"],
          smallestDenomination: 5,
          subunit: "Centavo",
          unitFirst: true,
          translations: nioCurrencyTranslations,
        );
}

/// A class that represents the Norwegian Krone currency.
class FiatNok extends FiatCurrency {
  /// Creates a instance of [FiatNok] (Norwegian Krone currency).
  ///
  /// ISO 4217 Alpha code: "NOK", ISO 4217 Numeric code: "578".
  const FiatNok()
      : super(
          code: "NOK",
          name: "Norwegian Krone",
          decimalMark: ",",
          thousandsSeparator: ".",
          symbol: "kr",
          alternateSymbols: const ["krone"],
          disambiguateSymbol: "NOK",
          htmlEntity: "kr",
          codeNumeric: "578",
          namesNative: const ["norsk krone"],
          smallestDenomination: 100,
          subunit: "Øre",
          translations: nokCurrencyTranslations,
        );
}

/// A class that represents the Nepalese Rupee currency.
class FiatNpr extends FiatCurrency {
  /// Creates a instance of [FiatNpr] (Nepalese Rupee currency).
  ///
  /// ISO 4217 Alpha code: "NPR", ISO 4217 Numeric code: "524".
  const FiatNpr()
      : super(
          code: "NPR",
          name: "Nepalese Rupee",
          symbol: "Rs.",
          alternateSymbols: const ["Rs", "रू", "₨"],
          disambiguateSymbol: "NPR",
          htmlEntity: "&#x20A8;",
          codeNumeric: "524",
          namesNative: const ["रुपैयाँ"],
          subunit: "Paisa",
          unitFirst: true,
          translations: nprCurrencyTranslations,
        );
}

/// A class that represents the New Zealand Dollar currency.
class FiatNzd extends FiatCurrency {
  /// Creates a instance of [FiatNzd] (New Zealand Dollar currency).
  ///
  /// ISO 4217 Alpha code: "NZD", ISO 4217 Numeric code: "554".
  const FiatNzd()
      : super(
          code: "NZD",
          name: "New Zealand Dollar",
          symbol: r"$",
          alternateSymbols: const [r"NZ$"],
          disambiguateSymbol: r"NZ$",
          htmlEntity: r"$",
          codeNumeric: "554",
          namesNative: const ["New Zealand dollar"],
          smallestDenomination: 10,
          subunit: "Cent",
          unitFirst: true,
          translations: nzdCurrencyTranslations,
        );
}

/// A class that represents the Omani Rial currency.
class FiatOmr extends FiatCurrency {
  /// Creates a instance of [FiatOmr] (Omani Rial currency).
  ///
  /// ISO 4217 Alpha code: "OMR", ISO 4217 Numeric code: "512".
  const FiatOmr()
      : super(
          code: "OMR",
          name: "Omani Rial",
          symbol: "ر.ع.",
          htmlEntity: "&#xFDFC;",
          codeNumeric: "512",
          namesNative: const ["ريال عماني"],
          smallestDenomination: 5,
          subunit: "Baisa",
          subunitToUnit: 1000,
          unitFirst: true,
          translations: omrCurrencyTranslations,
        );
}

/// A class that represents the Panamanian Balboa currency.
class FiatPab extends FiatCurrency {
  /// Creates a instance of [FiatPab] (Panamanian Balboa currency).
  ///
  /// ISO 4217 Alpha code: "PAB", ISO 4217 Numeric code: "590".
  const FiatPab()
      : super(
          code: "PAB",
          name: "Panamanian Balboa",
          symbol: "B/.",
          codeNumeric: "590",
          namesNative: const ["Balboa panameño"],
          subunit: "Centésimo",
          unitFirst: true,
          translations: pabCurrencyTranslations,
        );
}

/// A class that represents the Peruvian Sol currency.
class FiatPen extends FiatCurrency {
  /// Creates a instance of [FiatPen] (Peruvian Sol currency).
  ///
  /// ISO 4217 Alpha code: "PEN", ISO 4217 Numeric code: "604".
  const FiatPen()
      : super(
          code: "PEN",
          name: "Peruvian Sol",
          decimalMark: ",",
          thousandsSeparator: ".",
          symbol: "S/",
          htmlEntity: "S/",
          codeNumeric: "604",
          namesNative: const ["sol peruano"],
          subunit: "Céntimo",
          unitFirst: true,
          translations: penCurrencyTranslations,
        );
}

/// A class that represents the Papua New Guinean Kina currency.
class FiatPgk extends FiatCurrency {
  /// Creates a instance of [FiatPgk] (Papua New Guinean Kina currency).
  ///
  /// ISO 4217 Alpha code: "PGK", ISO 4217 Numeric code: "598".
  const FiatPgk()
      : super(
          code: "PGK",
          name: "Papua New Guinean Kina",
          symbol: "K",
          disambiguateSymbol: "PGK",
          codeNumeric: "598",
          namesNative: const ["Papua New Guinean kina"],
          smallestDenomination: 5,
          subunit: "Toea",
          translations: pgkCurrencyTranslations,
        );
}

/// A class that represents the Philippine Peso currency.
class FiatPhp extends FiatCurrency {
  /// Creates a instance of [FiatPhp] (Philippine Peso currency).
  ///
  /// ISO 4217 Alpha code: "PHP", ISO 4217 Numeric code: "608".
  const FiatPhp()
      : super(
          code: "PHP",
          name: "Philippine Peso",
          symbol: "₱",
          alternateSymbols: const ["PHP", "PhP", "P"],
          htmlEntity: "&#x20B1;",
          codeNumeric: "608",
          namesNative: const ["Piso ng Pilipinas"],
          subunit: "Centavo",
          unitFirst: true,
          translations: phpCurrencyTranslations,
        );
}

/// A class that represents the Pakistani Rupee currency.
class FiatPkr extends FiatCurrency {
  /// Creates a instance of [FiatPkr] (Pakistani Rupee currency).
  ///
  /// ISO 4217 Alpha code: "PKR", ISO 4217 Numeric code: "586".
  const FiatPkr()
      : super(
          code: "PKR",
          name: "Pakistani Rupee",
          symbol: "₨",
          alternateSymbols: const ["Rs"],
          disambiguateSymbol: "PKR",
          htmlEntity: "&#x20A8;",
          codeNumeric: "586",
          namesNative: const ["پاکستانی روپیہ"],
          smallestDenomination: 100,
          subunit: "Paisa",
          unitFirst: true,
          translations: pkrCurrencyTranslations,
        );
}

/// A class that represents the Polish Zloty currency.
class FiatPln extends FiatCurrency {
  /// Creates a instance of [FiatPln] (Polish Zloty currency).
  ///
  /// ISO 4217 Alpha code: "PLN", ISO 4217 Numeric code: "985".
  const FiatPln()
      : super(
          code: "PLN",
          name: "Polish Zloty",
          decimalMark: ",",
          thousandsSeparator: " ",
          symbol: "zł",
          htmlEntity: "z&#322;",
          codeNumeric: "985",
          namesNative: const ["Polski złoty"],
          subunit: "Grosz",
          translations: plnCurrencyTranslations,
        );
}

/// A class that represents the Paraguayan Guarani currency.
class FiatPyg extends FiatCurrency {
  /// Creates a instance of [FiatPyg] (Paraguayan Guarani currency).
  ///
  /// ISO 4217 Alpha code: "PYG", ISO 4217 Numeric code: "600".
  const FiatPyg()
      : super(
          code: "PYG",
          name: "Paraguayan Guarani",
          symbol: "₲",
          htmlEntity: "&#x20B2;",
          codeNumeric: "600",
          namesNative: const ["Guaraní paraguayo"],
          smallestDenomination: 5000,
          subunit: "Céntimo",
          subunitToUnit: 1,
          unitFirst: true,
          translations: pygCurrencyTranslations,
        );
}

/// A class that represents the Qatari Riyal currency.
class FiatQar extends FiatCurrency {
  /// Creates a instance of [FiatQar] (Qatari Riyal currency).
  ///
  /// ISO 4217 Alpha code: "QAR", ISO 4217 Numeric code: "634".
  const FiatQar()
      : super(
          code: "QAR",
          name: "Qatari Riyal",
          symbol: "ر.ق",
          alternateSymbols: const ["QR"],
          htmlEntity: "&#xFDFC;",
          codeNumeric: "634",
          namesNative: const ["ريال قطري"],
          subunit: "Dirham",
          translations: qarCurrencyTranslations,
        );
}

/// A class that represents the Romanian Leu currency.
class FiatRon extends FiatCurrency {
  /// Creates a instance of [FiatRon] (Romanian Leu currency).
  ///
  /// ISO 4217 Alpha code: "RON", ISO 4217 Numeric code: "946".
  const FiatRon()
      : super(
          code: "RON",
          name: "Romanian Leu",
          decimalMark: ",",
          thousandsSeparator: ".",
          symbol: "Lei",
          codeNumeric: "946",
          namesNative: const ["Leu românesc"],
          subunit: "Bani",
          translations: ronCurrencyTranslations,
        );
}

/// A class that represents the Serbian Dinar currency.
class FiatRsd extends FiatCurrency {
  /// Creates a instance of [FiatRsd] (Serbian Dinar currency).
  ///
  /// ISO 4217 Alpha code: "RSD", ISO 4217 Numeric code: "941".
  const FiatRsd()
      : super(
          code: "RSD",
          name: "Serbian Dinar",
          symbol: "РСД",
          alternateSymbols: const ["RSD", "din", "дин"],
          codeNumeric: "941",
          namesNative: const ["Српски динар", "Srpski dinar"],
          smallestDenomination: 100,
          subunit: "Para",
          unitFirst: true,
          translations: rsdCurrencyTranslations,
        );
}

/// A class that represents the Russian Ruble currency.
class FiatRub extends FiatCurrency {
  /// Creates a instance of [FiatRub] (Russian Ruble currency).
  ///
  /// ISO 4217 Alpha code: "RUB", ISO 4217 Numeric code: "643".
  const FiatRub()
      : super(
          code: "RUB",
          name: "Russian Ruble",
          decimalMark: ",",
          thousandsSeparator: ".",
          symbol: "₽",
          alternateSymbols: const ["руб.", "р."],
          htmlEntity: "&#x20BD;",
          codeNumeric: "643",
          namesNative: const ["Российский рубль"],
          subunit: "Kopeck",
          translations: rubCurrencyTranslations,
        );
}

/// A class that represents the Rwandan Franc currency.
class FiatRwf extends FiatCurrency {
  /// Creates a instance of [FiatRwf] (Rwandan Franc currency).
  ///
  /// ISO 4217 Alpha code: "RWF", ISO 4217 Numeric code: "646".
  const FiatRwf()
      : super(
          code: "RWF",
          name: "Rwandan Franc",
          symbol: "FRw",
          alternateSymbols: const ["RF", "R₣"],
          codeNumeric: "646",
          namesNative: const ["Franc Rwandais"],
          smallestDenomination: 100,
          subunit: "Centime",
          subunitToUnit: 1,
          translations: rwfCurrencyTranslations,
        );
}

/// A class that represents the Saudi Riyal currency.
class FiatSar extends FiatCurrency {
  /// Creates a instance of [FiatSar] (Saudi Riyal currency).
  ///
  /// ISO 4217 Alpha code: "SAR", ISO 4217 Numeric code: "682".
  const FiatSar()
      : super(
          code: "SAR",
          name: "Saudi Riyal",
          symbol: "ر.س",
          alternateSymbols: const ["SR", "﷼"],
          htmlEntity: "&#xFDFC;",
          codeNumeric: "682",
          namesNative: const ["ريال سعودي"],
          smallestDenomination: 5,
          subunit: "Hallallah",
          unitFirst: true,
          translations: sarCurrencyTranslations,
        );
}

/// A class that represents the Solomon Islands Dollar currency.
class FiatSbd extends FiatCurrency {
  /// Creates a instance of [FiatSbd] (Solomon Islands Dollar currency).
  ///
  /// ISO 4217 Alpha code: "SBD", ISO 4217 Numeric code: "090".
  const FiatSbd()
      : super(
          code: "SBD",
          name: "Solomon Islands Dollar",
          symbol: r"$",
          alternateSymbols: const [r"SI$"],
          disambiguateSymbol: r"SI$",
          htmlEntity: r"$",
          codeNumeric: "090",
          namesNative: const ["Solomon Islands dollar"],
          smallestDenomination: 10,
          subunit: "Cent",
          translations: sbdCurrencyTranslations,
        );
}

/// A class that represents the Seychellois Rupee currency.
class FiatScr extends FiatCurrency {
  /// Creates a instance of [FiatScr] (Seychellois Rupee currency).
  ///
  /// ISO 4217 Alpha code: "SCR", ISO 4217 Numeric code: "690".
  const FiatScr()
      : super(
          code: "SCR",
          name: "Seychellois Rupee",
          symbol: "₨",
          alternateSymbols: const ["SRe", "SR"],
          disambiguateSymbol: "SRe",
          htmlEntity: "&#x20A8;",
          codeNumeric: "690",
          namesNative: const ["roupie seychelloise"],
          subunit: "Cent",
          translations: scrCurrencyTranslations,
        );
}

/// A class that represents the Sudanese Pound currency.
class FiatSdg extends FiatCurrency {
  /// Creates a instance of [FiatSdg] (Sudanese Pound currency).
  ///
  /// ISO 4217 Alpha code: "SDG", ISO 4217 Numeric code: "938".
  const FiatSdg()
      : super(
          code: "SDG",
          name: "Sudanese Pound",
          symbol: "£",
          disambiguateSymbol: "SDG",
          codeNumeric: "938",
          namesNative: const ["جنيه سوداني"],
          subunit: "Piastre",
          unitFirst: true,
          translations: sdgCurrencyTranslations,
        );
}

/// A class that represents the Swedish Krona currency.
class FiatSek extends FiatCurrency {
  /// Creates a instance of [FiatSek] (Swedish Krona currency).
  ///
  /// ISO 4217 Alpha code: "SEK", ISO 4217 Numeric code: "752".
  const FiatSek()
      : super(
          code: "SEK",
          name: "Swedish Krona",
          decimalMark: ",",
          thousandsSeparator: " ",
          symbol: "kr",
          alternateSymbols: const [":-"],
          disambiguateSymbol: "SEK",
          codeNumeric: "752",
          namesNative: const ["svensk krona"],
          smallestDenomination: 100,
          subunit: "Öre",
          translations: sekCurrencyTranslations,
        );
}

/// A class that represents the Singapore Dollar currency.
class FiatSgd extends FiatCurrency {
  /// Creates a instance of [FiatSgd] (Singapore Dollar currency).
  ///
  /// ISO 4217 Alpha code: "SGD", ISO 4217 Numeric code: "702".
  const FiatSgd()
      : super(
          code: "SGD",
          name: "Singapore Dollar",
          symbol: r"$",
          alternateSymbols: const [r"S$"],
          disambiguateSymbol: r"S$",
          htmlEntity: r"$",
          codeNumeric: "702",
          namesNative: const ["Singapore dollar"],
          subunit: "Cent",
          unitFirst: true,
          translations: sgdCurrencyTranslations,
        );
}

/// A class that represents the St. Helena Pound currency.
class FiatShp extends FiatCurrency {
  /// Creates a instance of [FiatShp] (St. Helena Pound currency).
  ///
  /// ISO 4217 Alpha code: "SHP", ISO 4217 Numeric code: "654".
  const FiatShp()
      : super(
          code: "SHP",
          name: "St. Helena Pound",
          symbol: "£",
          disambiguateSymbol: "SHP",
          htmlEntity: "&#x00A3;",
          codeNumeric: "654",
          namesNative: const ["Saint Helena pound"],
          subunit: "Penny",
          translations: shpCurrencyTranslations,
        );
}

/// A class that represents the Sierra Leonean Leone currency.
class FiatSle extends FiatCurrency {
  /// Creates a instance of [FiatSle] (Sierra Leonean Leone currency).
  ///
  /// ISO 4217 Alpha code: "SLE", ISO 4217 Numeric code: "925".
  const FiatSle()
      : super(
          code: "SLE",
          name: "Sierra Leonean Leone",
          symbol: "Le",
          disambiguateSymbol: "SLE",
          codeNumeric: "925",
          namesNative: const ["Sierra Leonean leone"],
          smallestDenomination: 1000,
          subunit: "Cent",
          translations: sleCurrencyTranslations,
        );
}

/// A class that represents the Sierra Leonean Leone (Old) currency.
class FiatSll extends FiatCurrency {
  /// Creates a instance of [FiatSll] (Sierra Leonean Leone (Old) currency).
  ///
  /// ISO 4217 Alpha code: "SLL", ISO 4217 Numeric code: "694".
  const FiatSll()
      : super(
          code: "SLL",
          name: "Sierra Leonean Leone (Old)",
          symbol: "Le",
          disambiguateSymbol: "SLL",
          codeNumeric: "694",
          namesNative: const ["Sierra Leonean leone"],
          smallestDenomination: 1000,
          subunit: "Cent",
          translations: sllCurrencyTranslations,
        );
}

/// A class that represents the Somali Shilling currency.
class FiatSos extends FiatCurrency {
  /// Creates a instance of [FiatSos] (Somali Shilling currency).
  ///
  /// ISO 4217 Alpha code: "SOS", ISO 4217 Numeric code: "706".
  const FiatSos()
      : super(
          code: "SOS",
          name: "Somali Shilling",
          symbol: "Sh",
          alternateSymbols: const ["Sh.So"],
          codeNumeric: "706",
          namesNative: const ["Shilin soomaali"],
          subunit: "Cent",
          translations: sosCurrencyTranslations,
        );
}

/// A class that represents the Surinamese Dollar currency.
class FiatSrd extends FiatCurrency {
  /// Creates a instance of [FiatSrd] (Surinamese Dollar currency).
  ///
  /// ISO 4217 Alpha code: "SRD", ISO 4217 Numeric code: "968".
  const FiatSrd()
      : super(
          code: "SRD",
          name: "Surinamese Dollar",
          symbol: r"$",
          disambiguateSymbol: "SRD",
          codeNumeric: "968",
          namesNative: const ["Surinamese dollar"],
          subunit: "Cent",
          translations: srdCurrencyTranslations,
        );
}

/// A class that represents the South Sudanese Pound currency.
class FiatSsp extends FiatCurrency {
  /// Creates a instance of [FiatSsp] (South Sudanese Pound currency).
  ///
  /// ISO 4217 Alpha code: "SSP", ISO 4217 Numeric code: "728".
  const FiatSsp()
      : super(
          code: "SSP",
          name: "South Sudanese Pound",
          symbol: "£",
          disambiguateSymbol: "SSP",
          htmlEntity: "&#x00A3;",
          codeNumeric: "728",
          namesNative: const ["South Sudanese pound"],
          smallestDenomination: 5,
          subunit: "piaster",
          translations: sspCurrencyTranslations,
        );
}

/// A class that represents the São Tomé and Príncipe Second Dobra currency.
class FiatStn extends FiatCurrency {
  /// Creates a instance of [FiatStn] (São Tomé and Príncipe Second Dobra
  /// currency).
  ///
  /// ISO 4217 Alpha code: "STN", ISO 4217 Numeric code: "930".
  const FiatStn()
      : super(
          code: "STN",
          name: "São Tomé and Príncipe Second Dobra",
          symbol: "Db",
          disambiguateSymbol: "STN",
          codeNumeric: "930",
          namesNative: const ["dobra são-tomense"],
          smallestDenomination: 10,
          subunit: "Cêntimo",
          translations: stnCurrencyTranslations,
        );
}

/// A class that represents the Salvadoran Colón currency.
class FiatSvc extends FiatCurrency {
  /// Creates a instance of [FiatSvc] (Salvadoran Colón currency).
  ///
  /// ISO 4217 Alpha code: "SVC", ISO 4217 Numeric code: "222".
  const FiatSvc()
      : super(
          code: "SVC",
          name: "Salvadoran Colón",
          symbol: "₡",
          alternateSymbols: const ["¢"],
          htmlEntity: "&#x20A1;",
          codeNumeric: "222",
          namesNative: const ["Colón salvadoreño"],
          subunit: "Centavo",
          unitFirst: true,
          translations: svcCurrencyTranslations,
        );
}

/// A class that represents the Syrian Pound currency.
class FiatSyp extends FiatCurrency {
  /// Creates a instance of [FiatSyp] (Syrian Pound currency).
  ///
  /// ISO 4217 Alpha code: "SYP", ISO 4217 Numeric code: "760".
  const FiatSyp()
      : super(
          code: "SYP",
          name: "Syrian Pound",
          symbol: "£S",
          alternateSymbols: const ["£", "ل.س", "LS", "الليرة السورية"],
          htmlEntity: "&#x00A3;",
          codeNumeric: "760",
          namesNative: const ["الليرة السورية"],
          smallestDenomination: 100,
          subunit: "Piastre",
          translations: sypCurrencyTranslations,
        );
}

/// A class that represents the Swazi Lilangeni currency.
class FiatSzl extends FiatCurrency {
  /// Creates a instance of [FiatSzl] (Swazi Lilangeni currency).
  ///
  /// ISO 4217 Alpha code: "SZL", ISO 4217 Numeric code: "748".
  const FiatSzl()
      : super(
          code: "SZL",
          name: "Swazi Lilangeni",
          symbol: "E",
          disambiguateSymbol: "SZL",
          codeNumeric: "748",
          namesNative: const ["Swazi lilangeni"],
          subunit: "Cent",
          unitFirst: true,
          translations: szlCurrencyTranslations,
        );
}

/// A class that represents the Thai Baht currency.
class FiatThb extends FiatCurrency {
  /// Creates a instance of [FiatThb] (Thai Baht currency).
  ///
  /// ISO 4217 Alpha code: "THB", ISO 4217 Numeric code: "764".
  const FiatThb()
      : super(
          code: "THB",
          name: "Thai Baht",
          symbol: "฿",
          htmlEntity: "&#x0E3F;",
          codeNumeric: "764",
          namesNative: const ["บาทไทย"],
          subunit: "Satang",
          unitFirst: true,
          translations: thbCurrencyTranslations,
        );
}

/// A class that represents the Tajikistani Somoni currency.
class FiatTjs extends FiatCurrency {
  /// Creates a instance of [FiatTjs] (Tajikistani Somoni currency).
  ///
  /// ISO 4217 Alpha code: "TJS", ISO 4217 Numeric code: "972".
  const FiatTjs()
      : super(
          code: "TJS",
          name: "Tajikistani Somoni",
          symbol: "ЅМ",
          codeNumeric: "972",
          namesNative: const ["Сомонӣ"],
          subunit: "Diram",
          translations: tjsCurrencyTranslations,
        );
}

/// A class that represents the Turkmenistani Manat currency.
class FiatTmt extends FiatCurrency {
  /// Creates a instance of [FiatTmt] (Turkmenistani Manat currency).
  ///
  /// ISO 4217 Alpha code: "TMT", ISO 4217 Numeric code: "934".
  const FiatTmt()
      : super(
          code: "TMT",
          name: "Turkmenistani Manat",
          symbol: "T",
          codeNumeric: "934",
          namesNative: const ["manat"],
          subunit: "Tenge",
          translations: tmtCurrencyTranslations,
        );
}

/// A class that represents the Tunisian Dinar currency.
class FiatTnd extends FiatCurrency {
  /// Creates a instance of [FiatTnd] (Tunisian Dinar currency).
  ///
  /// ISO 4217 Alpha code: "TND", ISO 4217 Numeric code: "788".
  const FiatTnd()
      : super(
          code: "TND",
          name: "Tunisian Dinar",
          symbol: "د.ت",
          alternateSymbols: const ["TD", "DT"],
          codeNumeric: "788",
          namesNative: const ["دينار تونسي"],
          smallestDenomination: 10,
          subunit: "Millime",
          subunitToUnit: 1000,
          translations: tndCurrencyTranslations,
        );
}

/// A class that represents the Tongan Paʻanga currency.
class FiatTop extends FiatCurrency {
  /// Creates a instance of [FiatTop] (Tongan Paʻanga currency).
  ///
  /// ISO 4217 Alpha code: "TOP", ISO 4217 Numeric code: "776".
  const FiatTop()
      : super(
          code: "TOP",
          name: "Tongan Paʻanga",
          symbol: r"T$",
          alternateSymbols: const ["PT"],
          codeNumeric: "776",
          namesNative: const ["Tongan paʻanga"],
          subunit: "Seniti",
          unitFirst: true,
          translations: topCurrencyTranslations,
        );
}

/// A class that represents the Turkish Lira currency.
class FiatTry extends FiatCurrency {
  /// Creates a instance of [FiatTry] (Turkish Lira currency).
  ///
  /// ISO 4217 Alpha code: "TRY", ISO 4217 Numeric code: "949".
  const FiatTry()
      : super(
          code: "TRY",
          name: "Turkish Lira",
          decimalMark: ",",
          thousandsSeparator: ".",
          symbol: "₺",
          alternateSymbols: const ["TL"],
          htmlEntity: "&#8378;",
          codeNumeric: "949",
          namesNative: const ["Türk lirası"],
          subunit: "kuruş",
          unitFirst: true,
          translations: tryCurrencyTranslations,
        );
}

/// A class that represents the Trinidad & Tobago Dollar currency.
class FiatTtd extends FiatCurrency {
  /// Creates a instance of [FiatTtd] (Trinidad & Tobago Dollar currency).
  ///
  /// ISO 4217 Alpha code: "TTD", ISO 4217 Numeric code: "780".
  const FiatTtd()
      : super(
          code: "TTD",
          name: "Trinidad & Tobago Dollar",
          symbol: r"$",
          alternateSymbols: const [r"TT$"],
          disambiguateSymbol: r"TT$",
          htmlEntity: r"$",
          codeNumeric: "780",
          namesNative: const ["Trinidad & Tobago Dollar"],
          subunit: "Cent",
          translations: ttdCurrencyTranslations,
        );
}

/// A class that represents the New Taiwan Dollar currency.
class FiatTwd extends FiatCurrency {
  /// Creates a instance of [FiatTwd] (New Taiwan Dollar currency).
  ///
  /// ISO 4217 Alpha code: "TWD", ISO 4217 Numeric code: "901".
  const FiatTwd()
      : super(
          code: "TWD",
          name: "New Taiwan Dollar",
          symbol: r"$",
          alternateSymbols: const [r"NT$"],
          disambiguateSymbol: r"NT$",
          htmlEntity: r"$",
          codeNumeric: "901",
          namesNative: const ["新臺幣"],
          smallestDenomination: 50,
          subunit: "Cent",
          unitFirst: true,
          translations: twdCurrencyTranslations,
        );
}

/// A class that represents the Tanzanian Shilling currency.
class FiatTzs extends FiatCurrency {
  /// Creates a instance of [FiatTzs] (Tanzanian Shilling currency).
  ///
  /// ISO 4217 Alpha code: "TZS", ISO 4217 Numeric code: "834".
  const FiatTzs()
      : super(
          code: "TZS",
          name: "Tanzanian Shilling",
          symbol: "Sh",
          codeNumeric: "834",
          namesNative: const ["Shilingi ya Tanzania"],
          smallestDenomination: 5000,
          subunit: "Cent",
          unitFirst: true,
          translations: tzsCurrencyTranslations,
        );
}

/// A class that represents the Ukrainian Hryvnia currency.
class FiatUah extends FiatCurrency {
  /// Creates a instance of [FiatUah] (Ukrainian Hryvnia currency).
  ///
  /// ISO 4217 Alpha code: "UAH", ISO 4217 Numeric code: "980".
  const FiatUah()
      : super(
          code: "UAH",
          name: "Ukrainian Hryvnia",
          symbol: "₴",
          htmlEntity: "&#x20B4;",
          codeNumeric: "980",
          namesNative: const ["українська гривня"],
          subunit: "Kopiyka",
          translations: uahCurrencyTranslations,
        );
}

/// A class that represents the Ugandan Shilling currency.
class FiatUgx extends FiatCurrency {
  /// Creates a instance of [FiatUgx] (Ugandan Shilling currency).
  ///
  /// ISO 4217 Alpha code: "UGX", ISO 4217 Numeric code: "800".
  const FiatUgx()
      : super(
          code: "UGX",
          name: "Ugandan Shilling",
          symbol: "USh",
          codeNumeric: "800",
          namesNative: const ["Shilingi ya Uganda"],
          smallestDenomination: 1000,
          subunit: "Cent",
          subunitToUnit: 1,
          translations: ugxCurrencyTranslations,
        );
}

/// A class that represents the United States Dollar currency.
class FiatUsd extends FiatCurrency {
  /// Creates a instance of [FiatUsd] (United States Dollar currency).
  ///
  /// ISO 4217 Alpha code: "USD", ISO 4217 Numeric code: "840".
  const FiatUsd()
      : super(
          code: "USD",
          name: "United States Dollar",
          symbol: r"$",
          alternateSymbols: const [r"US$"],
          disambiguateSymbol: r"US$",
          htmlEntity: r"$",
          codeNumeric: "840",
          namesNative: const ["US Dollars"],
          priority: 1,
          subunit: "Cent",
          unitFirst: true,
          translations: usdCurrencyTranslations,
        );
}

/// A class that represents the Uruguayan Peso currency.
class FiatUyu extends FiatCurrency {
  /// Creates a instance of [FiatUyu] (Uruguayan Peso currency).
  ///
  /// ISO 4217 Alpha code: "UYU", ISO 4217 Numeric code: "858".
  const FiatUyu()
      : super(
          code: "UYU",
          name: "Uruguayan Peso",
          decimalMark: ",",
          thousandsSeparator: ".",
          symbol: r"$U",
          alternateSymbols: const [r"$U"],
          htmlEntity: r"$U",
          codeNumeric: "858",
          namesNative: const ["peso uruguayo"],
          smallestDenomination: 100,
          subunit: "Centésimo",
          unitFirst: true,
          translations: uyuCurrencyTranslations,
        );
}

/// A class that represents the Uzbekistani Som currency.
class FiatUzs extends FiatCurrency {
  /// Creates a instance of [FiatUzs] (Uzbekistani Som currency).
  ///
  /// ISO 4217 Alpha code: "UZS", ISO 4217 Numeric code: "860".
  const FiatUzs()
      : super(
          code: "UZS",
          name: "Uzbekistani Som",
          symbol: "so'm",
          alternateSymbols: const ["so‘m", "сўм", "сум", "s", "с"],
          codeNumeric: "860",
          namesNative: const ["Oʻzbekiston soʻmi"],
          smallestDenomination: 100,
          subunit: "Tiyin",
          translations: uzsCurrencyTranslations,
        );
}

/// A class that represents the Venezuelan Bolívar Soberano currency.
class FiatVes extends FiatCurrency {
  /// Creates a instance of [FiatVes] (Venezuelan Bolívar Soberano currency).
  ///
  /// ISO 4217 Alpha code: "VES", ISO 4217 Numeric code: "928".
  const FiatVes()
      : super(
          code: "VES",
          name: "Venezuelan Bolívar Soberano",
          decimalMark: ",",
          thousandsSeparator: ".",
          symbol: "Bs",
          alternateSymbols: const ["Bs.S"],
          codeNumeric: "928",
          namesNative: const ["Bolívar Soberano"],
          subunit: "Céntimo",
          unitFirst: true,
          translations: vesCurrencyTranslations,
        );
}

/// A class that represents the Vietnamese Dong currency.
class FiatVnd extends FiatCurrency {
  /// Creates a instance of [FiatVnd] (Vietnamese Dong currency).
  ///
  /// ISO 4217 Alpha code: "VND", ISO 4217 Numeric code: "704".
  const FiatVnd()
      : super(
          code: "VND",
          name: "Vietnamese Dong",
          decimalMark: ",",
          thousandsSeparator: ".",
          symbol: "₫",
          htmlEntity: "&#x20AB;",
          codeNumeric: "704",
          namesNative: const ["đồng Việt Nam"],
          smallestDenomination: 100,
          subunit: "Hào",
          subunitToUnit: 1,
          translations: vndCurrencyTranslations,
        );
}

/// A class that represents the Vanuatu Vatu currency.
class FiatVuv extends FiatCurrency {
  /// Creates a instance of [FiatVuv] (Vanuatu Vatu currency).
  ///
  /// ISO 4217 Alpha code: "VUV", ISO 4217 Numeric code: "548".
  const FiatVuv()
      : super(
          code: "VUV",
          name: "Vanuatu Vatu",
          symbol: "Vt",
          codeNumeric: "548",
          namesNative: const ["Vanuatu vatu"],
          subunitToUnit: 1,
          unitFirst: true,
          translations: vuvCurrencyTranslations,
        );
}

/// A class that represents the Samoan Tala currency.
class FiatWst extends FiatCurrency {
  /// Creates a instance of [FiatWst] (Samoan Tala currency).
  ///
  /// ISO 4217 Alpha code: "WST", ISO 4217 Numeric code: "882".
  const FiatWst()
      : super(
          code: "WST",
          name: "Samoan Tala",
          symbol: "T",
          alternateSymbols: const [r"WS$", "SAT", "ST"],
          disambiguateSymbol: r"WS$",
          codeNumeric: "882",
          namesNative: const ["Samoa tālā"],
          smallestDenomination: 10,
          subunit: "Sene",
          translations: wstCurrencyTranslations,
        );
}

/// A class that represents the Central African Cfa Franc currency.
class FiatXaf extends FiatCurrency {
  /// Creates a instance of [FiatXaf] (Central African Cfa Franc currency).
  ///
  /// ISO 4217 Alpha code: "XAF", ISO 4217 Numeric code: "950".
  const FiatXaf()
      : super(
          code: "XAF",
          name: "Central African Cfa Franc",
          symbol: "CFA",
          alternateSymbols: const ["FCFA"],
          disambiguateSymbol: "FCFA",
          codeNumeric: "950",
          namesNative: const ["franc CFA"],
          smallestDenomination: 100,
          subunit: "Centime",
          subunitToUnit: 1,
          translations: xafCurrencyTranslations,
        );
}

/// A class that represents the Silver (Troy Ounce) currency.
class FiatXag extends FiatCurrency {
  /// Creates a instance of [FiatXag] (Silver (Troy Ounce) currency).
  ///
  /// ISO 4217 Alpha code: "XAG", ISO 4217 Numeric code: "961".
  const FiatXag()
      : super(
          code: "XAG",
          name: "Silver (Troy Ounce)",
          symbol: "oz t",
          disambiguateSymbol: "XAG",
          codeNumeric: "961",
          namesNative: const ["Silver"],
          smallestDenomination: 0,
          subunit: "oz",
          subunitToUnit: 1,
          translations: xagCurrencyTranslations,
        );
}

/// A class that represents the Gold (Troy Ounce) currency.
class FiatXau extends FiatCurrency {
  /// Creates a instance of [FiatXau] (Gold (Troy Ounce) currency).
  ///
  /// ISO 4217 Alpha code: "XAU", ISO 4217 Numeric code: "959".
  const FiatXau()
      : super(
          code: "XAU",
          name: "Gold (Troy Ounce)",
          symbol: "oz t",
          disambiguateSymbol: "XAU",
          codeNumeric: "959",
          namesNative: const ["Gold"],
          smallestDenomination: 0,
          subunit: "oz",
          subunitToUnit: 1,
          translations: xauCurrencyTranslations,
        );
}

/// A class that represents the European Composite Unit currency.
class FiatXba extends FiatCurrency {
  /// Creates a instance of [FiatXba] (European Composite Unit currency).
  ///
  /// ISO 4217 Alpha code: "XBA", ISO 4217 Numeric code: "955".
  const FiatXba()
      : super(
          code: "XBA",
          name: "European Composite Unit",
          disambiguateSymbol: "XBA",
          codeNumeric: "955",
          namesNative: const ["European Composite Unit (EURCO)"],
          smallestDenomination: 0,
          subunitToUnit: 1,
          translations: xbaCurrencyTranslations,
        );
}

/// A class that represents the European Monetary Unit currency.
class FiatXbb extends FiatCurrency {
  /// Creates a instance of [FiatXbb] (European Monetary Unit currency).
  ///
  /// ISO 4217 Alpha code: "XBB", ISO 4217 Numeric code: "956".
  const FiatXbb()
      : super(
          code: "XBB",
          name: "European Monetary Unit",
          disambiguateSymbol: "XBB",
          codeNumeric: "956",
          namesNative: const ["European Monetary Unit (E.M.U.-6)"],
          smallestDenomination: 0,
          subunitToUnit: 1,
          translations: xbbCurrencyTranslations,
        );
}

/// A class that represents the European Unit of Account 9 currency.
class FiatXbc extends FiatCurrency {
  /// Creates a instance of [FiatXbc] (European Unit of Account 9 currency).
  ///
  /// ISO 4217 Alpha code: "XBC", ISO 4217 Numeric code: "957".
  const FiatXbc()
      : super(
          code: "XBC",
          name: "European Unit of Account 9",
          disambiguateSymbol: "XBC",
          codeNumeric: "957",
          namesNative: const ["European Unit of Account 9 (E.U.A.-9)"],
          smallestDenomination: 0,
          subunitToUnit: 1,
          translations: xbcCurrencyTranslations,
        );
}

/// A class that represents the European Unit of Account 17 currency.
class FiatXbd extends FiatCurrency {
  /// Creates a instance of [FiatXbd] (European Unit of Account 17 currency).
  ///
  /// ISO 4217 Alpha code: "XBD", ISO 4217 Numeric code: "958".
  const FiatXbd()
      : super(
          code: "XBD",
          name: "European Unit of Account 17",
          disambiguateSymbol: "XBD",
          codeNumeric: "958",
          namesNative: const ["European Unit of Account 17 (E.U.A.-17)"],
          smallestDenomination: 0,
          subunitToUnit: 1,
          translations: xbdCurrencyTranslations,
        );
}

/// A class that represents the East Caribbean Dollar currency.
class FiatXcd extends FiatCurrency {
  /// Creates a instance of [FiatXcd] (East Caribbean Dollar currency).
  ///
  /// ISO 4217 Alpha code: "XCD", ISO 4217 Numeric code: "951".
  const FiatXcd()
      : super(
          code: "XCD",
          name: "East Caribbean Dollar",
          symbol: r"$",
          alternateSymbols: const [r"EC$"],
          disambiguateSymbol: r"EX$",
          htmlEntity: r"$",
          codeNumeric: "951",
          namesNative: const ["East Caribbean dollar"],
          subunit: "Cent",
          unitFirst: true,
          translations: xcdCurrencyTranslations,
        );
}

/// A class that represents the Special Drawing Rights currency.
class FiatXdr extends FiatCurrency {
  /// Creates a instance of [FiatXdr] (Special Drawing Rights currency).
  ///
  /// ISO 4217 Alpha code: "XDR", ISO 4217 Numeric code: "960".
  const FiatXdr()
      : super(
          code: "XDR",
          name: "Special Drawing Rights",
          symbol: "SDR",
          alternateSymbols: const ["XDR"],
          htmlEntity: r"$",
          codeNumeric: "960",
          namesNative: const ["Derechos especiales de giro"],
          smallestDenomination: 0,
          subunitToUnit: 1,
          translations: xdrCurrencyTranslations,
        );
}

/// A class that represents the West African Cfa Franc currency.
class FiatXof extends FiatCurrency {
  /// Creates a instance of [FiatXof] (West African Cfa Franc currency).
  ///
  /// ISO 4217 Alpha code: "XOF", ISO 4217 Numeric code: "952".
  const FiatXof()
      : super(
          code: "XOF",
          name: "West African Cfa Franc",
          symbol: "Fr",
          alternateSymbols: const ["CFA"],
          disambiguateSymbol: "CFA",
          codeNumeric: "952",
          namesNative: const ["CFA Franc BCEAO"],
          smallestDenomination: 100,
          subunit: "Centime",
          subunitToUnit: 1,
          translations: xofCurrencyTranslations,
        );
}

/// A class that represents the Palladium currency.
class FiatXpd extends FiatCurrency {
  /// Creates a instance of [FiatXpd] (Palladium currency).
  ///
  /// ISO 4217 Alpha code: "XPD", ISO 4217 Numeric code: "964".
  const FiatXpd()
      : super(
          code: "XPD",
          name: "Palladium",
          symbol: "oz t",
          disambiguateSymbol: "XPD",
          codeNumeric: "964",
          namesNative: const ["Palladium"],
          smallestDenomination: 0,
          subunit: "oz",
          subunitToUnit: 1,
          translations: xpdCurrencyTranslations,
        );
}

/// A class that represents the Cfp Franc currency.
class FiatXpf extends FiatCurrency {
  /// Creates a instance of [FiatXpf] (Cfp Franc currency).
  ///
  /// ISO 4217 Alpha code: "XPF", ISO 4217 Numeric code: "953".
  const FiatXpf()
      : super(
          code: "XPF",
          name: "Cfp Franc",
          symbol: "Fr",
          alternateSymbols: const ["F"],
          codeNumeric: "953",
          namesNative: const ["franc pacifique"],
          smallestDenomination: 100,
          subunit: "Centime",
          subunitToUnit: 1,
          translations: xpfCurrencyTranslations,
        );
}

/// A class that represents the Platinum currency.
class FiatXpt extends FiatCurrency {
  /// Creates a instance of [FiatXpt] (Platinum currency).
  ///
  /// ISO 4217 Alpha code: "XPT", ISO 4217 Numeric code: "962".
  const FiatXpt()
      : super(
          code: "XPT",
          name: "Platinum",
          symbol: "oz t",
          codeNumeric: "962",
          namesNative: const ["Platinum"],
          smallestDenomination: 0,
          subunitToUnit: 1,
          translations: xptCurrencyTranslations,
        );
}

/// A class that represents the Codes specifically reserved for testing purposes
/// currency.
class FiatXts extends FiatCurrency {
  /// Creates a instance of [FiatXts] (Codes specifically reserved for testing
  /// purposes currency).
  ///
  /// ISO 4217 Alpha code: "XTS", ISO 4217 Numeric code: "963".
  const FiatXts()
      : super(
          code: "XTS",
          name: "Codes specifically reserved for testing purposes",
          codeNumeric: "963",
          namesNative: const ["Test currency"],
          smallestDenomination: 0,
          subunitToUnit: 1,
          translations: xtsCurrencyTranslations,
        );
}

/// A class that represents the Yemeni Rial currency.
class FiatYer extends FiatCurrency {
  /// Creates a instance of [FiatYer] (Yemeni Rial currency).
  ///
  /// ISO 4217 Alpha code: "YER", ISO 4217 Numeric code: "886".
  const FiatYer()
      : super(
          code: "YER",
          name: "Yemeni Rial",
          symbol: "﷼",
          htmlEntity: "&#xFDFC;",
          codeNumeric: "886",
          namesNative: const ["ريال يمني"],
          smallestDenomination: 100,
          subunit: "Fils",
          translations: yerCurrencyTranslations,
        );
}

/// A class that represents the South African Rand currency.
class FiatZar extends FiatCurrency {
  /// Creates a instance of [FiatZar] (South African Rand currency).
  ///
  /// ISO 4217 Alpha code: "ZAR", ISO 4217 Numeric code: "710".
  const FiatZar()
      : super(
          code: "ZAR",
          name: "South African Rand",
          decimalMark: ",",
          thousandsSeparator: " ",
          symbol: "R",
          htmlEntity: "&#x0052;",
          codeNumeric: "710",
          namesNative: const ["Rand"],
          smallestDenomination: 10,
          subunit: "Cent",
          unitFirst: true,
          translations: zarCurrencyTranslations,
        );
}

/// A class that represents the Zambian Kwacha currency.
class FiatZmw extends FiatCurrency {
  /// Creates a instance of [FiatZmw] (Zambian Kwacha currency).
  ///
  /// ISO 4217 Alpha code: "ZMW", ISO 4217 Numeric code: "967".
  const FiatZmw()
      : super(
          code: "ZMW",
          name: "Zambian Kwacha",
          symbol: "K",
          disambiguateSymbol: "ZMW",
          codeNumeric: "967",
          namesNative: const ["Zambian kwacha"],
          smallestDenomination: 5,
          subunit: "Ngwee",
          unitFirst: true,
          translations: zmwCurrencyTranslations,
        );
}

/// A class that represents the Zimbabwean Dollar currency.
class FiatZwl extends FiatCurrency {
  /// Creates a instance of [FiatZwl] (Zimbabwean Dollar currency).
  ///
  /// ISO 4217 Alpha code: "ZWL", ISO 4217 Numeric code: "932".
  const FiatZwl()
      : super(
          code: "ZWL",
          name: "Zimbabwean Dollar",
          decimalMark: ",",
          thousandsSeparator: " ",
          symbol: r"Z$",
          codeNumeric: "932",
          namesNative: const ["Zimbabwe Dollar"],
          subunit: "Cent",
          unitFirst: true,
          translations: zwlCurrencyTranslations,
        );
}
