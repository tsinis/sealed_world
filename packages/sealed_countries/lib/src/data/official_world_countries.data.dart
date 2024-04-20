// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: lines_longer_than_80_chars

import "package:sealed_currencies/sealed_currencies.dart";

import "../../country_translations.dart";
import "../model/country/country.dart";
import "../model/country/submodels/capital.dart";
import "../model/country/submodels/capital_info.dart";
import "../model/country/submodels/car.dart";
import "../model/country/submodels/country_name.dart";
import "../model/country/submodels/demonyms.dart";
import "../model/country/submodels/gini.dart";
import "../model/country/submodels/idd.dart";
import "../model/country/submodels/lat_lng.dart";
import "../model/country/submodels/maps.dart";
import "../model/country/submodels/postal_code.dart";
import "../model/country/submodels/weekday.dart";
import "geo/continental_sections.data.dart";
import "geo/continents.data.dart";
import "regional_bloc/regional_bloc.data.dart";

/// A class that represents the Aruba country.
class CountryAbw extends WorldCountry {
  /// Creates a instance of [CountryAbw] (Aruba country).
  ///
  /// ISO 3166-1 Alpha-3 code: "ABW", ISO 3166-1 Alpha-2 code: "AW".
  const CountryAbw()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Aruba",
            common: "Aruba",
          ),
          namesNative: const [
            CountryName(
              language: LangNld(),
              official: "Aruba",
              common: "Aruba",
            ),
          ],
          tld: const [".aw"],
          code: "ABW",
          codeNumeric: "533",
          codeShort: "AW",
          cioc: "ARU",
          independent: false,
          unMember: false,
          currencies: const [FiatAwg()],
          idd: const Idd(root: 2, suffixes: [97]),
          altSpellings: const ["AW"],
          continent: const Americas(),
          subregion: const Caribbean(),
          languages: const [LangNld()],
          translations: abwCountryTranslations,
          latLng: const LatLng(12.5, -69.96666666),
          landlocked: false,
          bordersCodes: null,
          areaMetric: 180,
          demonyms: const [
            Demonyms(language: LangEng(), female: "Aruban", male: "Aruban"),
            Demonyms(language: LangFra(), female: "Arubaise", male: "Arubais"),
          ],
          emoji: "🇦🇼",
          maps: const Maps(
            googleMaps: "8hopbQqifHAgyZyg8",
            openStreetMaps: "relation/1231749",
          ),
          population: 106766,
          gini: null,
          fifa: "ARU",
          car: const Car(sign: "A"),
          timezones: const ["UTC-04:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Oranjestad"),
            latLng: LatLng(12.52, -70.03),
          ),
          postalCode: null,
          regionalBlocs: null,
        );
}

/// A class that represents the Afghanistan country.
class CountryAfg extends WorldCountry {
  /// Creates a instance of [CountryAfg] (Afghanistan country).
  ///
  /// ISO 3166-1 Alpha-3 code: "AFG", ISO 3166-1 Alpha-2 code: "AF".
  const CountryAfg()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Islamic Republic of Afghanistan",
            common: "Afghanistan",
          ),
          namesNative: const [
            CountryName(
              language: LangPus(),
              official: "د افغانستان اسلامي جمهوریت",
              common: "افغانستان",
            ),
            CountryName(
              language: LangTuk(),
              official: "Owganystan Yslam Respublikasy",
              common: "Owganystan",
            ),
          ],
          tld: const [".af"],
          code: "AFG",
          codeNumeric: "004",
          codeShort: "AF",
          cioc: "AFG",
          independent: true,
          unMember: true,
          currencies: const [FiatAfn()],
          idd: const Idd(root: 9, suffixes: [3]),
          altSpellings: const ["AF", "Afġānistān"],
          continent: const Asia(),
          subregion: const SouthernAsia(),
          languages: const [LangPus(), LangTuk()],
          translations: afgCountryTranslations,
          latLng: const LatLng(33, 65),
          landlocked: true,
          bordersCodes: const ["Irn", "Pak", "Tkm", "Uzb", "Tjk", "Chn"],
          areaMetric: 652230,
          demonyms: const [
            Demonyms(language: LangEng(), female: "Afghan", male: "Afghan"),
            Demonyms(language: LangFra(), female: "Afghane", male: "Afghan"),
          ],
          emoji: "🇦🇫",
          maps: const Maps(
            googleMaps: "BXBGw7yUUFknCfva9",
            openStreetMaps: "relation/303427",
          ),
          population: 40218234,
          gini: null,
          fifa: "AFG",
          car: const Car(sign: "AFG"),
          timezones: const ["UTC+04:30"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Kabul"),
            latLng: LatLng(34.52, 69.18),
          ),
          postalCode: null,
          regionalBlocs: const [BlocSAARC()],
        );
}

/// A class that represents the Angola country.
class CountryAgo extends WorldCountry {
  /// Creates a instance of [CountryAgo] (Angola country).
  ///
  /// ISO 3166-1 Alpha-3 code: "AGO", ISO 3166-1 Alpha-2 code: "AO".
  const CountryAgo()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Republic of Angola",
            common: "Angola",
          ),
          namesNative: const [
            CountryName(
              language: LangPor(),
              official: "República de Angola",
              common: "Angola",
            ),
          ],
          tld: const [".ao"],
          code: "AGO",
          codeNumeric: "024",
          codeShort: "AO",
          cioc: "ANG",
          independent: true,
          unMember: true,
          currencies: const [FiatAoa()],
          idd: const Idd(root: 2, suffixes: [44]),
          altSpellings: const [
            "AO",
            "República de Angola",
            "ʁɛpublika de an'ɡɔla",
          ],
          continent: const Africa(),
          subregion: const MiddleAfrica(),
          languages: const [LangPor()],
          translations: agoCountryTranslations,
          latLng: const LatLng(-12.5, 18.5),
          landlocked: false,
          bordersCodes: const ["Cog", "Cod", "Zmb", "Nam"],
          areaMetric: 1246700,
          demonyms: const [
            Demonyms(language: LangEng(), female: "Angolan", male: "Angolan"),
            Demonyms(
              language: LangFra(),
              female: "Angolaise",
              male: "Angolais",
            ),
          ],
          emoji: "🇦🇴",
          maps: const Maps(
            googleMaps: "q42Qbf1BmQL3fuZg9",
            openStreetMaps: "relation/195267",
          ),
          population: 32866268,
          gini: const Gini(year: 2018, coefficient: 51.3),
          fifa: "ANG",
          car: const Car(sign: "ANG"),
          timezones: const ["UTC+01:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Luanda"),
            latLng: LatLng(-8.83, 13.22),
          ),
          postalCode: null,
          regionalBlocs: const [BlocAU()],
        );
}

/// A class that represents the Anguilla country.
class CountryAia extends WorldCountry {
  /// Creates a instance of [CountryAia] (Anguilla country).
  ///
  /// ISO 3166-1 Alpha-3 code: "AIA", ISO 3166-1 Alpha-2 code: "AI".
  const CountryAia()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Anguilla",
            common: "Anguilla",
          ),
          namesNative: const [
            CountryName(
              language: LangEng(),
              official: "Anguilla",
              common: "Anguilla",
            ),
          ],
          tld: const [".ai"],
          code: "AIA",
          codeNumeric: "660",
          codeShort: "AI",
          cioc: null,
          independent: false,
          unMember: false,
          currencies: const [FiatXcd()],
          idd: const Idd(root: 1, suffixes: [264]),
          altSpellings: const ["AI"],
          continent: const Americas(),
          subregion: const Caribbean(),
          languages: const [LangEng()],
          translations: aiaCountryTranslations,
          latLng: const LatLng(18.25, -63.16666666),
          landlocked: false,
          bordersCodes: null,
          areaMetric: 91,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Anguillian",
              male: "Anguillian",
            ),
            Demonyms(
              language: LangFra(),
              female: "Anguillane",
              male: "Anguillan",
            ),
          ],
          emoji: "🇦🇮",
          maps: const Maps(
            googleMaps: "3KgLnEyN7amdno2p9",
            openStreetMaps: "relation/2177161",
          ),
          population: 13452,
          gini: null,
          fifa: "AIA",
          car: const Car(sign: "GB", isRightSide: false),
          timezones: const ["UTC-04:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("The Valley"),
            latLng: LatLng(18.22, -63.05),
          ),
          postalCode: null,
          regionalBlocs: null,
        );
}

/// A class that represents the Åland Islands country.
class CountryAla extends WorldCountry {
  /// Creates a instance of [CountryAla] (Åland Islands country).
  ///
  /// ISO 3166-1 Alpha-3 code: "ALA", ISO 3166-1 Alpha-2 code: "AX".
  const CountryAla()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Åland Islands",
            common: "Åland Islands",
          ),
          namesNative: const [
            CountryName(
              language: LangSwe(),
              official: "Landskapet Åland",
              common: "Åland",
            ),
          ],
          tld: const [".ax"],
          code: "ALA",
          codeNumeric: "248",
          codeShort: "AX",
          cioc: null,
          independent: false,
          unMember: false,
          currencies: const [FiatEur()],
          idd: const Idd(root: 3, suffixes: [5818]),
          altSpellings: const ["AX", "Aaland", "Aland", "Ahvenanmaa"],
          continent: const Europe(),
          subregion: const NorthernEurope(),
          languages: const [LangSwe()],
          translations: alaCountryTranslations,
          latLng: const LatLng(60.116667, 19.9),
          landlocked: false,
          bordersCodes: null,
          areaMetric: 1580,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Ålandish",
              male: "Ålandish",
            ),
            Demonyms(
              language: LangFra(),
              female: "Ålandaise",
              male: "Ålandais",
            ),
          ],
          emoji: "🇦🇽",
          maps: const Maps(
            googleMaps: "ewFb3vYsfUmVCoSb8",
            openStreetMaps: "relation/1650407",
          ),
          population: 29458,
          gini: null,
          fifa: null,
          car: const Car(),
          timezones: const ["UTC+02:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Mariehamn"),
            latLng: LatLng(60.12, 19.9),
          ),
          postalCode: null,
          regionalBlocs: const [BlocEU()],
        );
}

/// A class that represents the Albania country.
class CountryAlb extends WorldCountry {
  /// Creates a instance of [CountryAlb] (Albania country).
  ///
  /// ISO 3166-1 Alpha-3 code: "ALB", ISO 3166-1 Alpha-2 code: "AL".
  const CountryAlb()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Republic of Albania",
            common: "Albania",
          ),
          namesNative: const [
            CountryName(
              language: LangSqi(),
              official: "Republika e Shqipërisë",
              common: "Shqipëria",
            ),
          ],
          tld: const [".al"],
          code: "ALB",
          codeNumeric: "008",
          codeShort: "AL",
          cioc: "ALB",
          independent: true,
          unMember: true,
          currencies: const [FiatAll()],
          idd: const Idd(root: 3, suffixes: [55]),
          altSpellings: const ["AL", "Shqipëri", "Shqipëria", "Shqipnia"],
          continent: const Europe(),
          subregion: const SouthwestEurope(),
          languages: const [LangSqi()],
          translations: albCountryTranslations,
          latLng: const LatLng(41, 20),
          landlocked: false,
          bordersCodes: const ["Mne", "Grc", "Mkd", "Unk"],
          areaMetric: 28748,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Albanian",
              male: "Albanian",
            ),
            Demonyms(
              language: LangFra(),
              female: "Albanaise",
              male: "Albanais",
            ),
          ],
          emoji: "🇦🇱",
          maps: const Maps(
            googleMaps: "BzN9cTuj68ZA8SyZ8",
            openStreetMaps: "relation/53292",
          ),
          population: 2837743,
          gini: const Gini(year: 2017, coefficient: 33.2),
          fifa: "ALB",
          car: const Car(sign: "AL"),
          timezones: const ["UTC+01:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Tirana"),
            latLng: LatLng(41.32, 19.82),
          ),
          postalCode: null,
          regionalBlocs: const [BlocCEFTA()],
        );
}

/// A class that represents the Andorra country.
class CountryAnd extends WorldCountry {
  /// Creates a instance of [CountryAnd] (Andorra country).
  ///
  /// ISO 3166-1 Alpha-3 code: "AND", ISO 3166-1 Alpha-2 code: "AD".
  const CountryAnd()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Principality of Andorra",
            common: "Andorra",
          ),
          namesNative: const [
            CountryName(
              language: LangCat(),
              official: "Principat d'Andorra",
              common: "Andorra",
            ),
          ],
          tld: const [".ad"],
          code: "AND",
          codeNumeric: "020",
          codeShort: "AD",
          cioc: "AND",
          independent: true,
          unMember: true,
          currencies: const [FiatEur()],
          idd: const Idd(root: 3, suffixes: [76]),
          altSpellings: const [
            "AD",
            "Principality of Andorra",
            "Principat d'Andorra",
          ],
          continent: const Europe(),
          subregion: const SouthernEurope(),
          languages: const [LangCat()],
          translations: andCountryTranslations,
          latLng: const LatLng(42.5, 1.5),
          landlocked: true,
          bordersCodes: const ["Fra", "Esp"],
          areaMetric: 468,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Andorran",
              male: "Andorran",
            ),
            Demonyms(
              language: LangFra(),
              female: "Andorrane",
              male: "Andorran",
            ),
          ],
          emoji: "🇦🇩",
          maps: const Maps(
            googleMaps: "JqAnacWE2qEznKgw7",
            openStreetMaps: "relation/9407",
          ),
          population: 77265,
          gini: null,
          fifa: "AND",
          car: const Car(sign: "AND"),
          timezones: const ["UTC+01:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Andorra la Vella"),
            latLng: LatLng(42.5, 1.52),
          ),
          postalCode: const PostalCode(
            format: "AD###",
            regExpPattern: r"^(?:AD)*(\d{3})$",
          ),
          regionalBlocs: null,
        );
}

/// A class that represents the United Arab Emirates country.
class CountryAre extends WorldCountry {
  /// Creates a instance of [CountryAre] (United Arab Emirates country).
  ///
  /// ISO 3166-1 Alpha-3 code: "ARE", ISO 3166-1 Alpha-2 code: "AE".
  const CountryAre()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "United Arab Emirates",
            common: "United Arab Emirates",
          ),
          namesNative: const [
            CountryName(
              language: LangAra(),
              official: "الإمارات العربية المتحدة",
              common: "دولة الإمارات العربية المتحدة",
            ),
          ],
          tld: const [".ae", "امارات."],
          code: "ARE",
          codeNumeric: "784",
          codeShort: "AE",
          cioc: "UAE",
          independent: true,
          unMember: true,
          currencies: const [FiatAed()],
          idd: const Idd(root: 9, suffixes: [71]),
          altSpellings: const ["AE", "UAE", "Emirates"],
          continent: const Asia(),
          subregion: const WesternAsia(),
          languages: const [LangAra()],
          translations: areCountryTranslations,
          latLng: const LatLng(24, 54),
          landlocked: false,
          bordersCodes: const ["Omn", "Sau"],
          areaMetric: 83600,
          demonyms: const [
            Demonyms(language: LangEng(), female: "Emirati", male: "Emirati"),
            Demonyms(
              language: LangFra(),
              female: "Emirienne",
              male: "Emirien",
            ),
          ],
          emoji: "🇦🇪",
          maps: const Maps(
            googleMaps: "AZZTDA6GzVAnKMVd8",
            openStreetMaps: "relation/307763",
          ),
          population: 9890400,
          gini: const Gini(year: 2018, coefficient: 26),
          fifa: "UAE",
          car: const Car(sign: "UAE"),
          timezones: const ["UTC+04:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.sunday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Abu Dhabi"),
            latLng: LatLng(24.47, 54.37),
          ),
          postalCode: null,
          regionalBlocs: const [BlocAL()],
        );
}

/// A class that represents the Argentina country.
class CountryArg extends WorldCountry {
  /// Creates a instance of [CountryArg] (Argentina country).
  ///
  /// ISO 3166-1 Alpha-3 code: "ARG", ISO 3166-1 Alpha-2 code: "AR".
  const CountryArg()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Argentine Republic",
            common: "Argentina",
          ),
          namesNative: const [
            CountryName(
              language: LangGrn(),
              official: "Argentine Republic",
              common: "Argentina",
            ),
            CountryName(
              language: LangSpa(),
              official: "República Argentina",
              common: "Argentina",
            ),
          ],
          tld: const [".ar"],
          code: "ARG",
          codeNumeric: "032",
          codeShort: "AR",
          cioc: "ARG",
          independent: true,
          unMember: true,
          currencies: const [FiatArs()],
          idd: const Idd(root: 5, suffixes: [4]),
          altSpellings: const [
            "AR",
            "Argentine Republic",
            "República Argentina",
          ],
          continent: const Americas(),
          subregion: const SouthAmerica(),
          languages: const [LangGrn(), LangSpa()],
          translations: argCountryTranslations,
          latLng: const LatLng(-34, -64),
          landlocked: false,
          bordersCodes: const ["Bol", "Bra", "Chl", "Pry", "Ury"],
          areaMetric: 2780400,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Argentine",
              male: "Argentine",
            ),
            Demonyms(
              language: LangFra(),
              female: "Argentine",
              male: "Argentin",
            ),
          ],
          emoji: "🇦🇷",
          maps: const Maps(
            googleMaps: "Z9DXNxhf2o93kvyc6",
            openStreetMaps: "relation/286393",
          ),
          population: 45376763,
          gini: const Gini(year: 2019, coefficient: 42.9),
          fifa: "ARG",
          car: const Car(sign: "RA"),
          timezones: const ["UTC-03:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Buenos Aires"),
            latLng: LatLng(-34.58, -58.67),
          ),
          postalCode: const PostalCode(
            format: "@####@@@",
            regExpPattern: r"^([A-Z]\d{4}[A-Z]{3})$",
          ),
          regionalBlocs: const [BlocUSAN()],
        );
}

/// A class that represents the Armenia country.
class CountryArm extends WorldCountry {
  /// Creates a instance of [CountryArm] (Armenia country).
  ///
  /// ISO 3166-1 Alpha-3 code: "ARM", ISO 3166-1 Alpha-2 code: "AM".
  const CountryArm()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Republic of Armenia",
            common: "Armenia",
          ),
          namesNative: const [
            CountryName(
              language: LangHye(),
              official: "Հայաստանի Հանրապետություն",
              common: "Հայաստան",
            ),
          ],
          tld: const [".am"],
          code: "ARM",
          codeNumeric: "051",
          codeShort: "AM",
          cioc: "ARM",
          independent: true,
          unMember: true,
          currencies: const [FiatAmd()],
          idd: const Idd(root: 3, suffixes: [74]),
          altSpellings: const [
            "AM",
            "Hayastan",
            "Republic of Armenia",
            "Հայաստանի Հանրապետություն",
          ],
          continent: const Asia(),
          subregion: const WesternAsia(),
          languages: const [LangHye()],
          translations: armCountryTranslations,
          latLng: const LatLng(40, 45),
          landlocked: true,
          bordersCodes: const ["Aze", "Geo", "Irn", "Tur"],
          areaMetric: 29743,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Armenian",
              male: "Armenian",
            ),
            Demonyms(
              language: LangFra(),
              female: "Arménienne",
              male: "Arménien",
            ),
          ],
          emoji: "🇦🇲",
          maps: const Maps(
            googleMaps: "azWUtK9bUQYEyccbA",
            openStreetMaps: "relation/364066",
          ),
          population: 2963234,
          gini: const Gini(year: 2019, coefficient: 29.9),
          fifa: "ARM",
          car: const Car(sign: "AM"),
          timezones: const ["UTC+04:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Yerevan"),
            latLng: LatLng(40.17, 44.5),
          ),
          postalCode:
              const PostalCode(format: "######", regExpPattern: r"^(\d{6})$"),
          regionalBlocs: const [BlocEEU()],
        );
}

/// A class that represents the American Samoa country.
class CountryAsm extends WorldCountry {
  /// Creates a instance of [CountryAsm] (American Samoa country).
  ///
  /// ISO 3166-1 Alpha-3 code: "ASM", ISO 3166-1 Alpha-2 code: "AS".
  const CountryAsm()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "American Samoa",
            common: "American Samoa",
          ),
          namesNative: const [
            CountryName(
              language: LangEng(),
              official: "American Samoa",
              common: "American Samoa",
            ),
            CountryName(
              language: LangSmo(),
              official: "Sāmoa Amelika",
              common: "Sāmoa Amelika",
            ),
          ],
          tld: const [".as"],
          code: "ASM",
          codeNumeric: "016",
          codeShort: "AS",
          cioc: "ASA",
          independent: false,
          unMember: false,
          currencies: const [FiatUsd()],
          idd: const Idd(root: 1, suffixes: [684]),
          altSpellings: const [
            "AS",
            "Amerika Sāmoa",
            "Amelika Sāmoa",
            "Sāmoa Amelika",
          ],
          continent: const Oceania(),
          subregion: const Polynesia(),
          languages: const [LangEng(), LangSmo()],
          translations: asmCountryTranslations,
          latLng: const LatLng(-14.33333333, -170),
          landlocked: false,
          bordersCodes: null,
          areaMetric: 199,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "American Samoan",
              male: "American Samoan",
            ),
            Demonyms(language: LangFra(), female: "Samoane", male: "Samoan"),
          ],
          emoji: "🇦🇸",
          maps: const Maps(
            googleMaps: "Re9ePMjwP1sFCBFA6",
            openStreetMaps: "relation/2177187",
          ),
          population: 55197,
          gini: null,
          fifa: "ASA",
          car: const Car(sign: "USA"),
          timezones: const ["UTC-11:00"],
          hasCoatOfArms: false,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Pago Pago"),
            latLng: LatLng(-14.27, -170.7),
          ),
          postalCode: null,
          regionalBlocs: null,
        );
}

/// A class that represents the Antarctica country.
class CountryAta extends WorldCountry {
  /// Creates a instance of [CountryAta] (Antarctica country).
  ///
  /// ISO 3166-1 Alpha-3 code: "ATA", ISO 3166-1 Alpha-2 code: "AQ".
  const CountryAta()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Antarctica",
            common: "Antarctica",
          ),
          namesNative: const [
            CountryName(
              language: LangEng(),
              official: "Antarctica",
              common: "Antarctica",
            ),
          ],
          tld: const [".aq"],
          code: "ATA",
          codeNumeric: "010",
          codeShort: "AQ",
          cioc: null,
          independent: false,
          unMember: false,
          currencies: null,
          idd: const Idd(root: 6, suffixes: [72]),
          altSpellings: const ["AQ"],
          continent: const Antarctica(),
          subregion: null,
          languages: const [LangEng()],
          translations: ataCountryTranslations,
          latLng: const LatLng(-90, 0),
          landlocked: false,
          bordersCodes: null,
          areaMetric: 14000000,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Antarctican",
              male: "Antarctican",
            ),
            Demonyms(
              language: LangFra(),
              female: "Antarcticaine",
              male: "Antarcticain",
            ),
          ],
          emoji: "🇦🇶",
          maps: const Maps(
            googleMaps: "kyBuJriu4itiXank7",
            openStreetMaps: "node/36966060",
          ),
          population: 1000,
          gini: null,
          fifa: null,
          car: const Car(),
          timezones: const [
            "UTC-03:00",
            "UTC+03:00",
            "UTC+05:00",
            "UTC+06:00",
            "UTC+07:00",
            "UTC+08:00",
            "UTC+10:00",
            "UTC+12:00",
          ],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: null,
          postalCode: null,
          regionalBlocs: null,
        );
}

/// A class that represents the French Southern and Antarctic Lands country.
class CountryAtf extends WorldCountry {
  /// Creates a instance of [CountryAtf] (French Southern and Antarctic Lands country).
  ///
  /// ISO 3166-1 Alpha-3 code: "ATF", ISO 3166-1 Alpha-2 code: "TF".
  const CountryAtf()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Territory of the French Southern and Antarctic Lands",
            common: "French Southern and Antarctic Lands",
          ),
          namesNative: const [
            CountryName(
              language: LangFra(),
              official:
                  "Territoire des Terres australes et antarctiques françaises",
              common: "Terres australes et antarctiques françaises",
            ),
          ],
          tld: const [".tf"],
          code: "ATF",
          codeNumeric: "260",
          codeShort: "TF",
          cioc: null,
          independent: false,
          unMember: false,
          currencies: const [FiatEur()],
          idd: const Idd(root: 2, suffixes: [62]),
          altSpellings: const ["TF", "French Southern Territories"],
          continent: const Antarctica(),
          subregion: null,
          languages: const [LangFra()],
          translations: atfCountryTranslations,
          latLng: const LatLng(-49.25, 69.167),
          landlocked: false,
          bordersCodes: null,
          areaMetric: 7747,
          demonyms: const [
            Demonyms(language: LangEng(), female: "French", male: "French"),
            Demonyms(
              language: LangFra(),
              female: "Française",
              male: "Français",
            ),
          ],
          emoji: "🇹🇫",
          maps: const Maps(
            googleMaps: "6ua6CX1m4w1xF2Em7",
            openStreetMaps: "relation/2186658",
          ),
          population: 400,
          gini: null,
          fifa: null,
          car: const Car(),
          timezones: const ["UTC+05:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Port-aux-Français"),
            latLng: LatLng(48.81, -1.4),
          ),
          postalCode: null,
          regionalBlocs: const [BlocAU()],
        );
}

/// A class that represents the Antigua and Barbuda country.
class CountryAtg extends WorldCountry {
  /// Creates a instance of [CountryAtg] (Antigua and Barbuda country).
  ///
  /// ISO 3166-1 Alpha-3 code: "ATG", ISO 3166-1 Alpha-2 code: "AG".
  const CountryAtg()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Antigua and Barbuda",
            common: "Antigua and Barbuda",
          ),
          namesNative: const [
            CountryName(
              language: LangEng(),
              official: "Antigua and Barbuda",
              common: "Antigua and Barbuda",
            ),
          ],
          tld: const [".ag"],
          code: "ATG",
          codeNumeric: "028",
          codeShort: "AG",
          cioc: "ANT",
          independent: true,
          unMember: true,
          currencies: const [FiatXcd()],
          idd: const Idd(root: 1, suffixes: [268]),
          altSpellings: const ["AG"],
          continent: const Americas(),
          subregion: const Caribbean(),
          languages: const [LangEng()],
          translations: atgCountryTranslations,
          latLng: const LatLng(17.05, -61.8),
          landlocked: false,
          bordersCodes: null,
          areaMetric: 442,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Antiguan, Barbudan",
              male: "Antiguan, Barbudan",
            ),
            Demonyms(
              language: LangFra(),
              female: "Antiguaise et barbudienne",
              male: "Antiguaise et barbudien",
            ),
          ],
          emoji: "🇦🇬",
          maps: const Maps(
            googleMaps: "fnye4wGJ1RzC9jpX9",
            openStreetMaps: "relation/536900",
          ),
          population: 97928,
          gini: null,
          fifa: "ATG",
          car: const Car(sign: "AG", isRightSide: false),
          timezones: const ["UTC-04:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Saint John's"),
            latLng: LatLng(17.12, -61.85),
          ),
          postalCode: null,
          regionalBlocs: const [BlocCARICOM()],
        );
}

/// A class that represents the Australia country.
class CountryAus extends WorldCountry {
  /// Creates a instance of [CountryAus] (Australia country).
  ///
  /// ISO 3166-1 Alpha-3 code: "AUS", ISO 3166-1 Alpha-2 code: "AU".
  const CountryAus()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Commonwealth of Australia",
            common: "Australia",
          ),
          namesNative: const [
            CountryName(
              language: LangEng(),
              official: "Commonwealth of Australia",
              common: "Australia",
            ),
          ],
          tld: const [".au"],
          code: "AUS",
          codeNumeric: "036",
          codeShort: "AU",
          cioc: "AUS",
          independent: true,
          unMember: true,
          currencies: const [FiatAud()],
          idd: const Idd(root: 6, suffixes: [1]),
          altSpellings: const ["AU"],
          continent: const Oceania(),
          subregion: const AustraliaAndNewZealand(),
          languages: const [LangEng()],
          translations: ausCountryTranslations,
          latLng: const LatLng(-27, 133),
          landlocked: false,
          bordersCodes: null,
          areaMetric: 7692024,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Australian",
              male: "Australian",
            ),
            Demonyms(
              language: LangFra(),
              female: "Australienne",
              male: "Australien",
            ),
          ],
          emoji: "🇦🇺",
          maps: const Maps(
            googleMaps: "DcjaDa7UbhnZTndH6",
            openStreetMaps: "relation/80500",
          ),
          population: 25687041,
          gini: const Gini(year: 2014, coefficient: 34.4),
          fifa: "AUS",
          car: const Car(sign: "AUS", isRightSide: false),
          timezones: const [
            "UTC+05:00",
            "UTC+06:30",
            "UTC+07:00",
            "UTC+08:00",
            "UTC+09:30",
            "UTC+10:00",
            "UTC+10:30",
            "UTC+11:30",
          ],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Canberra"),
            latLng: LatLng(-35.27, 149.13),
          ),
          postalCode:
              const PostalCode(format: "####", regExpPattern: r"^(\d{4})$"),
          regionalBlocs: null,
        );
}

/// A class that represents the Austria country.
class CountryAut extends WorldCountry {
  /// Creates a instance of [CountryAut] (Austria country).
  ///
  /// ISO 3166-1 Alpha-3 code: "AUT", ISO 3166-1 Alpha-2 code: "AT".
  const CountryAut()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Republic of Austria",
            common: "Austria",
          ),
          namesNative: const [
            CountryName(
              language: LangDeu(),
              official: "Republik Österreich",
              common: "Österreich",
            ),
          ],
          tld: const [".at"],
          code: "AUT",
          codeNumeric: "040",
          codeShort: "AT",
          cioc: "AUT",
          independent: true,
          unMember: true,
          currencies: const [FiatEur()],
          idd: const Idd(root: 4, suffixes: [3]),
          altSpellings: const ["AT", "Osterreich", "Oesterreich"],
          continent: const Europe(),
          subregion: const CentralEurope(),
          languages: const [LangDeu()],
          translations: autCountryTranslations,
          latLng: const LatLng(47.33333333, 13.33333333),
          landlocked: true,
          bordersCodes: const [
            "Cze",
            "Deu",
            "Hun",
            "Ita",
            "Lie",
            "Svk",
            "Svn",
            "Che",
          ],
          areaMetric: 83871,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Austrian",
              male: "Austrian",
            ),
            Demonyms(
              language: LangFra(),
              female: "Autrichienne",
              male: "Autrichien",
            ),
          ],
          emoji: "🇦🇹",
          maps: const Maps(
            googleMaps: "pCWpWQhznHyRzQcu9",
            openStreetMaps: "relation/16239",
          ),
          population: 8917205,
          gini: const Gini(year: 2018, coefficient: 30.8),
          fifa: "AUT",
          car: const Car(sign: "A"),
          timezones: const ["UTC+01:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Vienna"),
            latLng: LatLng(48.2, 16.37),
          ),
          postalCode:
              const PostalCode(format: "####", regExpPattern: r"^(\d{4})$"),
          regionalBlocs: const [BlocEU()],
        );
}

/// A class that represents the Azerbaijan country.
class CountryAze extends WorldCountry {
  /// Creates a instance of [CountryAze] (Azerbaijan country).
  ///
  /// ISO 3166-1 Alpha-3 code: "AZE", ISO 3166-1 Alpha-2 code: "AZ".
  const CountryAze()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Republic of Azerbaijan",
            common: "Azerbaijan",
          ),
          namesNative: const [
            CountryName(
              language: LangAze(),
              official: "Azərbaycan Respublikası",
              common: "Azərbaycan",
            ),
          ],
          tld: const [".az"],
          code: "AZE",
          codeNumeric: "031",
          codeShort: "AZ",
          cioc: "AZE",
          independent: true,
          unMember: true,
          currencies: const [FiatAzn()],
          idd: const Idd(root: 9, suffixes: [94]),
          altSpellings: const [
            "AZ",
            "Republic of Azerbaijan",
            "Azərbaycan Respublikası",
          ],
          continent: const Asia(),
          subregion: const WesternAsia(),
          languages: const [LangAze()],
          translations: azeCountryTranslations,
          latLng: const LatLng(40.5, 47.5),
          landlocked: true,
          bordersCodes: const ["Arm", "Geo", "Irn", "Rus", "Tur"],
          areaMetric: 86600,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Azerbaijani",
              male: "Azerbaijani",
            ),
            Demonyms(
              language: LangFra(),
              female: "Azerbaïdjanaise",
              male: "Azerbaïdjanais",
            ),
          ],
          emoji: "🇦🇿",
          maps: const Maps(
            googleMaps: "az3Zz7ar2aoB9AUc6",
            openStreetMaps: "relation/364110",
          ),
          population: 10110116,
          gini: const Gini(year: 2005, coefficient: 26.6),
          fifa: "AZE",
          car: const Car(sign: "AZ"),
          timezones: const ["UTC+04:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Baku"),
            latLng: LatLng(40.38, 49.87),
          ),
          postalCode: const PostalCode(
            format: "AZ ####",
            regExpPattern: r"^(?:AZ)*(\d{4})$",
          ),
          regionalBlocs: null,
        );
}

/// A class that represents the Burundi country.
class CountryBdi extends WorldCountry {
  /// Creates a instance of [CountryBdi] (Burundi country).
  ///
  /// ISO 3166-1 Alpha-3 code: "BDI", ISO 3166-1 Alpha-2 code: "BI".
  const CountryBdi()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Republic of Burundi",
            common: "Burundi",
          ),
          namesNative: const [
            CountryName(
              language: LangFra(),
              official: "République du Burundi",
              common: "Burundi",
            ),
            CountryName(
              language: LangRun(),
              official: "Republika y'Uburundi ",
              common: "Uburundi",
            ),
          ],
          tld: const [".bi"],
          code: "BDI",
          codeNumeric: "108",
          codeShort: "BI",
          cioc: "BDI",
          independent: true,
          unMember: true,
          currencies: const [FiatBif()],
          idd: const Idd(root: 2, suffixes: [57]),
          altSpellings: const [
            "BI",
            "Republic of Burundi",
            "Republika y'Uburundi",
            "République du Burundi",
          ],
          continent: const Africa(),
          subregion: const EasternAfrica(),
          languages: const [LangFra(), LangRun()],
          translations: bdiCountryTranslations,
          latLng: const LatLng(-3.5, 30),
          landlocked: true,
          bordersCodes: const ["Cod", "Rwa", "Tza"],
          areaMetric: 27834,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Burundian",
              male: "Burundian",
            ),
            Demonyms(
              language: LangFra(),
              female: "Burundaise",
              male: "Burundais",
            ),
          ],
          emoji: "🇧🇮",
          maps: const Maps(
            googleMaps: "RXPWoRrB9tfrJpUG7",
            openStreetMaps: "relation/195269",
          ),
          population: 11890781,
          gini: const Gini(year: 2013, coefficient: 38.6),
          fifa: "BDI",
          car: const Car(sign: "RU"),
          timezones: const ["UTC+02:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Gitega"),
            latLng: LatLng(-3.43, 29.93),
          ),
          postalCode: null,
          regionalBlocs: const [BlocAU()],
        );
}

/// A class that represents the Belgium country.
class CountryBel extends WorldCountry {
  /// Creates a instance of [CountryBel] (Belgium country).
  ///
  /// ISO 3166-1 Alpha-3 code: "BEL", ISO 3166-1 Alpha-2 code: "BE".
  const CountryBel()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Kingdom of Belgium",
            common: "Belgium",
          ),
          namesNative: const [
            CountryName(
              language: LangDeu(),
              official: "Königreich Belgien",
              common: "Belgien",
            ),
            CountryName(
              language: LangFra(),
              official: "Royaume de Belgique",
              common: "Belgique",
            ),
            CountryName(
              language: LangNld(),
              official: "Koninkrijk België",
              common: "België",
            ),
          ],
          tld: const [".be"],
          code: "BEL",
          codeNumeric: "056",
          codeShort: "BE",
          cioc: "BEL",
          independent: true,
          unMember: true,
          currencies: const [FiatEur()],
          idd: const Idd(root: 3, suffixes: [2]),
          altSpellings: const [
            "BE",
            "België",
            "Belgie",
            "Belgien",
            "Belgique",
            "Kingdom of Belgium",
            "Koninkrijk België",
            "Royaume de Belgique",
            "Königreich Belgien",
          ],
          continent: const Europe(),
          subregion: const WesternEurope(),
          languages: const [LangDeu(), LangFra(), LangNld()],
          translations: belCountryTranslations,
          latLng: const LatLng(50.83333333, 4),
          landlocked: false,
          bordersCodes: const ["Fra", "Deu", "Lux", "Nld"],
          areaMetric: 30528,
          demonyms: const [
            Demonyms(language: LangEng(), female: "Belgian", male: "Belgian"),
            Demonyms(language: LangFra(), female: "Belge", male: "Belge"),
          ],
          emoji: "🇧🇪",
          maps: const Maps(
            googleMaps: "UQQzat85TCtPRXAL8",
            openStreetMaps: "relation/52411",
          ),
          population: 11555997,
          gini: const Gini(year: 2018, coefficient: 27.2),
          fifa: "BEL",
          car: const Car(sign: "B"),
          timezones: const ["UTC+01:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Brussels"),
            latLng: LatLng(50.83, 4.33),
          ),
          postalCode:
              const PostalCode(format: "####", regExpPattern: r"^(\d{4})$"),
          regionalBlocs: const [BlocEU()],
        );
}

/// A class that represents the Benin country.
class CountryBen extends WorldCountry {
  /// Creates a instance of [CountryBen] (Benin country).
  ///
  /// ISO 3166-1 Alpha-3 code: "BEN", ISO 3166-1 Alpha-2 code: "BJ".
  const CountryBen()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Republic of Benin",
            common: "Benin",
          ),
          namesNative: const [
            CountryName(
              language: LangFra(),
              official: "République du Bénin",
              common: "Bénin",
            ),
          ],
          tld: const [".bj"],
          code: "BEN",
          codeNumeric: "204",
          codeShort: "BJ",
          cioc: "BEN",
          independent: true,
          unMember: true,
          currencies: const [FiatXof()],
          idd: const Idd(root: 2, suffixes: [29]),
          altSpellings: const [
            "BJ",
            "Republic of Benin",
            "République du Bénin",
          ],
          continent: const Africa(),
          subregion: const WesternAfrica(),
          languages: const [LangFra()],
          translations: benCountryTranslations,
          latLng: const LatLng(9.5, 2.25),
          landlocked: false,
          bordersCodes: const ["Bfa", "Ner", "Nga", "Tgo"],
          areaMetric: 112622,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Beninese",
              male: "Beninese",
            ),
            Demonyms(
              language: LangFra(),
              female: "Béninoise",
              male: "Béninois",
            ),
          ],
          emoji: "🇧🇯",
          maps: const Maps(
            googleMaps: "uMw1BsHEXQYgVFFu6",
            openStreetMaps: "relation/192784",
          ),
          population: 12123198,
          gini: const Gini(year: 2015, coefficient: 47.8),
          fifa: "BEN",
          car: const Car(sign: "DY"),
          timezones: const ["UTC+01:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Porto-Novo"),
            latLng: LatLng(6.48, 2.62),
          ),
          postalCode: null,
          regionalBlocs: const [BlocAU()],
        );
}

/// A class that represents the Caribbean Netherlands country.
class CountryBes extends WorldCountry {
  /// Creates a instance of [CountryBes] (Caribbean Netherlands country).
  ///
  /// ISO 3166-1 Alpha-3 code: "BES", ISO 3166-1 Alpha-2 code: "BQ".
  const CountryBes()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Bonaire, Sint Eustatius and Saba",
            common: "Caribbean Netherlands",
          ),
          namesNative: const [
            CountryName(
              language: LangNld(),
              official: "Bonaire, Sint Eustatius en Saba",
              common: "Caribisch Nederland",
            ),
          ],
          tld: const [".bq", ".nl"],
          code: "BES",
          codeNumeric: "535",
          codeShort: "BQ",
          cioc: null,
          independent: false,
          unMember: false,
          currencies: const [FiatUsd()],
          idd: const Idd(root: 5, suffixes: [99]),
          altSpellings: const ["BES islands"],
          continent: const Americas(),
          subregion: const Caribbean(),
          languages: const [LangEng(), LangNld()],
          translations: besCountryTranslations,
          latLng: const LatLng(12.18, -68.25),
          landlocked: false,
          bordersCodes: null,
          areaMetric: 328,
          demonyms: const [
            Demonyms(language: LangEng(), female: "Dutch", male: "Dutch"),
            Demonyms(
              language: LangFra(),
              female: "Néerlandaise",
              male: "Néerlandais",
            ),
          ],
          emoji: "🇧🇶",
          maps: const Maps(
            googleMaps: "4XVes1P6uEDTz77WA",
            openStreetMaps: "relation/1216720",
          ),
          population: 25987,
          gini: null,
          fifa: null,
          car: const Car(),
          timezones: const ["UTC-04:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Kralendijk"),
            latLng: LatLng(12.14, -68.27),
          ),
          postalCode: null,
          regionalBlocs: null,
        );
}

/// A class that represents the Burkina Faso country.
class CountryBfa extends WorldCountry {
  /// Creates a instance of [CountryBfa] (Burkina Faso country).
  ///
  /// ISO 3166-1 Alpha-3 code: "BFA", ISO 3166-1 Alpha-2 code: "BF".
  const CountryBfa()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Burkina Faso",
            common: "Burkina Faso",
          ),
          namesNative: const [
            CountryName(
              language: LangFra(),
              official: "République du Burkina",
              common: "Burkina Faso",
            ),
          ],
          tld: const [".bf"],
          code: "BFA",
          codeNumeric: "854",
          codeShort: "BF",
          cioc: "BUR",
          independent: true,
          unMember: true,
          currencies: const [FiatXof()],
          idd: const Idd(root: 2, suffixes: [26]),
          altSpellings: const ["BF"],
          continent: const Africa(),
          subregion: const WesternAfrica(),
          languages: const [LangFra()],
          translations: bfaCountryTranslations,
          latLng: const LatLng(13, -2),
          landlocked: true,
          bordersCodes: const ["Ben", "Civ", "Gha", "Mli", "Ner", "Tgo"],
          areaMetric: 272967,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Burkinabe",
              male: "Burkinabe",
            ),
            Demonyms(
              language: LangFra(),
              female: "Burkinabée",
              male: "Burkinabé",
            ),
          ],
          emoji: "🇧🇫",
          maps: const Maps(
            googleMaps: "rKRmpcMbFher2ozb7",
            openStreetMaps: "relation/192783",
          ),
          population: 20903278,
          gini: const Gini(year: 2014, coefficient: 35.3),
          fifa: "BFA",
          car: const Car(sign: "BF"),
          timezones: const ["UTC+00:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Ouagadougou"),
            latLng: LatLng(12.37, -1.52),
          ),
          postalCode: null,
          regionalBlocs: const [BlocAU()],
        );
}

/// A class that represents the Bangladesh country.
class CountryBgd extends WorldCountry {
  /// Creates a instance of [CountryBgd] (Bangladesh country).
  ///
  /// ISO 3166-1 Alpha-3 code: "BGD", ISO 3166-1 Alpha-2 code: "BD".
  const CountryBgd()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "People's Republic of Bangladesh",
            common: "Bangladesh",
          ),
          namesNative: const [
            CountryName(
              language: LangBen(),
              official: "বাংলাদেশ গণপ্রজাতন্ত্রী",
              common: "বাংলাদেশ",
            ),
          ],
          tld: const [".bd"],
          code: "BGD",
          codeNumeric: "050",
          codeShort: "BD",
          cioc: "BAN",
          independent: true,
          unMember: true,
          currencies: const [FiatBdt()],
          idd: const Idd(root: 8, suffixes: [80]),
          altSpellings: const [
            "BD",
            "People's Republic of Bangladesh",
            "Gônôprôjatôntri Bangladesh",
          ],
          continent: const Asia(),
          subregion: const SouthernAsia(),
          languages: const [LangBen()],
          translations: bgdCountryTranslations,
          latLng: const LatLng(24, 90),
          landlocked: false,
          bordersCodes: const ["Mmr", "Ind"],
          areaMetric: 147570,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Bangladeshi",
              male: "Bangladeshi",
            ),
            Demonyms(
              language: LangFra(),
              female: "Bangladaise",
              male: "Bangladais",
            ),
          ],
          emoji: "🇧🇩",
          maps: const Maps(
            googleMaps: "op6gmLbHcvv6rLhH6",
            openStreetMaps: "relation/184640",
          ),
          population: 164689383,
          gini: const Gini(year: 2016, coefficient: 32.4),
          fifa: "BAN",
          car: const Car(sign: "BD", isRightSide: false),
          timezones: const ["UTC+06:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.sunday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Dhaka"),
            latLng: LatLng(23.72, 90.4),
          ),
          postalCode:
              const PostalCode(format: "####", regExpPattern: r"^(\d{4})$"),
          regionalBlocs: const [BlocSAARC()],
        );
}

/// A class that represents the Bulgaria country.
class CountryBgr extends WorldCountry {
  /// Creates a instance of [CountryBgr] (Bulgaria country).
  ///
  /// ISO 3166-1 Alpha-3 code: "BGR", ISO 3166-1 Alpha-2 code: "BG".
  const CountryBgr()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Republic of Bulgaria",
            common: "Bulgaria",
          ),
          namesNative: const [
            CountryName(
              language: LangBul(),
              official: "Република България",
              common: "България",
            ),
          ],
          tld: const [".bg"],
          code: "BGR",
          codeNumeric: "100",
          codeShort: "BG",
          cioc: "BUL",
          independent: true,
          unMember: true,
          currencies: const [FiatBgn()],
          idd: const Idd(root: 3, suffixes: [59]),
          altSpellings: const [
            "BG",
            "Republic of Bulgaria",
            "Република България",
          ],
          continent: const Europe(),
          subregion: const SouthwestEurope(),
          languages: const [LangBul()],
          translations: bgrCountryTranslations,
          latLng: const LatLng(43, 25),
          landlocked: false,
          bordersCodes: const ["Grc", "Mkd", "Rou", "Srb", "Tur"],
          areaMetric: 110879,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Bulgarian",
              male: "Bulgarian",
            ),
            Demonyms(language: LangFra(), female: "Bulgare", male: "Bulgare"),
          ],
          emoji: "🇧🇬",
          maps: const Maps(
            googleMaps: "F5uAhDGWzc3BrHfm9",
            openStreetMaps: "relation/186382",
          ),
          population: 6927288,
          gini: const Gini(year: 2018, coefficient: 41.3),
          fifa: "BUL",
          car: const Car(sign: "BG"),
          timezones: const ["UTC+02:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Sofia"),
            latLng: LatLng(42.68, 23.32),
          ),
          postalCode:
              const PostalCode(format: "####", regExpPattern: r"^(\d{4})$"),
          regionalBlocs: const [BlocEU()],
        );
}

/// A class that represents the Bahrain country.
class CountryBhr extends WorldCountry {
  /// Creates a instance of [CountryBhr] (Bahrain country).
  ///
  /// ISO 3166-1 Alpha-3 code: "BHR", ISO 3166-1 Alpha-2 code: "BH".
  const CountryBhr()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Kingdom of Bahrain",
            common: "Bahrain",
          ),
          namesNative: const [
            CountryName(
              language: LangAra(),
              official: "مملكة البحرين",
              common: "‏البحرين",
            ),
          ],
          tld: const [".bh"],
          code: "BHR",
          codeNumeric: "048",
          codeShort: "BH",
          cioc: "BHR",
          independent: true,
          unMember: true,
          currencies: const [FiatBhd()],
          idd: const Idd(root: 9, suffixes: [73]),
          altSpellings: const [
            "BH",
            "Kingdom of Bahrain",
            "Mamlakat al-Baḥrayn",
          ],
          continent: const Asia(),
          subregion: const WesternAsia(),
          languages: const [LangAra()],
          translations: bhrCountryTranslations,
          latLng: const LatLng(26, 50.55),
          landlocked: false,
          bordersCodes: null,
          areaMetric: 765,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Bahraini",
              male: "Bahraini",
            ),
            Demonyms(
              language: LangFra(),
              female: "Bahreïnienne",
              male: "Bahreïnien",
            ),
          ],
          emoji: "🇧🇭",
          maps: const Maps(
            googleMaps: "5Zue99Zc6vFBHxzJ7",
            openStreetMaps: "relation/378734",
          ),
          population: 1701583,
          gini: null,
          fifa: "BHR",
          car: const Car(sign: "BRN"),
          timezones: const ["UTC+03:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Manama"),
            latLng: LatLng(26.23, 50.57),
          ),
          postalCode: const PostalCode(
            format: "####|###",
            regExpPattern: r"^(\d{3}\d?)$",
          ),
          regionalBlocs: const [BlocAL()],
        );
}

/// A class that represents the Bahamas country.
class CountryBhs extends WorldCountry {
  /// Creates a instance of [CountryBhs] (Bahamas country).
  ///
  /// ISO 3166-1 Alpha-3 code: "BHS", ISO 3166-1 Alpha-2 code: "BS".
  const CountryBhs()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Commonwealth of the Bahamas",
            common: "Bahamas",
          ),
          namesNative: const [
            CountryName(
              language: LangEng(),
              official: "Commonwealth of the Bahamas",
              common: "Bahamas",
            ),
          ],
          tld: const [".bs"],
          code: "BHS",
          codeNumeric: "044",
          codeShort: "BS",
          cioc: "BAH",
          independent: true,
          unMember: true,
          currencies: const [FiatBsd(), FiatUsd()],
          idd: const Idd(root: 1, suffixes: [242]),
          altSpellings: const ["BS", "Commonwealth of the Bahamas"],
          continent: const Americas(),
          subregion: const Caribbean(),
          languages: const [LangEng()],
          translations: bhsCountryTranslations,
          latLng: const LatLng(25.0343, -77.3963),
          landlocked: false,
          bordersCodes: null,
          areaMetric: 13943,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Bahamian",
              male: "Bahamian",
            ),
            Demonyms(
              language: LangFra(),
              female: "Bahamienne",
              male: "Bahamien",
            ),
          ],
          emoji: "🇧🇸",
          maps: const Maps(
            googleMaps: "1YzRs1BZrG8p8pmVA",
            openStreetMaps: "relation/547469",
          ),
          population: 393248,
          gini: null,
          fifa: "BAH",
          car: const Car(sign: "BS", isRightSide: false),
          timezones: const ["UTC-05:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Nassau"),
            latLng: LatLng(25.08, -77.35),
          ),
          postalCode: null,
          regionalBlocs: const [BlocCARICOM()],
        );
}

/// A class that represents the Bosnia and Herzegovina country.
class CountryBih extends WorldCountry {
  /// Creates a instance of [CountryBih] (Bosnia and Herzegovina country).
  ///
  /// ISO 3166-1 Alpha-3 code: "BIH", ISO 3166-1 Alpha-2 code: "BA".
  const CountryBih()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Bosnia and Herzegovina",
            common: "Bosnia and Herzegovina",
          ),
          namesNative: const [
            CountryName(
              language: LangBos(),
              official: "Bosna i Hercegovina",
              common: "Bosna i Hercegovina",
            ),
            CountryName(
              language: LangHrv(),
              official: "Bosna i Hercegovina",
              common: "Bosna i Hercegovina",
            ),
            CountryName(
              language: LangSrp(),
              official: "Боснa и Херцеговина",
              common: "Боснa и Херцеговина",
            ),
          ],
          tld: const [".ba"],
          code: "BIH",
          codeNumeric: "070",
          codeShort: "BA",
          cioc: "BIH",
          independent: true,
          unMember: true,
          currencies: const [FiatBam()],
          idd: const Idd(root: 3, suffixes: [87]),
          altSpellings: const [
            "Босна и Херцеговина",
            "BA",
            "Bosnia-Herzegovina",
          ],
          continent: const Europe(),
          subregion: const SouthwestEurope(),
          languages: const [LangBos(), LangHrv(), LangSrp()],
          translations: bihCountryTranslations,
          latLng: const LatLng(44, 18),
          landlocked: false,
          bordersCodes: const ["Hrv", "Mne", "Srb"],
          areaMetric: 51209,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Bosnian, Herzegovinian",
              male: "Bosnian, Herzegovinian",
            ),
            Demonyms(
              language: LangFra(),
              female: "Bosnienne",
              male: "Bosnien",
            ),
          ],
          emoji: "🇧🇦",
          maps: const Maps(
            googleMaps:
                "https://www.google.com/maps/place/Bosnia+and+Herzegovina",
            openStreetMaps: "relation/2528142",
          ),
          population: 3280815,
          gini: const Gini(year: 2011, coefficient: 33),
          fifa: "BIH",
          car: const Car(sign: "BIH"),
          timezones: const ["UTC+01:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Sarajevo"),
            latLng: LatLng(43.87, 18.42),
          ),
          postalCode: const PostalCode(),
          regionalBlocs: const [BlocCEFTA()],
        );
}

/// A class that represents the Saint Barthélemy country.
class CountryBlm extends WorldCountry {
  /// Creates a instance of [CountryBlm] (Saint Barthélemy country).
  ///
  /// ISO 3166-1 Alpha-3 code: "BLM", ISO 3166-1 Alpha-2 code: "BL".
  const CountryBlm()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Collectivity of Saint Barthélemy",
            common: "Saint Barthélemy",
          ),
          namesNative: const [
            CountryName(
              language: LangFra(),
              official: "Collectivité de Saint-Barthélemy",
              common: "Saint-Barthélemy",
            ),
          ],
          tld: const [".bl"],
          code: "BLM",
          codeNumeric: "652",
          codeShort: "BL",
          cioc: null,
          independent: false,
          unMember: false,
          currencies: const [FiatEur()],
          idd: const Idd(root: 5, suffixes: [90]),
          altSpellings: const [
            "BL",
            "St. Barthelemy",
            "Collectivity of Saint Barthélemy",
            "Collectivité de Saint-Barthélemy",
          ],
          continent: const Americas(),
          subregion: const Caribbean(),
          languages: const [LangFra()],
          translations: blmCountryTranslations,
          latLng: const LatLng(18.5, -63.41666666),
          landlocked: false,
          bordersCodes: null,
          areaMetric: 21,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Saint Barthélemy Islander",
              male: "Saint Barthélemy Islander",
            ),
            Demonyms(
              language: LangFra(),
              female: "Barthéloméenne",
              male: "Barthéloméen",
            ),
          ],
          emoji: "🇧🇱",
          maps: const Maps(
            googleMaps: "Mc7GqH466S7AAk297",
            openStreetMaps: "relation/7552779",
          ),
          population: 4255,
          gini: null,
          fifa: null,
          car: const Car(sign: "F"),
          timezones: const ["UTC-04:00"],
          hasCoatOfArms: false,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Gustavia"),
            latLng: LatLng(17.88, -62.85),
          ),
          postalCode: const PostalCode(),
          regionalBlocs: null,
        );
}

/// A class that represents the Belarus country.
class CountryBlr extends WorldCountry {
  /// Creates a instance of [CountryBlr] (Belarus country).
  ///
  /// ISO 3166-1 Alpha-3 code: "BLR", ISO 3166-1 Alpha-2 code: "BY".
  const CountryBlr()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Republic of Belarus",
            common: "Belarus",
          ),
          namesNative: const [
            CountryName(
              language: LangBel(),
              official: "Рэспубліка Беларусь",
              common: "Беларусь",
            ),
            CountryName(
              language: LangRus(),
              official: "Республика Беларусь",
              common: "Беларусь",
            ),
          ],
          tld: const [".by"],
          code: "BLR",
          codeNumeric: "112",
          codeShort: "BY",
          cioc: "BLR",
          independent: true,
          unMember: true,
          currencies: const [FiatByn()],
          idd: const Idd(root: 3, suffixes: [75]),
          altSpellings: const [
            "BY",
            "Bielaruś",
            "Republic of Belarus",
            "Белоруссия",
            "Республика Белоруссия",
          ],
          continent: const Europe(),
          subregion: const EasternEurope(),
          languages: const [LangBel(), LangRus()],
          translations: blrCountryTranslations,
          latLng: const LatLng(53, 28),
          landlocked: true,
          bordersCodes: const ["Lva", "Ltu", "Pol", "Rus", "Ukr"],
          areaMetric: 207600,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Belarusian",
              male: "Belarusian",
            ),
            Demonyms(
              language: LangFra(),
              female: "Biélorusse",
              male: "Biélorusse",
            ),
          ],
          emoji: "🇧🇾",
          maps: const Maps(
            googleMaps: "PJUDU3EBPSszCQcu6",
            openStreetMaps: "relation/59065",
          ),
          population: 9398861,
          gini: const Gini(year: 2019, coefficient: 25.3),
          fifa: "BLR",
          car: const Car(sign: "BY"),
          timezones: const ["UTC+03:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Minsk"),
            latLng: LatLng(53.9, 27.57),
          ),
          postalCode:
              const PostalCode(format: "######", regExpPattern: r"^(\d{6})$"),
          regionalBlocs: const [BlocEEU()],
        );
}

/// A class that represents the Belize country.
class CountryBlz extends WorldCountry {
  /// Creates a instance of [CountryBlz] (Belize country).
  ///
  /// ISO 3166-1 Alpha-3 code: "BLZ", ISO 3166-1 Alpha-2 code: "BZ".
  const CountryBlz()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Belize",
            common: "Belize",
          ),
          namesNative: const [
            CountryName(
              language: LangEng(),
              official: "Belize",
              common: "Belize",
            ),
            CountryName(
              language: LangSpa(),
              official: "Belice",
              common: "Belice",
            ),
          ],
          tld: const [".bz"],
          code: "BLZ",
          codeNumeric: "084",
          codeShort: "BZ",
          cioc: "BIZ",
          independent: true,
          unMember: true,
          currencies: const [FiatBzd()],
          idd: const Idd(root: 50, suffixes: [1]),
          altSpellings: const ["BZ"],
          continent: const Americas(),
          subregion: const CentralAmerica(),
          languages: const [LangEng(), LangSpa()],
          translations: blzCountryTranslations,
          latLng: const LatLng(17.25, -88.75),
          landlocked: false,
          bordersCodes: const ["Gtm", "Mex"],
          areaMetric: 22966,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Belizean",
              male: "Belizean",
            ),
            Demonyms(
              language: LangFra(),
              female: "Bélizienne",
              male: "Bélizien",
            ),
          ],
          emoji: "🇧🇿",
          maps: const Maps(
            googleMaps: "jdCccpdLodm1uTmo9",
            openStreetMaps: "relation/287827",
          ),
          population: 397621,
          gini: const Gini(year: 1999, coefficient: 53.3),
          fifa: "BLZ",
          car: const Car(sign: "BH"),
          timezones: const ["UTC-06:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Belmopan"),
            latLng: LatLng(17.25, -88.77),
          ),
          postalCode: null,
          regionalBlocs: const [BlocCARICOM(), BlocCAIS()],
        );
}

/// A class that represents the Bermuda country.
class CountryBmu extends WorldCountry {
  /// Creates a instance of [CountryBmu] (Bermuda country).
  ///
  /// ISO 3166-1 Alpha-3 code: "BMU", ISO 3166-1 Alpha-2 code: "BM".
  const CountryBmu()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Bermuda",
            common: "Bermuda",
          ),
          namesNative: const [
            CountryName(
              language: LangEng(),
              official: "Bermuda",
              common: "Bermuda",
            ),
          ],
          tld: const [".bm"],
          code: "BMU",
          codeNumeric: "060",
          codeShort: "BM",
          cioc: "BER",
          independent: false,
          unMember: false,
          currencies: const [FiatBmd()],
          idd: const Idd(root: 1, suffixes: [441]),
          altSpellings: const [
            "BM",
            "The Islands of Bermuda",
            "The Bermudas",
            "Somers Isles",
          ],
          continent: const Americas(),
          subregion: const NorthAmerica(),
          languages: const [LangEng()],
          translations: bmuCountryTranslations,
          latLng: const LatLng(32.33333333, -64.75),
          landlocked: false,
          bordersCodes: null,
          areaMetric: 54,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Bermudian",
              male: "Bermudian",
            ),
            Demonyms(
              language: LangFra(),
              female: "Bermudienne",
              male: "Bermudien",
            ),
          ],
          emoji: "🇧🇲",
          maps: const Maps(
            googleMaps: "NLsRGNjTzDghTtAJA",
            openStreetMaps: "relation/1993208",
          ),
          population: 63903,
          gini: null,
          fifa: "BER",
          car: const Car(sign: "GB", isRightSide: false),
          timezones: const ["UTC-04:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Hamilton"),
            latLng: LatLng(32.28, -64.78),
          ),
          postalCode: const PostalCode(
            format: "@@ ##",
            regExpPattern: r"^([A-Z]{2}\d{2})$",
          ),
          regionalBlocs: null,
        );
}

/// A class that represents the Bolivia country.
class CountryBol extends WorldCountry {
  /// Creates a instance of [CountryBol] (Bolivia country).
  ///
  /// ISO 3166-1 Alpha-3 code: "BOL", ISO 3166-1 Alpha-2 code: "BO".
  const CountryBol()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Plurinational State of Bolivia",
            common: "Bolivia",
          ),
          namesNative: const [
            CountryName(
              language: LangAym(),
              official: "Wuliwya Suyu",
              common: "Wuliwya",
            ),
            CountryName(
              language: LangGrn(),
              official: "Tetã Volívia",
              common: "Volívia",
            ),
            CountryName(
              language: LangQue(),
              official: "Buliwya Mamallaqta",
              common: "Buliwya",
            ),
            CountryName(
              language: LangSpa(),
              official: "Estado Plurinacional de Bolivia",
              common: "Bolivia",
            ),
          ],
          tld: const [".bo"],
          code: "BOL",
          codeNumeric: "068",
          codeShort: "BO",
          cioc: "BOL",
          independent: true,
          unMember: true,
          currencies: const [FiatBob()],
          idd: const Idd(root: 5, suffixes: [91]),
          altSpellings: const [
            "BO",
            "Buliwya",
            "Wuliwya",
            "Bolivia, Plurinational State of",
            "Plurinational State of Bolivia",
            "Estado Plurinacional de Bolivia",
            "Buliwya Mamallaqta",
            "Wuliwya Suyu",
            "Tetã Volívia",
          ],
          continent: const Americas(),
          subregion: const SouthAmerica(),
          languages: const [LangAym(), LangGrn(), LangQue(), LangSpa()],
          translations: bolCountryTranslations,
          latLng: const LatLng(-17, -65),
          landlocked: true,
          bordersCodes: const ["Arg", "Bra", "Chl", "Pry", "Per"],
          areaMetric: 1098581,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Bolivian",
              male: "Bolivian",
            ),
            Demonyms(
              language: LangFra(),
              female: "Bolivienne",
              male: "Bolivien",
            ),
          ],
          emoji: "🇧🇴",
          maps: const Maps(
            googleMaps: "9DfnyfbxNM2g5U9b9",
            openStreetMaps: "relation/252645",
          ),
          population: 11673029,
          gini: const Gini(year: 2019, coefficient: 41.6),
          fifa: "BOL",
          car: const Car(sign: "BOL"),
          timezones: const ["UTC-04:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Sucre"),
            latLng: LatLng(-19.02, -65.26),
          ),
          postalCode: null,
          regionalBlocs: const [BlocUSAN()],
        );
}

/// A class that represents the Brazil country.
class CountryBra extends WorldCountry {
  /// Creates a instance of [CountryBra] (Brazil country).
  ///
  /// ISO 3166-1 Alpha-3 code: "BRA", ISO 3166-1 Alpha-2 code: "BR".
  const CountryBra()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Federative Republic of Brazil",
            common: "Brazil",
          ),
          namesNative: const [
            CountryName(
              language: LangPor(),
              official: "República Federativa do Brasil",
              common: "Brasil",
            ),
          ],
          tld: const [".br"],
          code: "BRA",
          codeNumeric: "076",
          codeShort: "BR",
          cioc: "BRA",
          independent: true,
          unMember: true,
          currencies: const [FiatBrl()],
          idd: const Idd(root: 5, suffixes: [5]),
          altSpellings: const [
            "BR",
            "Brasil",
            "Federative Republic of Brazil",
            "República Federativa do Brasil",
          ],
          continent: const Americas(),
          subregion: const SouthAmerica(),
          languages: const [LangPor()],
          translations: braCountryTranslations,
          latLng: const LatLng(-10, -55),
          landlocked: false,
          bordersCodes: const [
            "Arg",
            "Bol",
            "Col",
            "Guf",
            "Guy",
            "Pry",
            "Per",
            "Sur",
            "Ury",
            "Ven",
          ],
          areaMetric: 8515767,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Brazilian",
              male: "Brazilian",
            ),
            Demonyms(
              language: LangFra(),
              female: "Brésilienne",
              male: "Brésilien",
            ),
          ],
          emoji: "🇧🇷",
          maps: const Maps(
            googleMaps: "waCKk21HeeqFzkNC9",
            openStreetMaps: "relation/59470",
          ),
          population: 212559409,
          gini: const Gini(year: 2019, coefficient: 53.4),
          fifa: "BRA",
          car: const Car(sign: "BR"),
          timezones: const [
            "UTC-05:00",
            "UTC-04:00",
            "UTC-03:00",
            "UTC-02:00",
          ],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Brasília"),
            latLng: LatLng(-15.79, -47.88),
          ),
          postalCode: const PostalCode(
            format: "#####-###",
            regExpPattern: r"^(\d{8})$",
          ),
          regionalBlocs: const [BlocUSAN()],
        );
}

/// A class that represents the Barbados country.
class CountryBrb extends WorldCountry {
  /// Creates a instance of [CountryBrb] (Barbados country).
  ///
  /// ISO 3166-1 Alpha-3 code: "BRB", ISO 3166-1 Alpha-2 code: "BB".
  const CountryBrb()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Barbados",
            common: "Barbados",
          ),
          namesNative: const [
            CountryName(
              language: LangEng(),
              official: "Barbados",
              common: "Barbados",
            ),
          ],
          tld: const [".bb"],
          code: "BRB",
          codeNumeric: "052",
          codeShort: "BB",
          cioc: "BAR",
          independent: true,
          unMember: true,
          currencies: const [FiatBbd()],
          idd: const Idd(root: 1, suffixes: [246]),
          altSpellings: const ["BB"],
          continent: const Americas(),
          subregion: const Caribbean(),
          languages: const [LangEng()],
          translations: brbCountryTranslations,
          latLng: const LatLng(13.16666666, -59.53333333),
          landlocked: false,
          bordersCodes: null,
          areaMetric: 430,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Barbadian",
              male: "Barbadian",
            ),
            Demonyms(
              language: LangFra(),
              female: "Barbadienne",
              male: "Barbadien",
            ),
          ],
          emoji: "🇧🇧",
          maps: const Maps(
            googleMaps: "2m36v8STvbGAWd9c7",
            openStreetMaps: "relation/547511",
          ),
          population: 287371,
          gini: null,
          fifa: "BRB",
          car: const Car(sign: "BDS", isRightSide: false),
          timezones: const ["UTC-04:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Bridgetown"),
            latLng: LatLng(13.1, -59.62),
          ),
          postalCode: const PostalCode(
            format: "BB#####",
            regExpPattern: r"^(?:BB)*(\d{5})$",
          ),
          regionalBlocs: const [BlocCARICOM()],
        );
}

/// A class that represents the Brunei country.
class CountryBrn extends WorldCountry {
  /// Creates a instance of [CountryBrn] (Brunei country).
  ///
  /// ISO 3166-1 Alpha-3 code: "BRN", ISO 3166-1 Alpha-2 code: "BN".
  const CountryBrn()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Nation of Brunei, Abode of Peace",
            common: "Brunei",
          ),
          namesNative: const [
            CountryName(
              language: LangMsa(),
              official: "Nation of Brunei, Abode Damai",
              common: "Negara Brunei Darussalam",
            ),
          ],
          tld: const [".bn"],
          code: "BRN",
          codeNumeric: "096",
          codeShort: "BN",
          cioc: "BRU",
          independent: true,
          unMember: true,
          currencies: const [FiatBnd(), FiatSgd()],
          idd: const Idd(root: 6, suffixes: [73]),
          altSpellings: const [
            "BN",
            "Brunei Darussalam",
            "Nation of Brunei",
            "the Abode of Peace",
          ],
          continent: const Asia(),
          subregion: const SouthEasternAsia(),
          languages: const [LangMsa()],
          translations: brnCountryTranslations,
          latLng: const LatLng(4.5, 114.66666666),
          landlocked: false,
          bordersCodes: const ["Mys"],
          areaMetric: 5765,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Bruneian",
              male: "Bruneian",
            ),
            Demonyms(
              language: LangFra(),
              female: "Brunéienne",
              male: "Brunéien",
            ),
          ],
          emoji: "🇧🇳",
          maps: const Maps(
            googleMaps: "4jb4CqBXhr8vNh579",
            openStreetMaps: "relation/2103120",
          ),
          population: 437483,
          gini: null,
          fifa: "BRU",
          car: const Car(sign: "BRU", isRightSide: false),
          timezones: const ["UTC+08:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Bandar Seri Begawan"),
            latLng: LatLng(4.88, 114.93),
          ),
          postalCode: const PostalCode(
            format: "@@####",
            regExpPattern: r"^([A-Z]{2}\d{4})$",
          ),
          regionalBlocs: const [BlocASEAN()],
        );
}

/// A class that represents the Bhutan country.
class CountryBtn extends WorldCountry {
  /// Creates a instance of [CountryBtn] (Bhutan country).
  ///
  /// ISO 3166-1 Alpha-3 code: "BTN", ISO 3166-1 Alpha-2 code: "BT".
  const CountryBtn()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Kingdom of Bhutan",
            common: "Bhutan",
          ),
          namesNative: const [
            CountryName(
              language: LangDzo(),
              official: "འབྲུག་རྒྱལ་ཁབ་",
              common: "འབྲུག་ཡུལ་",
            ),
          ],
          tld: const [".bt"],
          code: "BTN",
          codeNumeric: "064",
          codeShort: "BT",
          cioc: "BHU",
          independent: true,
          unMember: true,
          currencies: const [FiatBtn(), FiatInr()],
          idd: const Idd(root: 9, suffixes: [75]),
          altSpellings: const ["BT", "Kingdom of Bhutan"],
          continent: const Asia(),
          subregion: const SouthernAsia(),
          languages: const [LangDzo()],
          translations: btnCountryTranslations,
          latLng: const LatLng(27.5, 90.5),
          landlocked: true,
          bordersCodes: const ["Chn", "Ind"],
          areaMetric: 38394,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Bhutanese",
              male: "Bhutanese",
            ),
            Demonyms(
              language: LangFra(),
              female: "Bhoutanaise",
              male: "Bhoutanais",
            ),
          ],
          emoji: "🇧🇹",
          maps: const Maps(
            googleMaps: "VEfXXBftTFLUpNgp8",
            openStreetMaps: "relation/184629",
          ),
          population: 771612,
          gini: const Gini(year: 2017, coefficient: 37.4),
          fifa: "BHU",
          car: const Car(sign: "BHT", isRightSide: false),
          timezones: const ["UTC+06:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Thimphu"),
            latLng: LatLng(27.47, 89.63),
          ),
          postalCode: null,
          regionalBlocs: const [BlocSAARC()],
        );
}

/// A class that represents the Bouvet Island country.
class CountryBvt extends WorldCountry {
  /// Creates a instance of [CountryBvt] (Bouvet Island country).
  ///
  /// ISO 3166-1 Alpha-3 code: "BVT", ISO 3166-1 Alpha-2 code: "BV".
  const CountryBvt()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Bouvet Island",
            common: "Bouvet Island",
          ),
          namesNative: const [
            CountryName(
              language: LangNor(),
              official: "Bouvetøya",
              common: "Bouvetøya",
            ),
          ],
          tld: const [".bv"],
          code: "BVT",
          codeNumeric: "074",
          codeShort: "BV",
          cioc: null,
          independent: false,
          unMember: false,
          currencies: null,
          idd: const Idd(root: 4, suffixes: [7]),
          altSpellings: const ["BV", "Bouvetøya", "Bouvet-øya"],
          continent: const Antarctica(),
          subregion: null,
          languages: const [LangNor()],
          translations: bvtCountryTranslations,
          latLng: const LatLng(54.4208, 3.3464),
          landlocked: false,
          bordersCodes: null,
          areaMetric: 49,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Bouvet Islander",
              male: "Bouvet Islander",
            ),
          ],
          emoji: "🇧🇻",
          maps: const Maps(
            googleMaps: "7WRQAEKZb4uK36yi9",
            openStreetMaps: "way/174996681",
          ),
          population: 0,
          gini: null,
          fifa: null,
          car: const Car(),
          timezones: const ["UTC+01:00"],
          hasCoatOfArms: false,
          startOfWeek: Weekday.monday,
          capitalInfo: null,
          postalCode: null,
          regionalBlocs: null,
        );
}

/// A class that represents the Botswana country.
class CountryBwa extends WorldCountry {
  /// Creates a instance of [CountryBwa] (Botswana country).
  ///
  /// ISO 3166-1 Alpha-3 code: "BWA", ISO 3166-1 Alpha-2 code: "BW".
  const CountryBwa()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Republic of Botswana",
            common: "Botswana",
          ),
          namesNative: const [
            CountryName(
              language: LangEng(),
              official: "Republic of Botswana",
              common: "Botswana",
            ),
            CountryName(
              language: LangTsn(),
              official: "Lefatshe la Botswana",
              common: "Botswana",
            ),
          ],
          tld: const [".bw"],
          code: "BWA",
          codeNumeric: "072",
          codeShort: "BW",
          cioc: "BOT",
          independent: true,
          unMember: true,
          currencies: const [FiatBwp()],
          idd: const Idd(root: 2, suffixes: [67]),
          altSpellings: const [
            "BW",
            "Republic of Botswana",
            "Lefatshe la Botswana",
          ],
          continent: const Africa(),
          subregion: const SouthernAfrica(),
          languages: const [LangEng(), LangTsn()],
          translations: bwaCountryTranslations,
          latLng: const LatLng(-22, 24),
          landlocked: true,
          bordersCodes: const ["Nam", "Zaf", "Zmb", "Zwe"],
          areaMetric: 582000,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Motswana",
              male: "Motswana",
            ),
            Demonyms(
              language: LangFra(),
              female: "Botswanaise",
              male: "Botswanais",
            ),
          ],
          emoji: "🇧🇼",
          maps: const Maps(
            googleMaps: "E364KeLy6N4JwxwQ8",
            openStreetMaps: "relation/1889339",
          ),
          population: 2351625,
          gini: const Gini(year: 2015, coefficient: 53.3),
          fifa: "BOT",
          car: const Car(sign: "BW", isRightSide: false),
          timezones: const ["UTC+02:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Gaborone"),
            latLng: LatLng(-24.63, 25.9),
          ),
          postalCode: null,
          regionalBlocs: const [BlocAU()],
        );
}

/// A class that represents the Central African Republic country.
class CountryCaf extends WorldCountry {
  /// Creates a instance of [CountryCaf] (Central African Republic country).
  ///
  /// ISO 3166-1 Alpha-3 code: "CAF", ISO 3166-1 Alpha-2 code: "CF".
  const CountryCaf()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Central African Republic",
            common: "Central African Republic",
          ),
          namesNative: const [
            CountryName(
              language: LangFra(),
              official: "République centrafricaine",
              common: "République centrafricaine",
            ),
            CountryName(
              language: LangSag(),
              official: "Ködörösêse tî Bêafrîka",
              common: "Bêafrîka",
            ),
          ],
          tld: const [".cf"],
          code: "CAF",
          codeNumeric: "140",
          codeShort: "CF",
          cioc: "CAF",
          independent: true,
          unMember: true,
          currencies: const [FiatXaf()],
          idd: const Idd(root: 2, suffixes: [36]),
          altSpellings: const [
            "CF",
            "Central African Republic",
            "République centrafricaine",
          ],
          continent: const Africa(),
          subregion: const MiddleAfrica(),
          languages: const [LangFra(), LangSag()],
          translations: cafCountryTranslations,
          latLng: const LatLng(7, 21),
          landlocked: true,
          bordersCodes: const ["Cmr", "Tcd", "Cod", "Cog", "Ssd", "Sdn"],
          areaMetric: 622984,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Central African",
              male: "Central African",
            ),
            Demonyms(
              language: LangFra(),
              female: "Centrafricaine",
              male: "Centrafricain",
            ),
          ],
          emoji: "🇨🇫",
          maps: const Maps(
            googleMaps: "51V8dsi2rGYC9n3c9",
            openStreetMaps: "relation/192790",
          ),
          population: 4829764,
          gini: const Gini(year: 2008, coefficient: 56.2),
          fifa: "CTA",
          car: const Car(sign: "RCA"),
          timezones: const ["UTC+01:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Bangui"),
            latLng: LatLng(4.37, 18.58),
          ),
          postalCode: null,
          regionalBlocs: const [BlocAU()],
        );
}

/// A class that represents the Canada country.
class CountryCan extends WorldCountry {
  /// Creates a instance of [CountryCan] (Canada country).
  ///
  /// ISO 3166-1 Alpha-3 code: "CAN", ISO 3166-1 Alpha-2 code: "CA".
  const CountryCan()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Canada",
            common: "Canada",
          ),
          namesNative: const [
            CountryName(
              language: LangEng(),
              official: "Canada",
              common: "Canada",
            ),
            CountryName(
              language: LangFra(),
              official: "Canada",
              common: "Canada",
            ),
          ],
          tld: const [".ca"],
          code: "CAN",
          codeNumeric: "124",
          codeShort: "CA",
          cioc: "CAN",
          independent: true,
          unMember: true,
          currencies: const [FiatCad()],
          idd: const Idd(
            root: 1,
            suffixes: [
              587,
              587,
              403,
              780,
              819,
              902,
              226,
              519,
              289,
              905,
              438,
              514,
              343,
              613,
              418,
              581,
              306,
              705,
              249,
              600,
              506,
              709,
              450,
              579,
              807,
              647,
              416,
              236,
              778,
              604,
              250,
              204,
              867,
            ],
          ),
          altSpellings: const ["CA"],
          continent: const Americas(),
          subregion: const NorthAmerica(),
          languages: const [LangEng(), LangFra()],
          translations: canCountryTranslations,
          latLng: const LatLng(60, -95),
          landlocked: false,
          bordersCodes: const ["Usa"],
          areaMetric: 9984670,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Canadian",
              male: "Canadian",
            ),
            Demonyms(
              language: LangFra(),
              female: "Canadienne",
              male: "Canadien",
            ),
          ],
          emoji: "🇨🇦",
          maps: const Maps(
            googleMaps: "jmEVLugreeqiZXxbA",
            openStreetMaps: "relation/1428125",
          ),
          population: 38005238,
          gini: const Gini(year: 2017, coefficient: 33.3),
          fifa: "CAN",
          car: const Car(sign: "CDN"),
          timezones: const [
            "UTC-08:00",
            "UTC-07:00",
            "UTC-06:00",
            "UTC-05:00",
            "UTC-04:00",
            "UTC-03:30",
          ],
          hasCoatOfArms: true,
          startOfWeek: Weekday.sunday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Ottawa"),
            latLng: LatLng(45.42, -75.7),
          ),
          postalCode: const PostalCode(
            format: "@#@ #@#",
            regExpPattern:
                r"^([ABCEGHJKLMNPRSTVXY]\d[ABCEGHJKLMNPRSTVWXYZ]) ?(\d[ABCEGHJKLMNPRSTVWXYZ]\d)$",
          ),
          regionalBlocs: const [BlocNAFTA()],
        );
}

/// A class that represents the Cocos (Keeling) Islands country.
class CountryCck extends WorldCountry {
  /// Creates a instance of [CountryCck] (Cocos (Keeling) Islands country).
  ///
  /// ISO 3166-1 Alpha-3 code: "CCK", ISO 3166-1 Alpha-2 code: "CC".
  const CountryCck()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Territory of the Cocos (Keeling) Islands",
            common: "Cocos (Keeling) Islands",
          ),
          namesNative: const [
            CountryName(
              language: LangEng(),
              official: "Territory of the Cocos (Keeling) Islands",
              common: "Cocos (Keeling) Islands",
            ),
          ],
          tld: const [".cc"],
          code: "CCK",
          codeNumeric: "166",
          codeShort: "CC",
          cioc: null,
          independent: false,
          unMember: false,
          currencies: const [FiatAud()],
          idd: const Idd(root: 6, suffixes: [1]),
          altSpellings: const ["CC", "Keeling Islands", "Cocos Islands"],
          continent: const Oceania(),
          subregion: const AustraliaAndNewZealand(),
          languages: const [LangEng()],
          translations: cckCountryTranslations,
          latLng: const LatLng(12.1642, 96.871),
          landlocked: false,
          bordersCodes: null,
          areaMetric: 14,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Cocos Islander",
              male: "Cocos Islander",
            ),
          ],
          emoji: "🇨🇨",
          maps: const Maps(
            googleMaps: "3eCdKVpVfMcZyKcK6",
            openStreetMaps: "relation/82636",
          ),
          population: 544,
          gini: null,
          fifa: null,
          car: const Car(sign: "AUS", isRightSide: false),
          timezones: const ["UTC+06:30"],
          hasCoatOfArms: false,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("West Island"),
            latLng: LatLng(-12.17, 96.83),
          ),
          postalCode: null,
          regionalBlocs: null,
        );
}

/// A class that represents the Switzerland country.
class CountryChe extends WorldCountry {
  /// Creates a instance of [CountryChe] (Switzerland country).
  ///
  /// ISO 3166-1 Alpha-3 code: "CHE", ISO 3166-1 Alpha-2 code: "CH".
  const CountryChe()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Swiss Confederation",
            common: "Switzerland",
          ),
          namesNative: const [
            CountryName(
              language: LangFra(),
              official: "Confédération suisse",
              common: "Suisse",
            ),
            CountryName(
              language: LangDeu(),
              official: "Schweizerische Eidgenossenschaft",
              common: "Schweiz",
            ),
            CountryName(
              language: LangIta(),
              official: "Confederazione Svizzera",
              common: "Svizzera",
            ),
            CountryName(
              language: LangRoh(),
              official: "Confederaziun svizra",
              common: "Svizra",
            ),
          ],
          tld: const [".ch"],
          code: "CHE",
          codeNumeric: "756",
          codeShort: "CH",
          cioc: "SUI",
          independent: true,
          unMember: true,
          currencies: const [FiatChf()],
          idd: const Idd(root: 4, suffixes: [1]),
          altSpellings: const [
            "CH",
            "Swiss Confederation",
            "Schweiz",
            "Suisse",
            "Svizzera",
            "Svizra",
          ],
          continent: const Europe(),
          subregion: const WesternEurope(),
          languages: const [LangFra(), LangDeu(), LangIta(), LangRoh()],
          translations: cheCountryTranslations,
          latLng: const LatLng(47, 8),
          landlocked: true,
          bordersCodes: const ["Aut", "Fra", "Ita", "Lie", "Deu"],
          areaMetric: 41284,
          demonyms: const [
            Demonyms(language: LangEng(), female: "Swiss", male: "Swiss"),
            Demonyms(language: LangFra(), female: "Suisse", male: "Suisse"),
          ],
          emoji: "🇨🇭",
          maps: const Maps(
            googleMaps: "uVuZcXaxSx5jLyEC9",
            openStreetMaps: "relation/51701",
          ),
          population: 8654622,
          gini: const Gini(year: 2018, coefficient: 33.1),
          fifa: "SUI",
          car: const Car(sign: "CH"),
          timezones: const ["UTC+01:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Bern"),
            latLng: LatLng(46.92, 7.47),
          ),
          postalCode:
              const PostalCode(format: "####", regExpPattern: r"^(\d{4})$"),
          regionalBlocs: const [BlocEFTA()],
        );
}

/// A class that represents the Chile country.
class CountryChl extends WorldCountry {
  /// Creates a instance of [CountryChl] (Chile country).
  ///
  /// ISO 3166-1 Alpha-3 code: "CHL", ISO 3166-1 Alpha-2 code: "CL".
  const CountryChl()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Republic of Chile",
            common: "Chile",
          ),
          namesNative: const [
            CountryName(
              language: LangSpa(),
              official: "República de Chile",
              common: "Chile",
            ),
          ],
          tld: const [".cl"],
          code: "CHL",
          codeNumeric: "152",
          codeShort: "CL",
          cioc: "CHI",
          independent: true,
          unMember: true,
          currencies: const [FiatClp()],
          idd: const Idd(root: 5, suffixes: [6]),
          altSpellings: const [
            "CL",
            "Republic of Chile",
            "República de Chile",
          ],
          continent: const Americas(),
          subregion: const SouthAmerica(),
          languages: const [LangSpa()],
          translations: chlCountryTranslations,
          latLng: const LatLng(-30, -71),
          landlocked: false,
          bordersCodes: const ["Arg", "Bol", "Per"],
          areaMetric: 756102,
          demonyms: const [
            Demonyms(language: LangEng(), female: "Chilean", male: "Chilean"),
            Demonyms(
              language: LangFra(),
              female: "Chilienne",
              male: "Chilien",
            ),
          ],
          emoji: "🇨🇱",
          maps: const Maps(
            googleMaps: "XboxyNHh2fAjCPNn9",
            openStreetMaps: "relation/167454",
          ),
          population: 19116209,
          gini: const Gini(year: 2017, coefficient: 44.4),
          fifa: "CHI",
          car: const Car(sign: "RCH"),
          timezones: const ["UTC-06:00", "UTC-04:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Santiago"),
            latLng: LatLng(-33.45, -70.67),
          ),
          postalCode: const PostalCode(
            format: "#######",
            regExpPattern: r"^(\d{7})$",
          ),
          regionalBlocs: const [BlocPA(), BlocUSAN()],
        );
}

/// A class that represents the China country.
class CountryChn extends WorldCountry {
  /// Creates a instance of [CountryChn] (China country).
  ///
  /// ISO 3166-1 Alpha-3 code: "CHN", ISO 3166-1 Alpha-2 code: "CN".
  const CountryChn()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "People's Republic of China",
            common: "China",
          ),
          namesNative: const [
            CountryName(
              language: LangZho(),
              official: "中华人民共和国",
              common: "中国",
            ),
          ],
          tld: const [".cn", ".中国", ".中國", ".公司", ".网络"],
          code: "CHN",
          codeNumeric: "156",
          codeShort: "CN",
          cioc: "CHN",
          independent: true,
          unMember: true,
          currencies: const [FiatCny()],
          idd: const Idd(root: 8, suffixes: [6]),
          altSpellings: const [
            "CN",
            "Zhōngguó",
            "Zhongguo",
            "Zhonghua",
            "People's Republic of China",
            "中华人民共和国",
            "Zhōnghuá Rénmín Gònghéguó",
          ],
          continent: const Asia(),
          subregion: const EasternAsia(),
          languages: const [LangZho()],
          translations: chnCountryTranslations,
          latLng: const LatLng(35, 105),
          landlocked: false,
          bordersCodes: const [
            "Afg",
            "Btn",
            "Mmr",
            "Hkg",
            "Ind",
            "Kaz",
            "Npl",
            "Prk",
            "Kgz",
            "Lao",
            "Mac",
            "Mng",
            "Pak",
            "Rus",
            "Tjk",
            "Vnm",
          ],
          areaMetric: 9706961,
          demonyms: const [
            Demonyms(language: LangEng(), female: "Chinese", male: "Chinese"),
            Demonyms(language: LangFra(), female: "Chinoise", male: "Chinois"),
          ],
          emoji: "🇨🇳",
          maps: const Maps(
            googleMaps: "p9qC6vgiFRRXzvGi7",
            openStreetMaps: "relation/270056",
          ),
          population: 1402112000,
          gini: const Gini(year: 2016, coefficient: 38.5),
          fifa: "CHN",
          car: const Car(sign: "RC"),
          timezones: const ["UTC+08:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Beijing"),
            latLng: LatLng(39.92, 116.38),
          ),
          postalCode:
              const PostalCode(format: "######", regExpPattern: r"^(\d{6})$"),
          regionalBlocs: null,
        );
}

/// A class that represents the Ivory Coast country.
class CountryCiv extends WorldCountry {
  /// Creates a instance of [CountryCiv] (Ivory Coast country).
  ///
  /// ISO 3166-1 Alpha-3 code: "CIV", ISO 3166-1 Alpha-2 code: "CI".
  const CountryCiv()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Republic of Côte d'Ivoire",
            common: "Ivory Coast",
          ),
          namesNative: const [
            CountryName(
              language: LangFra(),
              official: "République de Côte d'Ivoire",
              common: "Côte d'Ivoire",
            ),
          ],
          tld: const [".ci"],
          code: "CIV",
          codeNumeric: "384",
          codeShort: "CI",
          cioc: "CIV",
          independent: true,
          unMember: true,
          currencies: const [FiatXof()],
          idd: const Idd(root: 2, suffixes: [25]),
          altSpellings: const [
            "CI",
            "Côte d'Ivoire",
            "Ivory Coast",
            "Republic of Côte d'Ivoire",
            "République de Côte d'Ivoire",
          ],
          continent: const Africa(),
          subregion: const WesternAfrica(),
          languages: const [LangFra()],
          translations: civCountryTranslations,
          latLng: const LatLng(8, -5),
          landlocked: false,
          bordersCodes: const ["Bfa", "Gha", "Gin", "Lbr", "Mli"],
          areaMetric: 322463,
          demonyms: const [
            Demonyms(language: LangEng(), female: "Ivorian", male: "Ivorian"),
            Demonyms(
              language: LangFra(),
              female: "Ivoirienne",
              male: "Ivoirien",
            ),
          ],
          emoji: "🇨🇮",
          maps: const Maps(
            googleMaps: "wKsmN7f5qAeNtGjP6",
            openStreetMaps: "relation/192779",
          ),
          population: 26378275,
          gini: const Gini(year: 2015, coefficient: 41.5),
          fifa: "CIV",
          car: const Car(sign: "CI"),
          timezones: const ["UTC+00:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Yamoussoukro"),
            latLng: LatLng(6.82, -5.27),
          ),
          postalCode: null,
          regionalBlocs: const [BlocAU()],
        );
}

/// A class that represents the Cameroon country.
class CountryCmr extends WorldCountry {
  /// Creates a instance of [CountryCmr] (Cameroon country).
  ///
  /// ISO 3166-1 Alpha-3 code: "CMR", ISO 3166-1 Alpha-2 code: "CM".
  const CountryCmr()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Republic of Cameroon",
            common: "Cameroon",
          ),
          namesNative: const [
            CountryName(
              language: LangEng(),
              official: "Republic of Cameroon",
              common: "Cameroon",
            ),
            CountryName(
              language: LangFra(),
              official: "République du Cameroun",
              common: "Cameroun",
            ),
          ],
          tld: const [".cm"],
          code: "CMR",
          codeNumeric: "120",
          codeShort: "CM",
          cioc: "CMR",
          independent: true,
          unMember: true,
          currencies: const [FiatXaf()],
          idd: const Idd(root: 2, suffixes: [37]),
          altSpellings: const [
            "CM",
            "Republic of Cameroon",
            "République du Cameroun",
          ],
          continent: const Africa(),
          subregion: const MiddleAfrica(),
          languages: const [LangEng(), LangFra()],
          translations: cmrCountryTranslations,
          latLng: const LatLng(6, 12),
          landlocked: false,
          bordersCodes: const ["Caf", "Tcd", "Cog", "Gnq", "Gab", "Nga"],
          areaMetric: 475442,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Cameroonian",
              male: "Cameroonian",
            ),
            Demonyms(
              language: LangFra(),
              female: "Camerounaise",
              male: "Camerounais",
            ),
          ],
          emoji: "🇨🇲",
          maps: const Maps(
            googleMaps: "JqiipHgFboG3rBJh9",
            openStreetMaps: "relation/192830",
          ),
          population: 26545864,
          gini: const Gini(year: 2014, coefficient: 46.6),
          fifa: "CMR",
          car: const Car(sign: "CAM"),
          timezones: const ["UTC+01:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Yaoundé"),
            latLng: LatLng(3.85, 11.5),
          ),
          postalCode: null,
          regionalBlocs: const [BlocAU()],
        );
}

/// A class that represents the DR Congo country.
class CountryCod extends WorldCountry {
  /// Creates a instance of [CountryCod] (DR Congo country).
  ///
  /// ISO 3166-1 Alpha-3 code: "COD", ISO 3166-1 Alpha-2 code: "CD".
  const CountryCod()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Democratic Republic of the Congo",
            common: "DR Congo",
          ),
          namesNative: const [
            CountryName(
              language: LangFra(),
              official: "République démocratique du Congo",
              common: "RD Congo",
            ),
            CountryName(
              language: LangKon(),
              official: "Repubilika ya Kongo Demokratiki",
              common: "Repubilika ya Kongo Demokratiki",
            ),
            CountryName(
              language: LangLin(),
              official: "Republiki ya Kongó Demokratiki",
              common: "Republiki ya Kongó Demokratiki",
            ),
            CountryName(
              language: LangSwa(),
              official: "Jamhuri ya Kidemokrasia ya Kongo",
              common: "Jamhuri ya Kidemokrasia ya Kongo",
            ),
          ],
          tld: const [".cd"],
          code: "COD",
          codeNumeric: "180",
          codeShort: "CD",
          cioc: "COD",
          independent: true,
          unMember: true,
          currencies: const [FiatCdf()],
          idd: const Idd(root: 2, suffixes: [43]),
          altSpellings: const [
            "CD",
            "DR Congo",
            "Congo-Kinshasa",
            "Congo, the Democratic Republic of the",
            "DRC",
          ],
          continent: const Africa(),
          subregion: const MiddleAfrica(),
          languages: const [LangFra(), LangKon(), LangLin(), LangSwa()],
          translations: codCountryTranslations,
          latLng: const LatLng(0, 25),
          landlocked: false,
          bordersCodes: const [
            "Ago",
            "Bdi",
            "Caf",
            "Cog",
            "Rwa",
            "Ssd",
            "Tza",
            "Uga",
            "Zmb",
          ],
          areaMetric: 2344858,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Congolese",
              male: "Congolese",
            ),
            Demonyms(
              language: LangFra(),
              female: "Congolaise",
              male: "Congolais",
            ),
          ],
          emoji: "🇨🇩",
          maps: const Maps(
            googleMaps: "KfhNVn6VqdZXWu8n9",
            openStreetMaps: "relation/192795",
          ),
          population: 108407721,
          gini: const Gini(year: 2012, coefficient: 42.1),
          fifa: "COD",
          car: const Car(sign: "CGO"),
          timezones: const ["UTC+01:00", "UTC+02:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Kinshasa"),
            latLng: LatLng(-4.32, 15.3),
          ),
          postalCode: null,
          regionalBlocs: const [BlocAU()],
        );
}

/// A class that represents the Republic of the Congo country.
class CountryCog extends WorldCountry {
  /// Creates a instance of [CountryCog] (Republic of the Congo country).
  ///
  /// ISO 3166-1 Alpha-3 code: "COG", ISO 3166-1 Alpha-2 code: "CG".
  const CountryCog()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Republic of the Congo",
            common: "Republic of the Congo",
          ),
          namesNative: const [
            CountryName(
              language: LangFra(),
              official: "République du Congo",
              common: "République du Congo",
            ),
            CountryName(
              language: LangKon(),
              official: "Repubilika ya Kongo",
              common: "Repubilika ya Kongo",
            ),
            CountryName(
              language: LangLin(),
              official: "Republíki ya Kongó",
              common: "Republíki ya Kongó",
            ),
          ],
          tld: const [".cg"],
          code: "COG",
          codeNumeric: "178",
          codeShort: "CG",
          cioc: "CGO",
          independent: true,
          unMember: true,
          currencies: const [FiatXaf()],
          idd: const Idd(root: 2, suffixes: [42]),
          altSpellings: const ["CG", "Congo", "Congo-Brazzaville"],
          continent: const Africa(),
          subregion: const MiddleAfrica(),
          languages: const [LangFra(), LangKon(), LangLin()],
          translations: cogCountryTranslations,
          latLng: const LatLng(-1, 15),
          landlocked: false,
          bordersCodes: const ["Ago", "Cmr", "Caf", "Cod", "Gab"],
          areaMetric: 342000,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Congolese",
              male: "Congolese",
            ),
            Demonyms(
              language: LangFra(),
              female: "Congolaise",
              male: "Congolais",
            ),
          ],
          emoji: "🇨🇬",
          maps: const Maps(
            googleMaps: "Phf5dDDKdfCtuBTb6",
            openStreetMaps: "relation/192794",
          ),
          population: 5657000,
          gini: const Gini(year: 2011, coefficient: 48.9),
          fifa: "CGO",
          car: const Car(sign: "RCB"),
          timezones: const ["UTC+01:00"],
          hasCoatOfArms: false,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Brazzaville"),
            latLng: LatLng(-4.25, 15.28),
          ),
          postalCode: null,
          regionalBlocs: const [BlocAU()],
        );
}

/// A class that represents the Cook Islands country.
class CountryCok extends WorldCountry {
  /// Creates a instance of [CountryCok] (Cook Islands country).
  ///
  /// ISO 3166-1 Alpha-3 code: "COK", ISO 3166-1 Alpha-2 code: "CK".
  const CountryCok()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Cook Islands",
            common: "Cook Islands",
          ),
          namesNative: const [
            CountryName(
              language: LangEng(),
              official: "Cook Islands",
              common: "Cook Islands",
            ),
          ],
          tld: const [".ck"],
          code: "COK",
          codeNumeric: "184",
          codeShort: "CK",
          cioc: "COK",
          independent: false,
          unMember: false,
          currencies: const [FiatNzd()],
          idd: const Idd(root: 6, suffixes: [82]),
          altSpellings: const ["CK", "Kūki 'Āirani"],
          continent: const Oceania(),
          subregion: const Polynesia(),
          languages: const [LangEng()],
          translations: cokCountryTranslations,
          latLng: const LatLng(-21.23333333, -159.76666666),
          landlocked: false,
          bordersCodes: null,
          areaMetric: 236,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Cook Islander",
              male: "Cook Islander",
            ),
            Demonyms(
              language: LangFra(),
              female: "Cookienne",
              male: "Cookien",
            ),
          ],
          emoji: "🇨🇰",
          maps: const Maps(
            googleMaps: "nrGZrvWRGB4WHgDC9",
            openStreetMaps: "relation/2184233",
          ),
          population: 18100,
          gini: null,
          fifa: "COK",
          car: const Car(sign: "NZ", isRightSide: false),
          timezones: const ["UTC-10:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Avarua"),
            latLng: LatLng(-21.2, -159.77),
          ),
          postalCode: null,
          regionalBlocs: null,
        );
}

/// A class that represents the Colombia country.
class CountryCol extends WorldCountry {
  /// Creates a instance of [CountryCol] (Colombia country).
  ///
  /// ISO 3166-1 Alpha-3 code: "COL", ISO 3166-1 Alpha-2 code: "CO".
  const CountryCol()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Republic of Colombia",
            common: "Colombia",
          ),
          namesNative: const [
            CountryName(
              language: LangSpa(),
              official: "República de Colombia",
              common: "Colombia",
            ),
          ],
          tld: const [".co"],
          code: "COL",
          codeNumeric: "170",
          codeShort: "CO",
          cioc: "COL",
          independent: true,
          unMember: true,
          currencies: const [FiatCop()],
          idd: const Idd(root: 5, suffixes: [7]),
          altSpellings: const [
            "CO",
            "Republic of Colombia",
            "República de Colombia",
          ],
          continent: const Americas(),
          subregion: const SouthAmerica(),
          languages: const [LangSpa()],
          translations: colCountryTranslations,
          latLng: const LatLng(4, -72),
          landlocked: false,
          bordersCodes: const ["Bra", "Ecu", "Pan", "Per", "Ven"],
          areaMetric: 1141748,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Colombian",
              male: "Colombian",
            ),
            Demonyms(
              language: LangFra(),
              female: "Colombienne",
              male: "Colombien",
            ),
          ],
          emoji: "🇨🇴",
          maps: const Maps(
            googleMaps: "RdwTG8e7gPwS62oR6",
            openStreetMaps: "relation/120027",
          ),
          population: 50882884,
          gini: const Gini(year: 2019, coefficient: 51.3),
          fifa: "COL",
          car: const Car(sign: "CO"),
          timezones: const ["UTC-05:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Bogotá"),
            latLng: LatLng(4.71, -74.07),
          ),
          postalCode: null,
          regionalBlocs: const [BlocPA(), BlocUSAN()],
        );
}

/// A class that represents the Comoros country.
class CountryCom extends WorldCountry {
  /// Creates a instance of [CountryCom] (Comoros country).
  ///
  /// ISO 3166-1 Alpha-3 code: "COM", ISO 3166-1 Alpha-2 code: "KM".
  const CountryCom()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Union of the Comoros",
            common: "Comoros",
          ),
          namesNative: const [
            CountryName(
              language: LangAra(),
              official: "الاتحاد القمري",
              common: "القمر‎",
            ),
            CountryName(
              language: LangFra(),
              official: "Union des Comores",
              common: "Comores",
            ),
          ],
          tld: const [".km"],
          code: "COM",
          codeNumeric: "174",
          codeShort: "KM",
          cioc: "COM",
          independent: true,
          unMember: true,
          currencies: const [FiatKmf()],
          idd: const Idd(root: 2, suffixes: [69]),
          altSpellings: const [
            "KM",
            "Union of the Comoros",
            "Union des Comores",
            "Udzima wa Komori",
            "al-Ittiḥād al-Qumurī",
          ],
          continent: const Africa(),
          subregion: const EasternAfrica(),
          languages: const [LangAra(), LangFra()],
          translations: comCountryTranslations,
          latLng: const LatLng(-12.16666666, 44.25),
          landlocked: false,
          bordersCodes: null,
          areaMetric: 1862,
          demonyms: const [
            Demonyms(language: LangEng(), female: "Comoran", male: "Comoran"),
            Demonyms(
              language: LangFra(),
              female: "Comorienne",
              male: "Comorien",
            ),
          ],
          emoji: "🇰🇲",
          maps: const Maps(
            googleMaps: "eas4GP28C1GyStnu6",
            openStreetMaps: "relation/535790",
          ),
          population: 869595,
          gini: const Gini(year: 2014, coefficient: 45.3),
          fifa: "COM",
          car: const Car(sign: "COM"),
          timezones: const ["UTC+03:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Moroni"),
            latLng: LatLng(-11.7, 43.23),
          ),
          postalCode: null,
          regionalBlocs: const [BlocAU(), BlocAL()],
        );
}

/// A class that represents the Cape Verde country.
class CountryCpv extends WorldCountry {
  /// Creates a instance of [CountryCpv] (Cape Verde country).
  ///
  /// ISO 3166-1 Alpha-3 code: "CPV", ISO 3166-1 Alpha-2 code: "CV".
  const CountryCpv()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Republic of Cabo Verde",
            common: "Cape Verde",
          ),
          namesNative: const [
            CountryName(
              language: LangPor(),
              official: "República de Cabo Verde",
              common: "Cabo Verde",
            ),
          ],
          tld: const [".cv"],
          code: "CPV",
          codeNumeric: "132",
          codeShort: "CV",
          cioc: "CPV",
          independent: true,
          unMember: true,
          currencies: const [FiatCve()],
          idd: const Idd(root: 2, suffixes: [38]),
          altSpellings: const [
            "CV",
            "Republic of Cabo Verde",
            "República de Cabo Verde",
          ],
          continent: const Africa(),
          subregion: const WesternAfrica(),
          languages: const [LangPor()],
          translations: cpvCountryTranslations,
          latLng: const LatLng(16.5388, -23.0418),
          landlocked: false,
          bordersCodes: null,
          areaMetric: 4033,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Cape Verdian",
              male: "Cape Verdian",
            ),
            Demonyms(
              language: LangFra(),
              female: "Cap-verdienne",
              male: "Cap-verdien",
            ),
          ],
          emoji: "🇨🇻",
          maps: const Maps(
            googleMaps: "Kc9vy5ChjuiAgMfXA",
            openStreetMaps: "relation/535774",
          ),
          population: 555988,
          gini: const Gini(year: 2015, coefficient: 42.4),
          fifa: "CPV",
          car: const Car(sign: "CV"),
          timezones: const ["UTC-01:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Praia"),
            latLng: LatLng(14.92, -23.52),
          ),
          postalCode:
              const PostalCode(format: "####", regExpPattern: r"^(\d{4})$"),
          regionalBlocs: const [BlocAU()],
        );
}

/// A class that represents the Costa Rica country.
class CountryCri extends WorldCountry {
  /// Creates a instance of [CountryCri] (Costa Rica country).
  ///
  /// ISO 3166-1 Alpha-3 code: "CRI", ISO 3166-1 Alpha-2 code: "CR".
  const CountryCri()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Republic of Costa Rica",
            common: "Costa Rica",
          ),
          namesNative: const [
            CountryName(
              language: LangSpa(),
              official: "República de Costa Rica",
              common: "Costa Rica",
            ),
          ],
          tld: const [".cr"],
          code: "CRI",
          codeNumeric: "188",
          codeShort: "CR",
          cioc: "CRC",
          independent: true,
          unMember: true,
          currencies: const [FiatCrc()],
          idd: const Idd(root: 50, suffixes: [6]),
          altSpellings: const [
            "CR",
            "Republic of Costa Rica",
            "República de Costa Rica",
          ],
          continent: const Americas(),
          subregion: const CentralAmerica(),
          languages: const [LangSpa()],
          translations: criCountryTranslations,
          latLng: const LatLng(10, -84),
          landlocked: false,
          bordersCodes: const ["Nic", "Pan"],
          areaMetric: 51100,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Costa Rican",
              male: "Costa Rican",
            ),
            Demonyms(
              language: LangFra(),
              female: "Costaricaine",
              male: "Costaricain",
            ),
          ],
          emoji: "🇨🇷",
          maps: const Maps(
            googleMaps: "RFiwytjvNrpfKN7k6",
            openStreetMaps: "relation/287667",
          ),
          population: 5094114,
          gini: const Gini(year: 2019, coefficient: 48.2),
          fifa: "CRC",
          car: const Car(sign: "CR"),
          timezones: const ["UTC-06:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("San José"),
            latLng: LatLng(9.93, -84.09),
          ),
          postalCode:
              const PostalCode(format: "####", regExpPattern: r"^(\d{4})$"),
          regionalBlocs: const [BlocCAIS()],
        );
}

/// A class that represents the Cuba country.
class CountryCub extends WorldCountry {
  /// Creates a instance of [CountryCub] (Cuba country).
  ///
  /// ISO 3166-1 Alpha-3 code: "CUB", ISO 3166-1 Alpha-2 code: "CU".
  const CountryCub()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Republic of Cuba",
            common: "Cuba",
          ),
          namesNative: const [
            CountryName(
              language: LangSpa(),
              official: "República de Cuba",
              common: "Cuba",
            ),
          ],
          tld: const [".cu"],
          code: "CUB",
          codeNumeric: "192",
          codeShort: "CU",
          cioc: "CUB",
          independent: true,
          unMember: true,
          currencies: const [FiatCuc(), FiatCup()],
          idd: const Idd(root: 5, suffixes: [3]),
          altSpellings: const ["CU", "Republic of Cuba", "República de Cuba"],
          continent: const Americas(),
          subregion: const Caribbean(),
          languages: const [LangSpa()],
          translations: cubCountryTranslations,
          latLng: const LatLng(21.5, -80),
          landlocked: false,
          bordersCodes: null,
          areaMetric: 109884,
          demonyms: const [
            Demonyms(language: LangEng(), female: "Cuban", male: "Cuban"),
            Demonyms(language: LangFra(), female: "Cubaine", male: "Cubain"),
          ],
          emoji: "🇨🇺",
          maps: const Maps(
            googleMaps: "1dDw1QfZspfMUTm99",
            openStreetMaps: "relation/307833",
          ),
          population: 11326616,
          gini: null,
          fifa: "CUB",
          car: const Car(sign: "C"),
          timezones: const ["UTC-05:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Havana"),
            latLng: LatLng(23.12, -82.35),
          ),
          postalCode: const PostalCode(
            format: "CP #####",
            regExpPattern: r"^(?:CP)*(\d{5})$",
          ),
          regionalBlocs: null,
        );
}

/// A class that represents the Curaçao country.
class CountryCuw extends WorldCountry {
  /// Creates a instance of [CountryCuw] (Curaçao country).
  ///
  /// ISO 3166-1 Alpha-3 code: "CUW", ISO 3166-1 Alpha-2 code: "CW".
  const CountryCuw()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "WorldCountry of Curaçao",
            common: "Curaçao",
          ),
          namesNative: const [
            CountryName(
              language: LangEng(),
              official: "WorldCountry of Curaçao",
              common: "Curaçao",
            ),
            CountryName(
              language: LangNld(),
              official: "Land Curaçao",
              common: "Curaçao",
            ),
          ],
          tld: const [".cw"],
          code: "CUW",
          codeNumeric: "531",
          codeShort: "CW",
          cioc: null,
          independent: false,
          unMember: false,
          currencies: const [FiatAng()],
          idd: const Idd(root: 5, suffixes: [99]),
          altSpellings: const [
            "CW",
            "Curacao",
            "Kòrsou",
            "WorldCountry of Curaçao",
            "Land Curaçao",
            "Pais Kòrsou",
          ],
          continent: const Americas(),
          subregion: const Caribbean(),
          languages: const [LangEng(), LangNld()],
          translations: cuwCountryTranslations,
          latLng: const LatLng(12.116667, -68.933333),
          landlocked: false,
          bordersCodes: null,
          areaMetric: 444,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Curaçaoan",
              male: "Curaçaoan",
            ),
            Demonyms(
              language: LangFra(),
              female: "Curacienne",
              male: "Curacien",
            ),
          ],
          emoji: "🇨🇼",
          maps: const Maps(
            googleMaps: "9D3hTeA3qKaRT7S16",
            openStreetMaps: "relation/1216719",
          ),
          population: 155014,
          gini: null,
          fifa: "CUW",
          car: const Car(sign: "CW"),
          timezones: const ["UTC-04:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Willemstad"),
            latLng: LatLng(12.1, -68.92),
          ),
          postalCode: null,
          regionalBlocs: null,
        );
}

/// A class that represents the Christmas Island country.
class CountryCxr extends WorldCountry {
  /// Creates a instance of [CountryCxr] (Christmas Island country).
  ///
  /// ISO 3166-1 Alpha-3 code: "CXR", ISO 3166-1 Alpha-2 code: "CX".
  const CountryCxr()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Territory of Christmas Island",
            common: "Christmas Island",
          ),
          namesNative: const [
            CountryName(
              language: LangEng(),
              official: "Territory of Christmas Island",
              common: "Christmas Island",
            ),
          ],
          tld: const [".cx"],
          code: "CXR",
          codeNumeric: "162",
          codeShort: "CX",
          cioc: null,
          independent: false,
          unMember: false,
          currencies: const [FiatAud()],
          idd: const Idd(root: 6, suffixes: [1]),
          altSpellings: const ["CX", "Territory of Christmas Island"],
          continent: const Oceania(),
          subregion: const AustraliaAndNewZealand(),
          languages: const [LangEng()],
          translations: cxrCountryTranslations,
          latLng: const LatLng(-10.5, 105.66666666),
          landlocked: false,
          bordersCodes: null,
          areaMetric: 135,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Christmas Islander",
              male: "Christmas Islander",
            ),
          ],
          emoji: "🇨🇽",
          maps: const Maps(
            googleMaps: "ZC17hHsQZpShN5wk9",
            openStreetMaps: "relation/6365444",
          ),
          population: 2072,
          gini: null,
          fifa: null,
          car: const Car(sign: "AUS", isRightSide: false),
          timezones: const ["UTC+07:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Flying Fish Cove"),
            latLng: LatLng(-10.42, 105.68),
          ),
          postalCode:
              const PostalCode(format: "####", regExpPattern: r"^(\d{4})$"),
          regionalBlocs: null,
        );
}

/// A class that represents the Cayman Islands country.
class CountryCym extends WorldCountry {
  /// Creates a instance of [CountryCym] (Cayman Islands country).
  ///
  /// ISO 3166-1 Alpha-3 code: "CYM", ISO 3166-1 Alpha-2 code: "KY".
  const CountryCym()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Cayman Islands",
            common: "Cayman Islands",
          ),
          namesNative: const [
            CountryName(
              language: LangEng(),
              official: "Cayman Islands",
              common: "Cayman Islands",
            ),
          ],
          tld: const [".ky"],
          code: "CYM",
          codeNumeric: "136",
          codeShort: "KY",
          cioc: "CAY",
          independent: false,
          unMember: false,
          currencies: const [FiatKyd()],
          idd: const Idd(root: 1, suffixes: [345]),
          altSpellings: const ["KY"],
          continent: const Americas(),
          subregion: const Caribbean(),
          languages: const [LangEng()],
          translations: cymCountryTranslations,
          latLng: const LatLng(19.3133, -81.2546),
          landlocked: false,
          bordersCodes: null,
          areaMetric: 264,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Caymanian",
              male: "Caymanian",
            ),
            Demonyms(
              language: LangFra(),
              female: "Caïmanienne",
              male: "Caïmanien",
            ),
          ],
          emoji: "🇰🇾",
          maps: const Maps(
            googleMaps: "P3ZVXX3LH63t91hL8",
            openStreetMaps: "relation/7269765",
          ),
          population: 65720,
          gini: null,
          fifa: "CAY",
          car: const Car(sign: "GB", isRightSide: false),
          timezones: const ["UTC-05:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("George Town"),
            latLng: LatLng(19.3, -81.38),
          ),
          postalCode: null,
          regionalBlocs: null,
        );
}

/// A class that represents the Cyprus country.
class CountryCyp extends WorldCountry {
  /// Creates a instance of [CountryCyp] (Cyprus country).
  ///
  /// ISO 3166-1 Alpha-3 code: "CYP", ISO 3166-1 Alpha-2 code: "CY".
  const CountryCyp()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Republic of Cyprus",
            common: "Cyprus",
          ),
          namesNative: const [
            CountryName(
              language: LangEll(),
              official: "Δημοκρατία της Κύπρος",
              common: "Κύπρος",
            ),
            CountryName(
              language: LangTur(),
              official: "Kıbrıs Cumhuriyeti",
              common: "Kıbrıs",
            ),
          ],
          tld: const [".cy"],
          code: "CYP",
          codeNumeric: "196",
          codeShort: "CY",
          cioc: "CYP",
          independent: true,
          unMember: true,
          currencies: const [FiatEur()],
          idd: const Idd(root: 3, suffixes: [57]),
          altSpellings: const [
            "CY",
            "Kýpros",
            "Kıbrıs",
            "Republic of Cyprus",
            "Κυπριακή Δημοκρατία",
            "Kıbrıs Cumhuriyeti",
          ],
          continent: const Europe(),
          subregion: const SouthernEurope(),
          languages: const [LangEll(), LangTur()],
          translations: cypCountryTranslations,
          latLng: const LatLng(35, 33),
          landlocked: false,
          bordersCodes: null,
          areaMetric: 9251,
          demonyms: const [
            Demonyms(language: LangEng(), female: "Cypriot", male: "Cypriot"),
            Demonyms(
              language: LangFra(),
              female: "Chypriote",
              male: "Chypriote",
            ),
          ],
          emoji: "🇨🇾",
          maps: const Maps(
            googleMaps: "77hPBRdLid8yD5Bm7",
            openStreetMaps: "relation/307787",
          ),
          population: 1207361,
          gini: const Gini(year: 2018, coefficient: 32.7),
          fifa: "CYP",
          car: const Car(sign: "CY", isRightSide: false),
          timezones: const ["UTC+02:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Nicosia"),
            latLng: LatLng(35.17, 33.37),
          ),
          postalCode:
              const PostalCode(format: "####", regExpPattern: r"^(\d{4})$"),
          regionalBlocs: const [BlocEU()],
        );
}

/// A class that represents the Czechia country.
class CountryCze extends WorldCountry {
  /// Creates a instance of [CountryCze] (Czechia country).
  ///
  /// ISO 3166-1 Alpha-3 code: "CZE", ISO 3166-1 Alpha-2 code: "CZ".
  const CountryCze()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Czech Republic",
            common: "Czechia",
          ),
          namesNative: const [
            CountryName(
              language: LangCes(),
              official: "Česká republika",
              common: "Česko",
            ),
          ],
          tld: const [".cz"],
          code: "CZE",
          codeNumeric: "203",
          codeShort: "CZ",
          cioc: "CZE",
          independent: true,
          unMember: true,
          currencies: const [FiatCzk()],
          idd: const Idd(root: 4, suffixes: [20]),
          altSpellings: const ["CZ", "Česká republika", "Česko"],
          continent: const Europe(),
          subregion: const CentralEurope(),
          languages: const [LangCes()],
          translations: czeCountryTranslations,
          latLng: const LatLng(49.75, 15.5),
          landlocked: true,
          bordersCodes: const ["Aut", "Deu", "Pol", "Svk"],
          areaMetric: 78865,
          demonyms: const [
            Demonyms(language: LangEng(), female: "Czech", male: "Czech"),
            Demonyms(language: LangFra(), female: "Tchèque", male: "Tchèque"),
          ],
          emoji: "🇨🇿",
          maps: const Maps(
            googleMaps: "47dmgeXMZyhDHyQW8",
            openStreetMaps: "relation/51684",
          ),
          population: 10698896,
          gini: const Gini(year: 2018, coefficient: 25),
          fifa: "CZE",
          car: const Car(sign: "CZ"),
          timezones: const ["UTC+01:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Prague"),
            latLng: LatLng(50.08, 14.47),
          ),
          postalCode: const PostalCode(format: "### ##"),
          regionalBlocs: const [BlocEU()],
        );
}

/// A class that represents the Germany country.
class CountryDeu extends WorldCountry {
  /// Creates a instance of [CountryDeu] (Germany country).
  ///
  /// ISO 3166-1 Alpha-3 code: "DEU", ISO 3166-1 Alpha-2 code: "DE".
  const CountryDeu()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Federal Republic of Germany",
            common: "Germany",
          ),
          namesNative: const [
            CountryName(
              language: LangDeu(),
              official: "Bundesrepublik Deutschland",
              common: "Deutschland",
            ),
          ],
          tld: const [".de"],
          code: "DEU",
          codeNumeric: "276",
          codeShort: "DE",
          cioc: "GER",
          independent: true,
          unMember: true,
          currencies: const [FiatEur()],
          idd: const Idd(root: 4, suffixes: [9]),
          altSpellings: const [
            "DE",
            "Federal Republic of Germany",
            "Bundesrepublik Deutschland",
          ],
          continent: const Europe(),
          subregion: const WesternEurope(),
          languages: const [LangDeu()],
          translations: deuCountryTranslations,
          latLng: const LatLng(51, 9),
          landlocked: false,
          bordersCodes: const [
            "Aut",
            "Bel",
            "Cze",
            "Dnk",
            "Fra",
            "Lux",
            "Nld",
            "Pol",
            "Che",
          ],
          areaMetric: 357114,
          demonyms: const [
            Demonyms(language: LangEng(), female: "German", male: "German"),
            Demonyms(
              language: LangFra(),
              female: "Allemande",
              male: "Allemand",
            ),
          ],
          emoji: "🇩🇪",
          maps: const Maps(
            googleMaps: "mD9FBMq1nvXUBrkv6",
            openStreetMaps: "relation/51477",
          ),
          population: 83240525,
          gini: const Gini(year: 2016, coefficient: 31.9),
          fifa: "GER",
          car: const Car(sign: "DY"),
          timezones: const ["UTC+01:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Berlin"),
            latLng: LatLng(52.52, 13.4),
          ),
          postalCode: const PostalCode(),
          regionalBlocs: const [BlocEU()],
        );
}

/// A class that represents the Djibouti country.
class CountryDji extends WorldCountry {
  /// Creates a instance of [CountryDji] (Djibouti country).
  ///
  /// ISO 3166-1 Alpha-3 code: "DJI", ISO 3166-1 Alpha-2 code: "DJ".
  const CountryDji()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Republic of Djibouti",
            common: "Djibouti",
          ),
          namesNative: const [
            CountryName(
              language: LangAra(),
              official: "جمهورية جيبوتي",
              common: "جيبوتي‎",
            ),
            CountryName(
              language: LangFra(),
              official: "République de Djibouti",
              common: "Djibouti",
            ),
          ],
          tld: const [".dj"],
          code: "DJI",
          codeNumeric: "262",
          codeShort: "DJ",
          cioc: "DJI",
          independent: true,
          unMember: true,
          currencies: const [FiatDjf()],
          idd: const Idd(root: 2, suffixes: [53]),
          altSpellings: const [
            "DJ",
            "Jabuuti",
            "Gabuuti",
            "Republic of Djibouti",
            "République de Djibouti",
            "Gabuutih Ummuuno",
            "Jamhuuriyadda Jabuuti",
          ],
          continent: const Africa(),
          subregion: const EasternAfrica(),
          languages: const [LangAra(), LangFra()],
          translations: djiCountryTranslations,
          latLng: const LatLng(11.5, 43),
          landlocked: false,
          bordersCodes: const ["Eri", "Eth", "Som"],
          areaMetric: 23200,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Djibouti",
              male: "Djibouti",
            ),
            Demonyms(
              language: LangFra(),
              female: "Djiboutienne",
              male: "Djiboutien",
            ),
          ],
          emoji: "🇩🇯",
          maps: const Maps(
            googleMaps: "V1HWfzN3bS1kwf4C6",
            openStreetMaps: "relation/192801",
          ),
          population: 988002,
          gini: const Gini(year: 2017, coefficient: 41.6),
          fifa: "DJI",
          car: const Car(sign: "DJI"),
          timezones: const ["UTC+03:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Djibouti"),
            latLng: LatLng(11.58, 43.15),
          ),
          postalCode: null,
          regionalBlocs: const [BlocAU(), BlocAL()],
        );
}

/// A class that represents the Dominica country.
class CountryDma extends WorldCountry {
  /// Creates a instance of [CountryDma] (Dominica country).
  ///
  /// ISO 3166-1 Alpha-3 code: "DMA", ISO 3166-1 Alpha-2 code: "DM".
  const CountryDma()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Commonwealth of Dominica",
            common: "Dominica",
          ),
          namesNative: const [
            CountryName(
              language: LangEng(),
              official: "Commonwealth of Dominica",
              common: "Dominica",
            ),
          ],
          tld: const [".dm"],
          code: "DMA",
          codeNumeric: "212",
          codeShort: "DM",
          cioc: "DMA",
          independent: true,
          unMember: true,
          currencies: const [FiatXcd()],
          idd: const Idd(root: 1, suffixes: [767]),
          altSpellings: const [
            "DM",
            "Dominique",
            "Wai‘tu kubuli",
            "Commonwealth of Dominica",
          ],
          continent: const Americas(),
          subregion: const Caribbean(),
          languages: const [LangEng()],
          translations: dmaCountryTranslations,
          latLng: const LatLng(15.41666666, -61.33333333),
          landlocked: false,
          bordersCodes: null,
          areaMetric: 751,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Dominican",
              male: "Dominican",
            ),
            Demonyms(
              language: LangFra(),
              female: "Dominiquaise",
              male: "Dominiquais",
            ),
          ],
          emoji: "🇩🇲",
          maps: const Maps(
            googleMaps: "HSKdHYpFC8oHHuyV7",
            openStreetMaps: "relation/307823",
          ),
          population: 71991,
          gini: null,
          fifa: "DMA",
          car: const Car(sign: "WD", isRightSide: false),
          timezones: const ["UTC-04:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Roseau"),
            latLng: LatLng(15.3, -61.4),
          ),
          postalCode: null,
          regionalBlocs: null,
        );
}

/// A class that represents the Denmark country.
class CountryDnk extends WorldCountry {
  /// Creates a instance of [CountryDnk] (Denmark country).
  ///
  /// ISO 3166-1 Alpha-3 code: "DNK", ISO 3166-1 Alpha-2 code: "DK".
  const CountryDnk()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Kingdom of Denmark",
            common: "Denmark",
          ),
          namesNative: const [
            CountryName(
              language: LangDan(),
              official: "Kongeriget Danmark",
              common: "Danmark",
            ),
          ],
          tld: const [".dk"],
          code: "DNK",
          codeNumeric: "208",
          codeShort: "DK",
          cioc: "DEN",
          independent: true,
          unMember: true,
          currencies: const [FiatDkk()],
          idd: const Idd(root: 4, suffixes: [5]),
          altSpellings: const [
            "DK",
            "Danmark",
            "Kingdom of Denmark",
            "Kongeriget Danmark",
          ],
          continent: const Europe(),
          subregion: const NorthernEurope(),
          languages: const [LangDan()],
          translations: dnkCountryTranslations,
          latLng: const LatLng(56, 10),
          landlocked: false,
          bordersCodes: const ["Deu"],
          areaMetric: 43094,
          demonyms: const [
            Demonyms(language: LangEng(), female: "Danish", male: "Danish"),
            Demonyms(language: LangFra(), female: "Danoise", male: "Danois"),
          ],
          emoji: "🇩🇰",
          maps: const Maps(
            googleMaps: "UddGPN7hAyrtpFiT6",
            openStreetMaps: "relation/50046",
          ),
          population: 5831404,
          gini: const Gini(year: 2018, coefficient: 28.2),
          fifa: "DEN",
          car: const Car(sign: "DK"),
          timezones: const [
            "UTC-04:00",
            "UTC-03:00",
            "UTC-01:00",
            "UTC+00:00",
            "UTC+01:00",
          ],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Copenhagen"),
            latLng: LatLng(55.67, 12.58),
          ),
          postalCode:
              const PostalCode(format: "####", regExpPattern: r"^(\d{4})$"),
          regionalBlocs: const [BlocEU()],
        );
}

/// A class that represents the Dominican Republic country.
class CountryDom extends WorldCountry {
  /// Creates a instance of [CountryDom] (Dominican Republic country).
  ///
  /// ISO 3166-1 Alpha-3 code: "DOM", ISO 3166-1 Alpha-2 code: "DO".
  const CountryDom()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Dominican Republic",
            common: "Dominican Republic",
          ),
          namesNative: const [
            CountryName(
              language: LangSpa(),
              official: "República Dominicana",
              common: "República Dominicana",
            ),
          ],
          tld: const [".do"],
          code: "DOM",
          codeNumeric: "214",
          codeShort: "DO",
          cioc: "DOM",
          independent: true,
          unMember: true,
          currencies: const [FiatDop()],
          idd: const Idd(root: 1, suffixes: [809, 829, 849]),
          altSpellings: const ["DO"],
          continent: const Americas(),
          subregion: const Caribbean(),
          languages: const [LangSpa()],
          translations: domCountryTranslations,
          latLng: const LatLng(19, -70.66666666),
          landlocked: false,
          bordersCodes: const ["Hti"],
          areaMetric: 48671,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Dominican",
              male: "Dominican",
            ),
            Demonyms(
              language: LangFra(),
              female: "Dominicaine",
              male: "Dominicain",
            ),
          ],
          emoji: "🇩🇴",
          maps: const Maps(
            googleMaps: "soxooTHxEeiAbn3UA",
            openStreetMaps: "relation/307828",
          ),
          population: 10847904,
          gini: const Gini(year: 2019, coefficient: 41.9),
          fifa: "DOM",
          car: const Car(sign: "DOM"),
          timezones: const ["UTC-04:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Santo Domingo"),
            latLng: LatLng(18.47, -69.9),
          ),
          postalCode: const PostalCode(),
          regionalBlocs: const [BlocCARICOM(), BlocCAIS()],
        );
}

/// A class that represents the Algeria country.
class CountryDza extends WorldCountry {
  /// Creates a instance of [CountryDza] (Algeria country).
  ///
  /// ISO 3166-1 Alpha-3 code: "DZA", ISO 3166-1 Alpha-2 code: "DZ".
  const CountryDza()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "People's Democratic Republic of Algeria",
            common: "Algeria",
          ),
          namesNative: const [
            CountryName(
              language: LangAra(),
              official: "الجمهورية الديمقراطية الشعبية الجزائرية",
              common: "الجزائر",
            ),
          ],
          tld: const [".dz", "الجزائر."],
          code: "DZA",
          codeNumeric: "012",
          codeShort: "DZ",
          cioc: "ALG",
          independent: true,
          unMember: true,
          currencies: const [FiatDzd()],
          idd: const Idd(root: 2, suffixes: [13]),
          altSpellings: const ["DZ", "Dzayer", "Algérie"],
          continent: const Africa(),
          subregion: const NorthernAfrica(),
          languages: const [LangAra()],
          translations: dzaCountryTranslations,
          latLng: const LatLng(28, 3),
          landlocked: false,
          bordersCodes: const [
            "Tun",
            "Lby",
            "Ner",
            "Esh",
            "Mrt",
            "Mli",
            "Mar",
          ],
          areaMetric: 2381741,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Algerian",
              male: "Algerian",
            ),
            Demonyms(
              language: LangFra(),
              female: "Algérienne",
              male: "Algérien",
            ),
          ],
          emoji: "🇩🇿",
          maps: const Maps(
            googleMaps: "RsAyAfyaiNVb8DpW8",
            openStreetMaps: "relation/192756",
          ),
          population: 44700000,
          gini: const Gini(year: 2011, coefficient: 27.6),
          fifa: "ALG",
          car: const Car(sign: "DZ"),
          timezones: const ["UTC+01:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.sunday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Algiers"),
            latLng: LatLng(36.75, 3.05),
          ),
          postalCode: const PostalCode(),
          regionalBlocs: const [BlocAU(), BlocAL()],
        );
}

/// A class that represents the Ecuador country.
class CountryEcu extends WorldCountry {
  /// Creates a instance of [CountryEcu] (Ecuador country).
  ///
  /// ISO 3166-1 Alpha-3 code: "ECU", ISO 3166-1 Alpha-2 code: "EC".
  const CountryEcu()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Republic of Ecuador",
            common: "Ecuador",
          ),
          namesNative: const [
            CountryName(
              language: LangSpa(),
              official: "República del Ecuador",
              common: "Ecuador",
            ),
          ],
          tld: const [".ec"],
          code: "ECU",
          codeNumeric: "218",
          codeShort: "EC",
          cioc: "ECU",
          independent: true,
          unMember: true,
          currencies: const [FiatUsd()],
          idd: const Idd(root: 5, suffixes: [93]),
          altSpellings: const [
            "EC",
            "Republic of Ecuador",
            "República del Ecuador",
          ],
          continent: const Americas(),
          subregion: const SouthAmerica(),
          languages: const [LangSpa()],
          translations: ecuCountryTranslations,
          latLng: const LatLng(-2, -77.5),
          landlocked: false,
          bordersCodes: const ["Col", "Per"],
          areaMetric: 276841,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Ecuadorean",
              male: "Ecuadorean",
            ),
            Demonyms(
              language: LangFra(),
              female: "Équatorienne",
              male: "Équatorien",
            ),
          ],
          emoji: "🇪🇨",
          maps: const Maps(
            googleMaps: "TbX8hUW4gcbRPZiK7",
            openStreetMaps: "relation/108089",
          ),
          population: 17643060,
          gini: const Gini(year: 2019, coefficient: 45.7),
          fifa: "ECU",
          car: const Car(sign: "EC"),
          timezones: const ["UTC-06:00", "UTC-05:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Quito"),
            latLng: LatLng(-0.22, -78.5),
          ),
          postalCode: const PostalCode(
            format: "@####@",
            regExpPattern: r"^([a-zA-Z]\d{4}[a-zA-Z])$",
          ),
          regionalBlocs: const [BlocUSAN()],
        );
}

/// A class that represents the Egypt country.
class CountryEgy extends WorldCountry {
  /// Creates a instance of [CountryEgy] (Egypt country).
  ///
  /// ISO 3166-1 Alpha-3 code: "EGY", ISO 3166-1 Alpha-2 code: "EG".
  const CountryEgy()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Arab Republic of Egypt",
            common: "Egypt",
          ),
          namesNative: const [
            CountryName(
              language: LangAra(),
              official: "جمهورية مصر العربية",
              common: "مصر",
            ),
          ],
          tld: const [".eg", ".مصر"],
          code: "EGY",
          codeNumeric: "818",
          codeShort: "EG",
          cioc: "EGY",
          independent: true,
          unMember: true,
          currencies: const [FiatEgp()],
          idd: const Idd(root: 2, suffixes: [0]),
          altSpellings: const ["EG", "Arab Republic of Egypt"],
          continent: const Africa(),
          subregion: const NorthernAfrica(),
          languages: const [LangAra()],
          translations: egyCountryTranslations,
          latLng: const LatLng(27, 30),
          landlocked: false,
          bordersCodes: const ["Isr", "Lby", "Pse", "Sdn"],
          areaMetric: 1002450,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Egyptian",
              male: "Egyptian",
            ),
            Demonyms(
              language: LangFra(),
              female: "Égyptienne",
              male: "Égyptien",
            ),
          ],
          emoji: "🇪🇬",
          maps: const Maps(
            googleMaps: "uoDRhXbsqjG6L7VG7",
            openStreetMaps: "relation/1473947",
          ),
          population: 102334403,
          gini: const Gini(year: 2017, coefficient: 31.5),
          fifa: "EGY",
          car: const Car(sign: "ET"),
          timezones: const ["UTC+02:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.sunday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Cairo"),
            latLng: LatLng(30.05, 31.25),
          ),
          postalCode: const PostalCode(),
          regionalBlocs: const [BlocAU(), BlocAL()],
        );
}

/// A class that represents the Eritrea country.
class CountryEri extends WorldCountry {
  /// Creates a instance of [CountryEri] (Eritrea country).
  ///
  /// ISO 3166-1 Alpha-3 code: "ERI", ISO 3166-1 Alpha-2 code: "ER".
  const CountryEri()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "State of Eritrea",
            common: "Eritrea",
          ),
          namesNative: const [
            CountryName(
              language: LangAra(),
              official: "دولة إرتريا",
              common: "إرتريا‎",
            ),
            CountryName(
              language: LangEng(),
              official: "State of Eritrea",
              common: "Eritrea",
            ),
            CountryName(
              language: LangTir(),
              official: "ሃገረ ኤርትራ",
              common: "ኤርትራ",
            ),
          ],
          tld: const [".er"],
          code: "ERI",
          codeNumeric: "232",
          codeShort: "ER",
          cioc: "ERI",
          independent: true,
          unMember: true,
          currencies: const [FiatErn()],
          idd: const Idd(root: 2, suffixes: [91]),
          altSpellings: const [
            "ER",
            "State of Eritrea",
            "ሃገረ ኤርትራ",
            "Dawlat Iritriyá",
            "ʾErtrā",
            "Iritriyā",
          ],
          continent: const Africa(),
          subregion: const EasternAfrica(),
          languages: const [LangAra(), LangEng(), LangTir()],
          translations: eriCountryTranslations,
          latLng: const LatLng(15, 39),
          landlocked: false,
          bordersCodes: const ["Dji", "Eth", "Sdn"],
          areaMetric: 117600,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Eritrean",
              male: "Eritrean",
            ),
            Demonyms(
              language: LangFra(),
              female: "Érythréenne",
              male: "Érythréen",
            ),
          ],
          emoji: "🇪🇷",
          maps: const Maps(
            googleMaps: "HRyqUpnPwwG6jY5j6",
            openStreetMaps: "relation/296961",
          ),
          population: 5352000,
          gini: null,
          fifa: "ERI",
          car: const Car(sign: "ER"),
          timezones: const ["UTC+03:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Asmara"),
            latLng: LatLng(15.33, 38.93),
          ),
          postalCode: null,
          regionalBlocs: const [BlocAU()],
        );
}

/// A class that represents the Western Sahara country.
class CountryEsh extends WorldCountry {
  /// Creates a instance of [CountryEsh] (Western Sahara country).
  ///
  /// ISO 3166-1 Alpha-3 code: "ESH", ISO 3166-1 Alpha-2 code: "EH".
  const CountryEsh()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Sahrawi Arab Democratic Republic",
            common: "Western Sahara",
          ),
          namesNative: const [
            CountryName(
              language: LangSpa(),
              official: "República Árabe Saharaui Democrática",
              common: "Sahara Occidental",
            ),
          ],
          tld: const [".eh"],
          code: "ESH",
          codeNumeric: "732",
          codeShort: "EH",
          cioc: null,
          independent: false,
          unMember: false,
          currencies: const [FiatDzd(), FiatMad(), FiatMru()],
          idd: const Idd(root: 2, suffixes: [12]),
          altSpellings: const ["EH", "Taneẓroft Tutrimt"],
          continent: const Africa(),
          subregion: const NorthernAfrica(),
          languages: const [LangSpa()],
          translations: eshCountryTranslations,
          latLng: const LatLng(24.5, -13),
          landlocked: false,
          bordersCodes: const ["Dza", "Mrt", "Mar"],
          areaMetric: 266000,
          demonyms: const [
            Demonyms(language: LangEng(), female: "Sahrawi", male: "Sahrawi"),
          ],
          emoji: "🇪🇭",
          maps: const Maps(
            googleMaps: "7nU3mB69vP6zQp7A8",
            openStreetMaps: "relation/5441968",
          ),
          population: 510713,
          gini: null,
          fifa: null,
          car: const Car(),
          timezones: const ["UTC+00:00"],
          hasCoatOfArms: false,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("El Aaiún"),
            latLng: LatLng(-13.28, 27.14),
          ),
          postalCode: null,
          regionalBlocs: const [BlocAU()],
        );
}

/// A class that represents the Spain country.
class CountryEsp extends WorldCountry {
  /// Creates a instance of [CountryEsp] (Spain country).
  ///
  /// ISO 3166-1 Alpha-3 code: "ESP", ISO 3166-1 Alpha-2 code: "ES".
  const CountryEsp()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Kingdom of Spain",
            common: "Spain",
          ),
          namesNative: const [
            CountryName(
              language: LangSpa(),
              official: "Reino de España",
              common: "España",
            ),
          ],
          tld: const [".es"],
          code: "ESP",
          codeNumeric: "724",
          codeShort: "ES",
          cioc: "ESP",
          independent: true,
          unMember: true,
          currencies: const [FiatEur()],
          idd: const Idd(root: 3, suffixes: [4]),
          altSpellings: const ["ES", "Kingdom of Spain", "Reino de España"],
          continent: const Europe(),
          subregion: const SouthernEurope(),
          languages: const [LangSpa()],
          translations: espCountryTranslations,
          latLng: const LatLng(40, -4),
          landlocked: false,
          bordersCodes: const ["And", "Fra", "Gib", "Prt", "Mar"],
          areaMetric: 505992,
          demonyms: const [
            Demonyms(language: LangEng(), female: "Spanish", male: "Spanish"),
            Demonyms(
              language: LangFra(),
              female: "Espagnole",
              male: "Espagnol",
            ),
          ],
          emoji: "🇪🇸",
          maps: const Maps(
            googleMaps: "138JaXW8EZzRVitY9",
            openStreetMaps: "relation/1311341",
          ),
          population: 47351567,
          gini: const Gini(year: 2018, coefficient: 34.7),
          fifa: "ESP",
          car: const Car(sign: "E"),
          timezones: const ["UTC+00:00", "UTC+01:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Madrid"),
            latLng: LatLng(40.4, -3.68),
          ),
          postalCode: const PostalCode(),
          regionalBlocs: const [BlocEU()],
        );
}

/// A class that represents the Estonia country.
class CountryEst extends WorldCountry {
  /// Creates a instance of [CountryEst] (Estonia country).
  ///
  /// ISO 3166-1 Alpha-3 code: "EST", ISO 3166-1 Alpha-2 code: "EE".
  const CountryEst()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Republic of Estonia",
            common: "Estonia",
          ),
          namesNative: const [
            CountryName(
              language: LangEst(),
              official: "Eesti Vabariik",
              common: "Eesti",
            ),
          ],
          tld: const [".ee"],
          code: "EST",
          codeNumeric: "233",
          codeShort: "EE",
          cioc: "EST",
          independent: true,
          unMember: true,
          currencies: const [FiatEur()],
          idd: const Idd(root: 3, suffixes: [72]),
          altSpellings: const [
            "EE",
            "Eesti",
            "Republic of Estonia",
            "Eesti Vabariik",
          ],
          continent: const Europe(),
          subregion: const NorthernEurope(),
          languages: const [LangEst()],
          translations: estCountryTranslations,
          latLng: const LatLng(59, 26),
          landlocked: false,
          bordersCodes: const ["Lva", "Rus"],
          areaMetric: 45227,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Estonian",
              male: "Estonian",
            ),
            Demonyms(
              language: LangFra(),
              female: "Estonienne",
              male: "Estonien",
            ),
          ],
          emoji: "🇪🇪",
          maps: const Maps(
            googleMaps: "6SsynwGUodL1sDvq8",
            openStreetMaps: "relation/79510",
          ),
          population: 1331057,
          gini: const Gini(year: 2018, coefficient: 30.3),
          fifa: "EST",
          car: const Car(sign: "EST"),
          timezones: const ["UTC+02:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Tallinn"),
            latLng: LatLng(59.43, 24.72),
          ),
          postalCode: const PostalCode(),
          regionalBlocs: const [BlocEU()],
        );
}

/// A class that represents the Ethiopia country.
class CountryEth extends WorldCountry {
  /// Creates a instance of [CountryEth] (Ethiopia country).
  ///
  /// ISO 3166-1 Alpha-3 code: "ETH", ISO 3166-1 Alpha-2 code: "ET".
  const CountryEth()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Federal Democratic Republic of Ethiopia",
            common: "Ethiopia",
          ),
          namesNative: const [
            CountryName(
              language: LangAmh(),
              official: "የኢትዮጵያ ፌዴራላዊ ዲሞክራሲያዊ ሪፐብሊክ",
              common: "ኢትዮጵያ",
            ),
          ],
          tld: const [".et"],
          code: "ETH",
          codeNumeric: "231",
          codeShort: "ET",
          cioc: "ETH",
          independent: true,
          unMember: true,
          currencies: const [FiatEtb()],
          idd: const Idd(root: 2, suffixes: [51]),
          altSpellings: const [
            "ET",
            "ʾĪtyōṗṗyā",
            "Federal Democratic Republic of Ethiopia",
            "የኢትዮጵያ ፌዴራላዊ ዲሞክራሲያዊ ሪፐብሊክ",
          ],
          continent: const Africa(),
          subregion: const EasternAfrica(),
          languages: const [LangAmh()],
          translations: ethCountryTranslations,
          latLng: const LatLng(8, 38),
          landlocked: true,
          bordersCodes: const ["Dji", "Eri", "Ken", "Som", "Ssd", "Sdn"],
          areaMetric: 1104300,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Ethiopian",
              male: "Ethiopian",
            ),
            Demonyms(
              language: LangFra(),
              female: "Éthiopienne",
              male: "Éthiopien",
            ),
          ],
          emoji: "🇪🇹",
          maps: const Maps(
            googleMaps: "2Q4hQWCbhuZLj3fG6",
            openStreetMaps: "relation/192800",
          ),
          population: 114963583,
          gini: const Gini(year: 2015, coefficient: 35),
          fifa: "ETH",
          car: const Car(sign: "ETH"),
          timezones: const ["UTC+03:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Addis Ababa"),
            latLng: LatLng(9.03, 38.7),
          ),
          postalCode:
              const PostalCode(format: "####", regExpPattern: r"^(\d{4})$"),
          regionalBlocs: const [BlocAU()],
        );
}

/// A class that represents the Finland country.
class CountryFin extends WorldCountry {
  /// Creates a instance of [CountryFin] (Finland country).
  ///
  /// ISO 3166-1 Alpha-3 code: "FIN", ISO 3166-1 Alpha-2 code: "FI".
  const CountryFin()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Republic of Finland",
            common: "Finland",
          ),
          namesNative: const [
            CountryName(
              language: LangFin(),
              official: "Suomen tasavalta",
              common: "Suomi",
            ),
            CountryName(
              language: LangSwe(),
              official: "Republiken Finland",
              common: "Finland",
            ),
          ],
          tld: const [".fi"],
          code: "FIN",
          codeNumeric: "246",
          codeShort: "FI",
          cioc: "FIN",
          independent: true,
          unMember: true,
          currencies: const [FiatEur()],
          idd: const Idd(root: 3, suffixes: [58]),
          altSpellings: const [
            "FI",
            "Suomi",
            "Republic of Finland",
            "Suomen tasavalta",
            "Republiken Finland",
          ],
          continent: const Europe(),
          subregion: const NorthernEurope(),
          languages: const [LangFin(), LangSwe()],
          translations: finCountryTranslations,
          latLng: const LatLng(64, 26),
          landlocked: false,
          bordersCodes: const ["Nor", "Swe", "Rus"],
          areaMetric: 338424,
          demonyms: const [
            Demonyms(language: LangEng(), female: "Finnish", male: "Finnish"),
            Demonyms(
              language: LangFra(),
              female: "Finlandaise",
              male: "Finlandais",
            ),
          ],
          emoji: "🇫🇮",
          maps: const Maps(
            googleMaps: "HjgWDCNKRAYHrkMn8",
            openStreetMaps: "relation/54224",
          ),
          population: 5530719,
          gini: const Gini(year: 2018, coefficient: 27.3),
          fifa: "FIN",
          car: const Car(sign: "FIN"),
          timezones: const ["UTC+02:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Helsinki"),
            latLng: LatLng(60.17, 24.93),
          ),
          postalCode: const PostalCode(regExpPattern: r"^(?:FI)*(\d{5})$"),
          regionalBlocs: const [BlocEU()],
        );
}

/// A class that represents the Fiji country.
class CountryFji extends WorldCountry {
  /// Creates a instance of [CountryFji] (Fiji country).
  ///
  /// ISO 3166-1 Alpha-3 code: "FJI", ISO 3166-1 Alpha-2 code: "FJ".
  const CountryFji()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Republic of Fiji",
            common: "Fiji",
          ),
          namesNative: const [
            CountryName(
              language: LangEng(),
              official: "Republic of Fiji",
              common: "Fiji",
            ),
            CountryName(
              language: LangFij(),
              official: "Matanitu Tugalala o Viti",
              common: "Viti",
            ),
          ],
          tld: const [".fj"],
          code: "FJI",
          codeNumeric: "242",
          codeShort: "FJ",
          cioc: "FIJ",
          independent: true,
          unMember: true,
          currencies: const [FiatFjd()],
          idd: const Idd(root: 6, suffixes: [79]),
          altSpellings: const [
            "FJ",
            "Viti",
            "Republic of Fiji",
            "Matanitu ko Viti",
            "Fijī Gaṇarājya",
          ],
          continent: const Oceania(),
          subregion: const Melanesia(),
          languages: const [LangEng(), LangFij()],
          translations: fjiCountryTranslations,
          latLng: const LatLng(17.7134, 178.065),
          landlocked: false,
          bordersCodes: null,
          areaMetric: 18272,
          demonyms: const [
            Demonyms(language: LangEng(), female: "Fijian", male: "Fijian"),
            Demonyms(
              language: LangFra(),
              female: "Fidjienne",
              male: "Fidjien",
            ),
          ],
          emoji: "🇫🇯",
          maps: const Maps(
            googleMaps: "r9fhDqoLZdg1zmE99",
            openStreetMaps: "relation/571747",
          ),
          population: 896444,
          gini: const Gini(year: 2013, coefficient: 36.7),
          fifa: "FIJ",
          car: const Car(sign: "FJI", isRightSide: false),
          timezones: const ["UTC+12:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Suva"),
            latLng: LatLng(-18.13, 178.42),
          ),
          postalCode: null,
          regionalBlocs: null,
        );
}

/// A class that represents the Falkland Islands country.
class CountryFlk extends WorldCountry {
  /// Creates a instance of [CountryFlk] (Falkland Islands country).
  ///
  /// ISO 3166-1 Alpha-3 code: "FLK", ISO 3166-1 Alpha-2 code: "FK".
  const CountryFlk()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Falkland Islands",
            common: "Falkland Islands",
          ),
          namesNative: const [
            CountryName(
              language: LangEng(),
              official: "Falkland Islands",
              common: "Falkland Islands",
            ),
          ],
          tld: const [".fk"],
          code: "FLK",
          codeNumeric: "238",
          codeShort: "FK",
          cioc: null,
          independent: false,
          unMember: false,
          currencies: const [FiatFkp()],
          idd: const Idd(root: 50, suffixes: [0]),
          altSpellings: const [
            "FK",
            "Islas Malvinas",
            "Falkland Islands (Malvinas)",
          ],
          continent: const Americas(),
          subregion: const SouthAmerica(),
          languages: const [LangEng()],
          translations: flkCountryTranslations,
          latLng: const LatLng(-51.75, -59),
          landlocked: false,
          bordersCodes: null,
          areaMetric: 12173,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Falkland Islander",
              male: "Falkland Islander",
            ),
            Demonyms(
              language: LangFra(),
              female: "Malouinne",
              male: "Malouin",
            ),
          ],
          emoji: "🇫🇰",
          maps: const Maps(
            googleMaps: "TZH1x7AGanQKifNk7",
            openStreetMaps: "relation/2185374",
          ),
          population: 2563,
          gini: null,
          fifa: null,
          car: const Car(sign: "GB", isRightSide: false),
          timezones: const ["UTC-04:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Stanley"),
            latLng: LatLng(-51.7, -57.85),
          ),
          postalCode: null,
          regionalBlocs: const [BlocUSAN()],
        );
}

/// A class that represents the France country.
class CountryFra extends WorldCountry {
  /// Creates a instance of [CountryFra] (France country).
  ///
  /// ISO 3166-1 Alpha-3 code: "FRA", ISO 3166-1 Alpha-2 code: "FR".
  const CountryFra()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "French Republic",
            common: "France",
          ),
          namesNative: const [
            CountryName(
              language: LangFra(),
              official: "République française",
              common: "France",
            ),
          ],
          tld: const [".fr"],
          code: "FRA",
          codeNumeric: "250",
          codeShort: "FR",
          cioc: "FRA",
          independent: true,
          unMember: true,
          currencies: const [FiatEur()],
          idd: const Idd(root: 3, suffixes: [3]),
          altSpellings: const [
            "FR",
            "French Republic",
            "République française",
          ],
          continent: const Europe(),
          subregion: const WesternEurope(),
          languages: const [LangFra()],
          translations: fraCountryTranslations,
          latLng: const LatLng(46, 2),
          landlocked: false,
          bordersCodes: const [
            "And",
            "Bel",
            "Deu",
            "Ita",
            "Lux",
            "Mco",
            "Esp",
            "Che",
          ],
          areaMetric: 551695,
          demonyms: const [
            Demonyms(language: LangEng(), female: "French", male: "French"),
            Demonyms(
              language: LangFra(),
              female: "Française",
              male: "Français",
            ),
          ],
          emoji: "🇫🇷",
          maps: const Maps(
            googleMaps: "g7QxxSFsWyTPKuzd7",
            openStreetMaps: "relation/1403916",
          ),
          population: 67391582,
          gini: const Gini(year: 2018, coefficient: 32.4),
          fifa: "FRA",
          car: const Car(sign: "F"),
          timezones: const [
            "UTC-10:00",
            "UTC-09:30",
            "UTC-09:00",
            "UTC-08:00",
            "UTC-04:00",
            "UTC-03:00",
            "UTC+01:00",
            "UTC+02:00",
            "UTC+03:00",
            "UTC+04:00",
            "UTC+05:00",
            "UTC+10:00",
            "UTC+11:00",
            "UTC+12:00",
          ],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Paris"),
            latLng: LatLng(48.87, 2.33),
          ),
          postalCode: const PostalCode(),
          regionalBlocs: const [BlocEU()],
        );
}

/// A class that represents the Faroe Islands country.
class CountryFro extends WorldCountry {
  /// Creates a instance of [CountryFro] (Faroe Islands country).
  ///
  /// ISO 3166-1 Alpha-3 code: "FRO", ISO 3166-1 Alpha-2 code: "FO".
  const CountryFro()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Faroe Islands",
            common: "Faroe Islands",
          ),
          namesNative: const [
            CountryName(
              language: LangDan(),
              official: "Færøerne",
              common: "Færøerne",
            ),
            CountryName(
              language: LangFao(),
              official: "Føroyar",
              common: "Føroyar",
            ),
          ],
          tld: const [".fo"],
          code: "FRO",
          codeNumeric: "234",
          codeShort: "FO",
          cioc: null,
          independent: false,
          unMember: false,
          currencies: const [FiatDkk()],
          idd: const Idd(root: 2, suffixes: [98]),
          altSpellings: const ["FO", "Føroyar", "Færøerne"],
          continent: const Europe(),
          subregion: const NorthernEurope(),
          languages: const [LangDan(), LangFao()],
          translations: froCountryTranslations,
          latLng: const LatLng(62, -7),
          landlocked: false,
          bordersCodes: null,
          areaMetric: 1393,
          demonyms: const [
            Demonyms(language: LangEng(), female: "Faroese", male: "Faroese"),
            Demonyms(
              language: LangFra(),
              female: "Féroïenne",
              male: "Féroïen",
            ),
          ],
          emoji: "🇫🇴",
          maps: const Maps(
            googleMaps: "6sTru4SmHdEVcNkM6",
            openStreetMaps: "relation/52939",
          ),
          population: 48865,
          gini: null,
          fifa: "FRO",
          car: const Car(sign: "FO"),
          timezones: const ["UTC+00:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Tórshavn"),
            latLng: LatLng(62.01, -6.77),
          ),
          postalCode: const PostalCode(
            format: "FO-###",
            regExpPattern: r"^(?:FO)*(\d{3})$",
          ),
          regionalBlocs: null,
        );
}

/// A class that represents the Micronesia country.
class CountryFsm extends WorldCountry {
  /// Creates a instance of [CountryFsm] (Micronesia country).
  ///
  /// ISO 3166-1 Alpha-3 code: "FSM", ISO 3166-1 Alpha-2 code: "FM".
  const CountryFsm()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Federated States of Micronesia",
            common: "Micronesia",
          ),
          namesNative: const [
            CountryName(
              language: LangEng(),
              official: "Federated States of Micronesia",
              common: "Micronesia",
            ),
          ],
          tld: const [".fm"],
          code: "FSM",
          codeNumeric: "583",
          codeShort: "FM",
          cioc: "FSM",
          independent: true,
          unMember: true,
          currencies: const [FiatUsd()],
          idd: const Idd(root: 6, suffixes: [91]),
          altSpellings: const [
            "FM",
            "Federated States of Micronesia",
            "Micronesia, Federated States of",
          ],
          continent: const Oceania(),
          subregion: const Micronesia(),
          languages: const [LangEng()],
          translations: fsmCountryTranslations,
          latLng: const LatLng(6.91666666, 158.25),
          landlocked: false,
          bordersCodes: null,
          areaMetric: 702,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Micronesian",
              male: "Micronesian",
            ),
            Demonyms(
              language: LangFra(),
              female: "Micronésienne",
              male: "Micronésien",
            ),
          ],
          emoji: "🇫🇲",
          maps: const Maps(
            googleMaps: "LLcnofC5LxZsJXTo8",
            openStreetMaps: "relation/571802",
          ),
          population: 115021,
          gini: const Gini(year: 2013, coefficient: 40.1),
          fifa: null,
          car: const Car(sign: "FSM"),
          timezones: const ["UTC+10:00", "UTC+11:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Palikir"),
            latLng: LatLng(6.92, 158.15),
          ),
          postalCode: const PostalCode(),
          regionalBlocs: null,
        );
}

/// A class that represents the Gabon country.
class CountryGab extends WorldCountry {
  /// Creates a instance of [CountryGab] (Gabon country).
  ///
  /// ISO 3166-1 Alpha-3 code: "GAB", ISO 3166-1 Alpha-2 code: "GA".
  const CountryGab()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Gabonese Republic",
            common: "Gabon",
          ),
          namesNative: const [
            CountryName(
              language: LangFra(),
              official: "République gabonaise",
              common: "Gabon",
            ),
          ],
          tld: const [".ga"],
          code: "GAB",
          codeNumeric: "266",
          codeShort: "GA",
          cioc: "GAB",
          independent: true,
          unMember: true,
          currencies: const [FiatXaf()],
          idd: const Idd(root: 2, suffixes: [41]),
          altSpellings: const [
            "GA",
            "Gabonese Republic",
            "République Gabonaise",
          ],
          continent: const Africa(),
          subregion: const MiddleAfrica(),
          languages: const [LangFra()],
          translations: gabCountryTranslations,
          latLng: const LatLng(-1, 11.75),
          landlocked: false,
          bordersCodes: const ["Cmr", "Cog", "Gnq"],
          areaMetric: 267668,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Gabonese",
              male: "Gabonese",
            ),
            Demonyms(
              language: LangFra(),
              female: "Gabonaise",
              male: "Gabonais",
            ),
          ],
          emoji: "🇬🇦",
          maps: const Maps(
            googleMaps: "vyRSkqw1H1fnq4ry6",
            openStreetMaps: "relation/192793",
          ),
          population: 2225728,
          gini: const Gini(year: 2017, coefficient: 38),
          fifa: "GAB",
          car: const Car(sign: "G"),
          timezones: const ["UTC+01:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Libreville"),
            latLng: LatLng(0.38, 9.45),
          ),
          postalCode: null,
          regionalBlocs: const [BlocAU()],
        );
}

/// A class that represents the United Kingdom country.
class CountryGbr extends WorldCountry {
  /// Creates a instance of [CountryGbr] (United Kingdom country).
  ///
  /// ISO 3166-1 Alpha-3 code: "GBR", ISO 3166-1 Alpha-2 code: "GB".
  const CountryGbr()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "United Kingdom of Great Britain and Northern Ireland",
            common: "United Kingdom",
          ),
          namesNative: const [
            CountryName(
              language: LangEng(),
              official: "United Kingdom of Great Britain and Northern Ireland",
              common: "United Kingdom",
            ),
          ],
          tld: const [".uk"],
          code: "GBR",
          codeNumeric: "826",
          codeShort: "GB",
          cioc: "GBR",
          independent: true,
          unMember: true,
          currencies: const [FiatGbp()],
          idd: const Idd(root: 4, suffixes: [4]),
          altSpellings: const ["GB", "UK", "Great Britain"],
          continent: const Europe(),
          subregion: const NorthernEurope(),
          languages: const [LangEng()],
          translations: gbrCountryTranslations,
          latLng: const LatLng(54, -2),
          landlocked: false,
          bordersCodes: const ["Irl"],
          areaMetric: 242900,
          demonyms: const [
            Demonyms(language: LangEng(), female: "British", male: "British"),
            Demonyms(
              language: LangFra(),
              female: "Britannique",
              male: "Britannique",
            ),
          ],
          emoji: "🇬🇧",
          maps: const Maps(
            googleMaps: "FoDtc3UKMkFsXAjHA",
            openStreetMaps: "relation/62149",
          ),
          population: 67215293,
          gini: const Gini(year: 2017, coefficient: 35.1),
          fifa: null,
          car: const Car(sign: "GB", isRightSide: false),
          timezones: const [
            "UTC-08:00",
            "UTC-05:00",
            "UTC-04:00",
            "UTC-03:00",
            "UTC-02:00",
            "UTC+00:00",
            "UTC+01:00",
            "UTC+02:00",
            "UTC+06:00",
          ],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("London"),
            latLng: LatLng(51.5, -0.08),
          ),
          postalCode: const PostalCode(
            format: "@# #@@|@## #@@|@@# #@@|@@## #@@|@#@ #@@|@@#@ #@@|GIR0AA",
            regExpPattern:
                r"^(([A-Z]\d{2}[A-Z]{2})|([A-Z]\d{3}[A-Z]{2})|([A-Z]{2}\d{2}[A-Z]{2})|([A-Z]{2}\d{3}[A-Z]{2})|([A-Z]\d[A-Z]\d[A-Z]{2})|([A-Z]{2}\d[A-Z]\d[A-Z]{2})|(GIR0AA))$",
          ),
          regionalBlocs: null,
        );
}

/// A class that represents the Georgia country.
class CountryGeo extends WorldCountry {
  /// Creates a instance of [CountryGeo] (Georgia country).
  ///
  /// ISO 3166-1 Alpha-3 code: "GEO", ISO 3166-1 Alpha-2 code: "GE".
  const CountryGeo()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Georgia",
            common: "Georgia",
          ),
          namesNative: const [
            CountryName(
              language: LangKat(),
              official: "საქართველო",
              common: "საქართველო",
            ),
          ],
          tld: const [".ge"],
          code: "GEO",
          codeNumeric: "268",
          codeShort: "GE",
          cioc: "GEO",
          independent: true,
          unMember: true,
          currencies: const [FiatGel()],
          idd: const Idd(root: 9, suffixes: [95]),
          altSpellings: const ["GE", "Sakartvelo"],
          continent: const Asia(),
          subregion: const WesternAsia(),
          languages: const [LangKat()],
          translations: geoCountryTranslations,
          latLng: const LatLng(42, 43.5),
          landlocked: false,
          bordersCodes: const ["Arm", "Aze", "Rus", "Tur"],
          areaMetric: 69700,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Georgian",
              male: "Georgian",
            ),
            Demonyms(
              language: LangFra(),
              female: "Géorgienne",
              male: "Géorgien",
            ),
          ],
          emoji: "🇬🇪",
          maps: const Maps(
            googleMaps: "bvCaGBePR1ZEDK5cA",
            openStreetMaps: "relation/28699",
          ),
          population: 3714000,
          gini: const Gini(year: 2019, coefficient: 35.9),
          fifa: "GEO",
          car: const Car(sign: "GE"),
          timezones: const ["UTC+04:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Tbilisi"),
            latLng: LatLng(41.68, 44.83),
          ),
          postalCode:
              const PostalCode(format: "####", regExpPattern: r"^(\d{4})$"),
          regionalBlocs: null,
        );
}

/// A class that represents the Guernsey country.
class CountryGgy extends WorldCountry {
  /// Creates a instance of [CountryGgy] (Guernsey country).
  ///
  /// ISO 3166-1 Alpha-3 code: "GGY", ISO 3166-1 Alpha-2 code: "GG".
  const CountryGgy()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Bailiwick of Guernsey",
            common: "Guernsey",
          ),
          namesNative: const [
            CountryName(
              language: LangEng(),
              official: "Bailiwick of Guernsey",
              common: "Guernsey",
            ),
            CountryName(
              language: LangFra(),
              official: "Bailliage de Guernesey",
              common: "Guernesey",
            ),
          ],
          tld: const [".gg"],
          code: "GGY",
          codeNumeric: "831",
          codeShort: "GG",
          cioc: null,
          independent: false,
          unMember: false,
          currencies: const [FiatGbp()],
          idd: const Idd(root: 4, suffixes: [4]),
          altSpellings: const [
            "GG",
            "Bailiwick of Guernsey",
            "Bailliage de Guernesey",
          ],
          continent: const Europe(),
          subregion: const NorthernEurope(),
          languages: const [LangEng(), LangFra()],
          translations: ggyCountryTranslations,
          latLng: const LatLng(49.46666666, -2.58333333),
          landlocked: false,
          bordersCodes: null,
          areaMetric: 78,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Channel Islander",
              male: "Channel Islander",
            ),
            Demonyms(
              language: LangFra(),
              female: "Guernesiaise",
              male: "Guernesiais",
            ),
          ],
          emoji: "🇬🇬",
          maps: const Maps(
            googleMaps: "6kXnQU5QvEZMD9VB7",
            openStreetMaps: "relation/270009",
          ),
          population: 62999,
          gini: null,
          fifa: null,
          car: const Car(sign: "GBG", isRightSide: false),
          timezones: const ["UTC+00:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("St. Peter Port"),
            latLng: LatLng(49.45, -2.54),
          ),
          postalCode: const PostalCode(
            format: "@# #@@|@## #@@|@@# #@@|@@## #@@|@#@ #@@|@@#@ #@@|GIR0AA",
            regExpPattern:
                r"^(([A-Z]\d{2}[A-Z]{2})|([A-Z]\d{3}[A-Z]{2})|([A-Z]{2}\d{2}[A-Z]{2})|([A-Z]{2}\d{3}[A-Z]{2})|([A-Z]\d[A-Z]\d[A-Z]{2})|([A-Z]{2}\d[A-Z]\d[A-Z]{2})|(GIR0AA))$",
          ),
          regionalBlocs: null,
        );
}

/// A class that represents the Ghana country.
class CountryGha extends WorldCountry {
  /// Creates a instance of [CountryGha] (Ghana country).
  ///
  /// ISO 3166-1 Alpha-3 code: "GHA", ISO 3166-1 Alpha-2 code: "GH".
  const CountryGha()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Republic of Ghana",
            common: "Ghana",
          ),
          namesNative: const [
            CountryName(
              language: LangEng(),
              official: "Republic of Ghana",
              common: "Ghana",
            ),
          ],
          tld: const [".gh"],
          code: "GHA",
          codeNumeric: "288",
          codeShort: "GH",
          cioc: "GHA",
          independent: true,
          unMember: true,
          currencies: const [FiatGhs()],
          idd: const Idd(root: 2, suffixes: [33]),
          altSpellings: const ["GH"],
          continent: const Africa(),
          subregion: const WesternAfrica(),
          languages: const [LangEng()],
          translations: ghaCountryTranslations,
          latLng: const LatLng(8, -2),
          landlocked: false,
          bordersCodes: const ["Bfa", "Civ", "Tgo"],
          areaMetric: 238533,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Ghanaian",
              male: "Ghanaian",
            ),
            Demonyms(
              language: LangFra(),
              female: "Ghanéenne",
              male: "Ghanéen",
            ),
          ],
          emoji: "🇬🇭",
          maps: const Maps(
            googleMaps: "Avy5RSmdsXFBaiXq8",
            openStreetMaps: "relation/192781",
          ),
          population: 31072945,
          gini: const Gini(year: 2016, coefficient: 43.5),
          fifa: "GHA",
          car: const Car(sign: "GH"),
          timezones: const ["UTC+00:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Accra"),
            latLng: LatLng(5.55, -0.22),
          ),
          postalCode: null,
          regionalBlocs: const [BlocAU()],
        );
}

/// A class that represents the Gibraltar country.
class CountryGib extends WorldCountry {
  /// Creates a instance of [CountryGib] (Gibraltar country).
  ///
  /// ISO 3166-1 Alpha-3 code: "GIB", ISO 3166-1 Alpha-2 code: "GI".
  const CountryGib()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Gibraltar",
            common: "Gibraltar",
          ),
          namesNative: const [
            CountryName(
              language: LangEng(),
              official: "Gibraltar",
              common: "Gibraltar",
            ),
          ],
          tld: const [".gi"],
          code: "GIB",
          codeNumeric: "292",
          codeShort: "GI",
          cioc: null,
          independent: false,
          unMember: false,
          currencies: const [FiatGip()],
          idd: const Idd(root: 3, suffixes: [50]),
          altSpellings: const ["GI"],
          continent: const Europe(),
          subregion: const SouthernEurope(),
          languages: const [LangEng()],
          translations: gibCountryTranslations,
          latLng: const LatLng(36.13333333, -5.35),
          landlocked: false,
          bordersCodes: const ["Esp"],
          areaMetric: 6,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Gibraltar",
              male: "Gibraltar",
            ),
            Demonyms(
              language: LangFra(),
              female: "Gibraltarienne",
              male: "Gibraltarien",
            ),
          ],
          emoji: "🇬🇮",
          maps: const Maps(
            googleMaps: "CEoHAs1t6byCBhHFA",
            openStreetMaps: "relation/1278736",
          ),
          population: 33691,
          gini: null,
          fifa: "GIB",
          car: const Car(sign: "GBZ"),
          timezones: const ["UTC+01:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Gibraltar"),
            latLng: LatLng(36.13, -5.35),
          ),
          postalCode: null,
          regionalBlocs: const [BlocEU()],
        );
}

/// A class that represents the Guinea country.
class CountryGin extends WorldCountry {
  /// Creates a instance of [CountryGin] (Guinea country).
  ///
  /// ISO 3166-1 Alpha-3 code: "GIN", ISO 3166-1 Alpha-2 code: "GN".
  const CountryGin()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Republic of Guinea",
            common: "Guinea",
          ),
          namesNative: const [
            CountryName(
              language: LangFra(),
              official: "République de Guinée",
              common: "Guinée",
            ),
          ],
          tld: const [".gn"],
          code: "GIN",
          codeNumeric: "324",
          codeShort: "GN",
          cioc: "GUI",
          independent: true,
          unMember: true,
          currencies: const [FiatGnf()],
          idd: const Idd(root: 2, suffixes: [24]),
          altSpellings: const [
            "GN",
            "Republic of Guinea",
            "République de Guinée",
          ],
          continent: const Africa(),
          subregion: const WesternAfrica(),
          languages: const [LangFra()],
          translations: ginCountryTranslations,
          latLng: const LatLng(11, -10),
          landlocked: false,
          bordersCodes: const ["Civ", "Gnb", "Lbr", "Mli", "Sen", "Sle"],
          areaMetric: 245857,
          demonyms: const [
            Demonyms(language: LangEng(), female: "Guinean", male: "Guinean"),
            Demonyms(
              language: LangFra(),
              female: "Guinéenne",
              male: "Guinéen",
            ),
          ],
          emoji: "🇬🇳",
          maps: const Maps(
            googleMaps: "8J5oM5sA4Ayr1ZYGA",
            openStreetMaps: "relation/192778",
          ),
          population: 13132792,
          gini: const Gini(year: 2012, coefficient: 33.7),
          fifa: "GUI",
          car: const Car(sign: "RG"),
          timezones: const ["UTC+00:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Conakry"),
            latLng: LatLng(9.5, -13.7),
          ),
          postalCode: null,
          regionalBlocs: const [BlocAU()],
        );
}

/// A class that represents the Guadeloupe country.
class CountryGlp extends WorldCountry {
  /// Creates a instance of [CountryGlp] (Guadeloupe country).
  ///
  /// ISO 3166-1 Alpha-3 code: "GLP", ISO 3166-1 Alpha-2 code: "GP".
  const CountryGlp()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Guadeloupe",
            common: "Guadeloupe",
          ),
          namesNative: const [
            CountryName(
              language: LangFra(),
              official: "Guadeloupe",
              common: "Guadeloupe",
            ),
          ],
          tld: const [".gp"],
          code: "GLP",
          codeNumeric: "312",
          codeShort: "GP",
          cioc: null,
          independent: false,
          unMember: false,
          currencies: const [FiatEur()],
          idd: const Idd(root: 5, suffixes: [90]),
          altSpellings: const ["GP", "Gwadloup"],
          continent: const Americas(),
          subregion: const Caribbean(),
          languages: const [LangFra()],
          translations: glpCountryTranslations,
          latLng: const LatLng(16.25, -61.583333),
          landlocked: false,
          bordersCodes: null,
          areaMetric: 1628,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Guadeloupian",
              male: "Guadeloupian",
            ),
            Demonyms(
              language: LangFra(),
              female: "Guadeloupéenne",
              male: "Guadeloupéen",
            ),
          ],
          emoji: "🇬🇵",
          maps: const Maps(
            googleMaps: "Dy9R2EufJtoWm8UN9",
            openStreetMaps: "relation/7109289",
          ),
          population: 400132,
          gini: null,
          fifa: null,
          car: const Car(sign: "F"),
          timezones: const ["UTC-04:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Basse-Terre"),
            latLng: LatLng(16.03, -61.73),
          ),
          postalCode: const PostalCode(regExpPattern: r"^((97|98)\d{3})$"),
          regionalBlocs: null,
        );
}

/// A class that represents the Gambia country.
class CountryGmb extends WorldCountry {
  /// Creates a instance of [CountryGmb] (Gambia country).
  ///
  /// ISO 3166-1 Alpha-3 code: "GMB", ISO 3166-1 Alpha-2 code: "GM".
  const CountryGmb()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Republic of the Gambia",
            common: "Gambia",
          ),
          namesNative: const [
            CountryName(
              language: LangEng(),
              official: "Republic of the Gambia",
              common: "Gambia",
            ),
          ],
          tld: const [".gm"],
          code: "GMB",
          codeNumeric: "270",
          codeShort: "GM",
          cioc: "GAM",
          independent: true,
          unMember: true,
          currencies: const [FiatGmd()],
          idd: const Idd(root: 2, suffixes: [20]),
          altSpellings: const ["GM", "Republic of the Gambia"],
          continent: const Africa(),
          subregion: const WesternAfrica(),
          languages: const [LangEng()],
          translations: gmbCountryTranslations,
          latLng: const LatLng(13.46666666, -16.56666666),
          landlocked: false,
          bordersCodes: const ["Sen"],
          areaMetric: 10689,
          demonyms: const [
            Demonyms(language: LangEng(), female: "Gambian", male: "Gambian"),
            Demonyms(
              language: LangFra(),
              female: "Gambienne",
              male: "Gambien",
            ),
          ],
          emoji: "🇬🇲",
          maps: const Maps(
            googleMaps: "bbGBCxxtfD2A9Z4m6",
            openStreetMaps: "relation/192774",
          ),
          population: 2416664,
          gini: const Gini(year: 2015, coefficient: 35.9),
          fifa: "GAM",
          car: const Car(sign: "WAG"),
          timezones: const ["UTC+00:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Banjul"),
            latLng: LatLng(13.45, -16.57),
          ),
          postalCode: null,
          regionalBlocs: const [BlocAU()],
        );
}

/// A class that represents the Guinea-Bissau country.
class CountryGnb extends WorldCountry {
  /// Creates a instance of [CountryGnb] (Guinea-Bissau country).
  ///
  /// ISO 3166-1 Alpha-3 code: "GNB", ISO 3166-1 Alpha-2 code: "GW".
  const CountryGnb()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Republic of Guinea-Bissau",
            common: "Guinea-Bissau",
          ),
          namesNative: const [
            CountryName(
              language: LangPor(),
              official: "República da Guiné-Bissau",
              common: "Guiné-Bissau",
            ),
          ],
          tld: const [".gw"],
          code: "GNB",
          codeNumeric: "624",
          codeShort: "GW",
          cioc: "GBS",
          independent: true,
          unMember: false,
          currencies: const [FiatXof()],
          idd: const Idd(root: 2, suffixes: [45]),
          altSpellings: const [
            "GW",
            "Republic of Guinea-Bissau",
            "República da Guiné-Bissau",
          ],
          continent: const Africa(),
          subregion: const WesternAfrica(),
          languages: const [LangPor()],
          translations: gnbCountryTranslations,
          latLng: const LatLng(12, -15),
          landlocked: false,
          bordersCodes: const ["Gin", "Sen"],
          areaMetric: 36125,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Guinea-Bissauan",
              male: "Guinea-Bissauan",
            ),
            Demonyms(
              language: LangFra(),
              female: "Bissau-Guinéenne",
              male: "Bissau-Guinéen",
            ),
          ],
          emoji: "🇬🇼",
          maps: const Maps(
            googleMaps: "5Wyaz17miUc1zLc67",
            openStreetMaps: "relation/192776",
          ),
          population: 1967998,
          gini: const Gini(year: 2010, coefficient: 50.7),
          fifa: "GNB",
          car: const Car(sign: "RGB"),
          timezones: const ["UTC+00:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Bissau"),
            latLng: LatLng(11.85, -15.58),
          ),
          postalCode:
              const PostalCode(format: "####", regExpPattern: r"^(\d{4})$"),
          regionalBlocs: const [BlocAU()],
        );
}

/// A class that represents the Equatorial Guinea country.
class CountryGnq extends WorldCountry {
  /// Creates a instance of [CountryGnq] (Equatorial Guinea country).
  ///
  /// ISO 3166-1 Alpha-3 code: "GNQ", ISO 3166-1 Alpha-2 code: "GQ".
  const CountryGnq()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Republic of Equatorial Guinea",
            common: "Equatorial Guinea",
          ),
          namesNative: const [
            CountryName(
              language: LangFra(),
              official: "République de la Guinée Équatoriale",
              common: "Guinée équatoriale",
            ),
            CountryName(
              language: LangPor(),
              official: "República da Guiné Equatorial",
              common: "Guiné Equatorial",
            ),
            CountryName(
              language: LangSpa(),
              official: "República de Guinea Ecuatorial",
              common: "Guinea Ecuatorial",
            ),
          ],
          tld: const [".gq"],
          code: "GNQ",
          codeNumeric: "226",
          codeShort: "GQ",
          cioc: "GEQ",
          independent: true,
          unMember: true,
          currencies: const [FiatXaf()],
          idd: const Idd(root: 2, suffixes: [40]),
          altSpellings: const [
            "GQ",
            "Republic of Equatorial Guinea",
            "República de Guinea Ecuatorial",
            "République de Guinée équatoriale",
            "República da Guiné Equatorial",
          ],
          continent: const Africa(),
          subregion: const MiddleAfrica(),
          languages: const [LangFra(), LangPor(), LangSpa()],
          translations: gnqCountryTranslations,
          latLng: const LatLng(2, 10),
          landlocked: false,
          bordersCodes: const ["Cmr", "Gab"],
          areaMetric: 28051,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Equatorial Guinean",
              male: "Equatorial Guinean",
            ),
            Demonyms(
              language: LangFra(),
              female: "Équato-guinéenne",
              male: "Équato-guinéen",
            ),
          ],
          emoji: "🇬🇶",
          maps: const Maps(
            googleMaps: "ucWfFd8aW1FbGMva9",
            openStreetMaps: "relation/192791",
          ),
          population: 1402985,
          gini: null,
          fifa: "EQG",
          car: const Car(sign: "GQ"),
          timezones: const ["UTC+01:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Malabo"),
            latLng: LatLng(3.75, 8.78),
          ),
          postalCode: null,
          regionalBlocs: const [BlocAU()],
        );
}

/// A class that represents the Greece country.
class CountryGrc extends WorldCountry {
  /// Creates a instance of [CountryGrc] (Greece country).
  ///
  /// ISO 3166-1 Alpha-3 code: "GRC", ISO 3166-1 Alpha-2 code: "GR".
  const CountryGrc()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Hellenic Republic",
            common: "Greece",
          ),
          namesNative: const [
            CountryName(
              language: LangEll(),
              official: "Ελληνική Δημοκρατία",
              common: "Ελλάδα",
            ),
          ],
          tld: const [".gr"],
          code: "GRC",
          codeNumeric: "300",
          codeShort: "GR",
          cioc: "GRE",
          independent: true,
          unMember: true,
          currencies: const [FiatEur()],
          idd: const Idd(root: 3, suffixes: [0]),
          altSpellings: const [
            "GR",
            "Elláda",
            "Hellenic Republic",
            "Ελληνική Δημοκρατία",
          ],
          continent: const Europe(),
          subregion: const SouthernEurope(),
          languages: const [LangEll()],
          translations: grcCountryTranslations,
          latLng: const LatLng(39, 22),
          landlocked: false,
          bordersCodes: const ["Alb", "Bgr", "Tur", "Mkd"],
          areaMetric: 131990,
          demonyms: const [
            Demonyms(language: LangEng(), female: "Greek", male: "Greek"),
            Demonyms(language: LangFra(), female: "Grecque", male: "Grec"),
          ],
          emoji: "🇬🇷",
          maps: const Maps(
            googleMaps: "LHGcAvuRyD2iKECC6",
            openStreetMaps: "relation/192307",
          ),
          population: 10715549,
          gini: const Gini(year: 2018, coefficient: 32.9),
          fifa: "GRE",
          car: const Car(sign: "GR"),
          timezones: const ["UTC+02:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Athens"),
            latLng: LatLng(37.98, 23.73),
          ),
          postalCode: const PostalCode(format: "### ##"),
          regionalBlocs: const [BlocEU()],
        );
}

/// A class that represents the Grenada country.
class CountryGrd extends WorldCountry {
  /// Creates a instance of [CountryGrd] (Grenada country).
  ///
  /// ISO 3166-1 Alpha-3 code: "GRD", ISO 3166-1 Alpha-2 code: "GD".
  const CountryGrd()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Grenada",
            common: "Grenada",
          ),
          namesNative: const [
            CountryName(
              language: LangEng(),
              official: "Grenada",
              common: "Grenada",
            ),
          ],
          tld: const [".gd"],
          code: "GRD",
          codeNumeric: "308",
          codeShort: "GD",
          cioc: "GRN",
          independent: true,
          unMember: true,
          currencies: const [FiatXcd()],
          idd: const Idd(root: 1, suffixes: [473]),
          altSpellings: const ["GD"],
          continent: const Americas(),
          subregion: const Caribbean(),
          languages: const [LangEng()],
          translations: grdCountryTranslations,
          latLng: const LatLng(12.11666666, -61.66666666),
          landlocked: false,
          bordersCodes: null,
          areaMetric: 344,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Grenadian",
              male: "Grenadian",
            ),
            Demonyms(
              language: LangFra(),
              female: "Grenadienne",
              male: "Grenadien",
            ),
          ],
          emoji: "🇬🇩",
          maps: const Maps(
            googleMaps: "rqWyfUAt4xhvk1Zy9",
            openStreetMaps: "relation/550727",
          ),
          population: 112519,
          gini: null,
          fifa: "GRN",
          car: const Car(sign: "WG", isRightSide: false),
          timezones: const ["UTC-04:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("St. George's"),
            latLng: LatLng(32.38, -64.68),
          ),
          postalCode: null,
          regionalBlocs: const [BlocCAIS()],
        );
}

/// A class that represents the Greenland country.
class CountryGrl extends WorldCountry {
  /// Creates a instance of [CountryGrl] (Greenland country).
  ///
  /// ISO 3166-1 Alpha-3 code: "GRL", ISO 3166-1 Alpha-2 code: "GL".
  const CountryGrl()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Greenland",
            common: "Greenland",
          ),
          namesNative: const [
            CountryName(
              language: LangKal(),
              official: "Kalaallit Nunaat",
              common: "Kalaallit Nunaat",
            ),
          ],
          tld: const [".gl"],
          code: "GRL",
          codeNumeric: "304",
          codeShort: "GL",
          cioc: null,
          independent: false,
          unMember: false,
          currencies: const [FiatDkk()],
          idd: const Idd(root: 2, suffixes: [99]),
          altSpellings: const ["GL", "Grønland"],
          continent: const Americas(),
          subregion: const NorthAmerica(),
          languages: const [LangKal()],
          translations: grlCountryTranslations,
          latLng: const LatLng(72, -40),
          landlocked: false,
          bordersCodes: null,
          areaMetric: 2166086,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Greenlandic",
              male: "Greenlandic",
            ),
            Demonyms(
              language: LangFra(),
              female: "Groenlandaise",
              male: "Groenlandais",
            ),
          ],
          emoji: "🇬🇱",
          maps: const Maps(
            googleMaps: "j3289UPEQXt1ceSy8",
            openStreetMaps: "relation/2184073",
          ),
          population: 56367,
          gini: null,
          fifa: null,
          car: const Car(sign: "DK"),
          timezones: const [
            "UTC-04:00",
            "UTC-03:00",
            "UTC-01:00",
            "UTC+00:00",
          ],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Nuuk"),
            latLng: LatLng(64.18, -51.75),
          ),
          postalCode:
              const PostalCode(format: "####", regExpPattern: r"^(\d{4})$"),
          regionalBlocs: null,
        );
}

/// A class that represents the Guatemala country.
class CountryGtm extends WorldCountry {
  /// Creates a instance of [CountryGtm] (Guatemala country).
  ///
  /// ISO 3166-1 Alpha-3 code: "GTM", ISO 3166-1 Alpha-2 code: "GT".
  const CountryGtm()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Republic of Guatemala",
            common: "Guatemala",
          ),
          namesNative: const [
            CountryName(
              language: LangSpa(),
              official: "República de Guatemala",
              common: "Guatemala",
            ),
          ],
          tld: const [".gt"],
          code: "GTM",
          codeNumeric: "320",
          codeShort: "GT",
          cioc: "GUA",
          independent: true,
          unMember: true,
          currencies: const [FiatGtq()],
          idd: const Idd(root: 50, suffixes: [2]),
          altSpellings: const ["GT"],
          continent: const Americas(),
          subregion: const CentralAmerica(),
          languages: const [LangSpa()],
          translations: gtmCountryTranslations,
          latLng: const LatLng(15.5, -90.25),
          landlocked: false,
          bordersCodes: const ["Blz", "Slv", "Hnd", "Mex"],
          areaMetric: 108889,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Guatemalan",
              male: "Guatemalan",
            ),
            Demonyms(
              language: LangFra(),
              female: "Guatémaltèque",
              male: "Guatémaltèque",
            ),
          ],
          emoji: "🇬🇹",
          maps: const Maps(
            googleMaps: "JoRAbem4Hxb9FYbVA",
            openStreetMaps: "relation/1521463",
          ),
          population: 16858333,
          gini: const Gini(year: 2014, coefficient: 48.3),
          fifa: "GUA",
          car: const Car(sign: "GCA"),
          timezones: const ["UTC-06:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Guatemala City"),
            latLng: LatLng(14.62, -90.52),
          ),
          postalCode: const PostalCode(),
          regionalBlocs: null,
        );
}

/// A class that represents the French Guiana country.
class CountryGuf extends WorldCountry {
  /// Creates a instance of [CountryGuf] (French Guiana country).
  ///
  /// ISO 3166-1 Alpha-3 code: "GUF", ISO 3166-1 Alpha-2 code: "GF".
  const CountryGuf()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Guiana",
            common: "French Guiana",
          ),
          namesNative: const [
            CountryName(
              language: LangFra(),
              official: "Guyane",
              common: "Guyane française",
            ),
          ],
          tld: const [".gf"],
          code: "GUF",
          codeNumeric: "254",
          codeShort: "GF",
          cioc: null,
          independent: false,
          unMember: false,
          currencies: const [FiatEur()],
          idd: const Idd(root: 5, suffixes: [94]),
          altSpellings: const ["GF", "Guiana", "Guyane"],
          continent: const Americas(),
          subregion: const SouthAmerica(),
          languages: const [LangFra()],
          translations: gufCountryTranslations,
          latLng: const LatLng(4, -53),
          landlocked: false,
          bordersCodes: const ["Bra", "Sur"],
          areaMetric: 83534,
          demonyms: const [
            Demonyms(language: LangEng(), female: "Guianan", male: "Guianan"),
            Demonyms(
              language: LangFra(),
              female: "Guyanaise",
              male: "Guyanais",
            ),
          ],
          emoji: "🇬🇫",
          maps: const Maps(
            googleMaps: "NJawFwMzG7YtCrVP7",
            openStreetMaps: "relation/2502058",
          ),
          population: 254541,
          gini: null,
          fifa: null,
          car: const Car(sign: "F"),
          timezones: const ["UTC-03:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Cayenne"),
            latLng: LatLng(4.94, -52.33),
          ),
          postalCode: const PostalCode(regExpPattern: r"^((97|98)3\d{2})$"),
          regionalBlocs: const [BlocUSAN()],
        );
}

/// A class that represents the Guam country.
class CountryGum extends WorldCountry {
  /// Creates a instance of [CountryGum] (Guam country).
  ///
  /// ISO 3166-1 Alpha-3 code: "GUM", ISO 3166-1 Alpha-2 code: "GU".
  const CountryGum()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Guam",
            common: "Guam",
          ),
          namesNative: const [
            CountryName(
              language: LangCha(),
              official: "Guåhån",
              common: "Guåhån",
            ),
            CountryName(
              language: LangEng(),
              official: "Guam",
              common: "Guam",
            ),
            CountryName(language: LangSpa(), official: "Guam", common: "Guam"),
          ],
          tld: const [".gu"],
          code: "GUM",
          codeNumeric: "316",
          codeShort: "GU",
          cioc: "GUM",
          independent: false,
          unMember: false,
          currencies: const [FiatUsd()],
          idd: const Idd(root: 1, suffixes: [671]),
          altSpellings: const ["GU", "Guåhån"],
          continent: const Oceania(),
          subregion: const Micronesia(),
          languages: const [LangCha(), LangEng(), LangSpa()],
          translations: gumCountryTranslations,
          latLng: const LatLng(13.46666666, 144.78333333),
          landlocked: false,
          bordersCodes: null,
          areaMetric: 549,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Guamanian",
              male: "Guamanian",
            ),
          ],
          emoji: "🇬🇺",
          maps: const Maps(
            googleMaps: "Xfnq2i279b18cH3C9",
            openStreetMaps: "relation/306001",
          ),
          population: 168783,
          gini: null,
          fifa: "GUM",
          car: const Car(sign: "USA"),
          timezones: const ["UTC+10:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Hagåtña"),
            latLng: LatLng(13.48, 144.75),
          ),
          postalCode: const PostalCode(
            format: "969##",
            regExpPattern: r"^(969\d{2})$",
          ),
          regionalBlocs: null,
        );
}

/// A class that represents the Guyana country.
class CountryGuy extends WorldCountry {
  /// Creates a instance of [CountryGuy] (Guyana country).
  ///
  /// ISO 3166-1 Alpha-3 code: "GUY", ISO 3166-1 Alpha-2 code: "GY".
  const CountryGuy()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Co-operative Republic of Guyana",
            common: "Guyana",
          ),
          namesNative: const [
            CountryName(
              language: LangEng(),
              official: "Co-operative Republic of Guyana",
              common: "Guyana",
            ),
          ],
          tld: const [".gy"],
          code: "GUY",
          codeNumeric: "328",
          codeShort: "GY",
          cioc: "GUY",
          independent: true,
          unMember: true,
          currencies: const [FiatGyd()],
          idd: const Idd(root: 5, suffixes: [92]),
          altSpellings: const ["GY", "Co-operative Republic of Guyana"],
          continent: const Americas(),
          subregion: const SouthAmerica(),
          languages: const [LangEng()],
          translations: guyCountryTranslations,
          latLng: const LatLng(5, -59),
          landlocked: false,
          bordersCodes: const ["Bra", "Sur", "Ven"],
          areaMetric: 214969,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Guyanese",
              male: "Guyanese",
            ),
            Demonyms(
              language: LangFra(),
              female: "Guyanienne",
              male: "Guyanien",
            ),
          ],
          emoji: "🇬🇾",
          maps: const Maps(
            googleMaps: "DFsme2xEeugUAsCx5",
            openStreetMaps: "relation/287083",
          ),
          population: 786559,
          gini: const Gini(year: 1998, coefficient: 45.1),
          fifa: "GUY",
          car: const Car(sign: "GUY", isRightSide: false),
          timezones: const ["UTC-04:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Georgetown"),
            latLng: LatLng(6.8, -58.15),
          ),
          postalCode: null,
          regionalBlocs: const [BlocCARICOM(), BlocUSAN()],
        );
}

/// A class that represents the Hong Kong country.
class CountryHkg extends WorldCountry {
  /// Creates a instance of [CountryHkg] (Hong Kong country).
  ///
  /// ISO 3166-1 Alpha-3 code: "HKG", ISO 3166-1 Alpha-2 code: "HK".
  const CountryHkg()
      : super(
          name: const CountryName(
            language: LangEng(),
            official:
                "Hong Kong Special Administrative Region of the People's Republic of China",
            common: "Hong Kong",
          ),
          namesNative: const [
            CountryName(
              language: LangEng(),
              official:
                  "Hong Kong Special Administrative Region of the People's Republic of China",
              common: "Hong Kong",
            ),
            CountryName(
              language: LangZho(),
              official: "中华人民共和国香港特别行政区",
              common: "香港",
            ),
          ],
          tld: const [".hk", ".香港"],
          code: "HKG",
          codeNumeric: "344",
          codeShort: "HK",
          cioc: "HKG",
          independent: false,
          unMember: false,
          currencies: const [FiatHkd()],
          idd: const Idd(root: 8, suffixes: [52]),
          altSpellings: const ["HK"],
          continent: const Asia(),
          subregion: const EasternAsia(),
          languages: const [LangEng(), LangZho()],
          translations: hkgCountryTranslations,
          latLng: const LatLng(22.267, 114.188),
          landlocked: false,
          bordersCodes: const ["Chn"],
          areaMetric: 1104,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Hong Konger",
              male: "Hong Konger",
            ),
            Demonyms(
              language: LangFra(),
              female: "Hongkongaise",
              male: "Hongkongais",
            ),
          ],
          emoji: "🇭🇰",
          maps: const Maps(
            googleMaps: "1sEnNmT47ffrC8MU8",
            openStreetMaps: "relation/913110",
          ),
          population: 7500700,
          gini: null,
          fifa: "HKG",
          car: const Car(sign: "HK", isRightSide: false),
          timezones: const ["UTC+08:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("City of Victoria"),
            latLng: LatLng(22.267, 114.188),
          ),
          postalCode: null,
          regionalBlocs: null,
        );
}

/// A class that represents the Heard Island and McDonald Islands country.
class CountryHmd extends WorldCountry {
  /// Creates a instance of [CountryHmd] (Heard Island and McDonald Islands country).
  ///
  /// ISO 3166-1 Alpha-3 code: "HMD", ISO 3166-1 Alpha-2 code: "HM".
  const CountryHmd()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Heard Island and McDonald Islands",
            common: "Heard Island and McDonald Islands",
          ),
          namesNative: const [
            CountryName(
              language: LangEng(),
              official: "Heard Island and McDonald Islands",
              common: "Heard Island and McDonald Islands",
            ),
          ],
          tld: const [".hm", ".aq"],
          code: "HMD",
          codeNumeric: "334",
          codeShort: "HM",
          cioc: null,
          independent: false,
          unMember: false,
          currencies: null,
          idd: const Idd(root: 6, suffixes: [72]),
          altSpellings: const ["HM", "Heard Island and McDonald Islands"],
          continent: const Antarctica(),
          subregion: null,
          languages: const [LangEng()],
          translations: hmdCountryTranslations,
          latLng: const LatLng(53.0818, 73.5042),
          landlocked: false,
          bordersCodes: null,
          areaMetric: 412,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Heard and McDonald Islander",
              male: "Heard and McDonald Islander",
            ),
          ],
          emoji: "🇭🇲",
          maps: const Maps(
            googleMaps: "k5FBAiVaVyozuYeA7",
            openStreetMaps: "relation/2177227",
          ),
          population: 0,
          gini: null,
          fifa: null,
          car: const Car(),
          timezones: const ["UTC+05:00"],
          hasCoatOfArms: false,
          startOfWeek: Weekday.monday,
          capitalInfo: null,
          postalCode: null,
          regionalBlocs: null,
        );
}

/// A class that represents the Honduras country.
class CountryHnd extends WorldCountry {
  /// Creates a instance of [CountryHnd] (Honduras country).
  ///
  /// ISO 3166-1 Alpha-3 code: "HND", ISO 3166-1 Alpha-2 code: "HN".
  const CountryHnd()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Republic of Honduras",
            common: "Honduras",
          ),
          namesNative: const [
            CountryName(
              language: LangSpa(),
              official: "República de Honduras",
              common: "Honduras",
            ),
          ],
          tld: const [".hn"],
          code: "HND",
          codeNumeric: "340",
          codeShort: "HN",
          cioc: "HON",
          independent: true,
          unMember: true,
          currencies: const [FiatHnl()],
          idd: const Idd(root: 50, suffixes: [4]),
          altSpellings: const [
            "HN",
            "Republic of Honduras",
            "República de Honduras",
          ],
          continent: const Americas(),
          subregion: const CentralAmerica(),
          languages: const [LangSpa()],
          translations: hndCountryTranslations,
          latLng: const LatLng(15, -86.5),
          landlocked: false,
          bordersCodes: const ["Gtm", "Slv", "Nic"],
          areaMetric: 112492,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Honduran",
              male: "Honduran",
            ),
            Demonyms(
              language: LangFra(),
              female: "Hondurienne",
              male: "Hondurien",
            ),
          ],
          emoji: "🇭🇳",
          maps: const Maps(
            googleMaps: "BbeJK8Sk2VkMHbdF8",
            openStreetMaps: "relation/287670",
          ),
          population: 9904608,
          gini: const Gini(year: 2019, coefficient: 48.2),
          fifa: "HON",
          car: const Car(sign: "HN"),
          timezones: const ["UTC-06:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Tegucigalpa"),
            latLng: LatLng(14.1, -87.22),
          ),
          postalCode: const PostalCode(
            format: "@@####",
            regExpPattern: r"^([A-Z]{2}\d{4})$",
          ),
          regionalBlocs: const [BlocCAIS()],
        );
}

/// A class that represents the Croatia country.
class CountryHrv extends WorldCountry {
  /// Creates a instance of [CountryHrv] (Croatia country).
  ///
  /// ISO 3166-1 Alpha-3 code: "HRV", ISO 3166-1 Alpha-2 code: "HR".
  const CountryHrv()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Republic of Croatia",
            common: "Croatia",
          ),
          namesNative: const [
            CountryName(
              language: LangHrv(),
              official: "Republika Hrvatska",
              common: "Hrvatska",
            ),
          ],
          tld: const [".hr"],
          code: "HRV",
          codeNumeric: "191",
          codeShort: "HR",
          cioc: "CRO",
          independent: true,
          unMember: true,
          currencies: const [FiatEur()],
          idd: const Idd(root: 3, suffixes: [85]),
          altSpellings: const [
            "HR",
            "Hrvatska",
            "Republic of Croatia",
            "Republika Hrvatska",
          ],
          continent: const Europe(),
          subregion: const SouthwestEurope(),
          languages: const [LangHrv()],
          translations: hrvCountryTranslations,
          latLng: const LatLng(45.16666666, 15.5),
          landlocked: false,
          bordersCodes: const ["Bih", "Hun", "Mne", "Srb", "Svn"],
          areaMetric: 56594,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Croatian",
              male: "Croatian",
            ),
            Demonyms(language: LangFra(), female: "Croate", male: "Croate"),
          ],
          emoji: "🇭🇷",
          maps: const Maps(
            googleMaps: "qSG6xTKUmrYpwmGQ6",
            openStreetMaps: "relation/214885",
          ),
          population: 4047200,
          gini: const Gini(year: 2018, coefficient: 29.7),
          fifa: "CRO",
          car: const Car(sign: "HR"),
          timezones: const ["UTC+01:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Zagreb"),
            latLng: LatLng(45.8, 16),
          ),
          postalCode: const PostalCode(
            format: "HR-#####",
            regExpPattern: r"^(?:HR)*(\d{5})$",
          ),
          regionalBlocs: const [BlocEU()],
        );
}

/// A class that represents the Haiti country.
class CountryHti extends WorldCountry {
  /// Creates a instance of [CountryHti] (Haiti country).
  ///
  /// ISO 3166-1 Alpha-3 code: "HTI", ISO 3166-1 Alpha-2 code: "HT".
  const CountryHti()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Republic of Haiti",
            common: "Haiti",
          ),
          namesNative: const [
            CountryName(
              language: LangFra(),
              official: "République d'Haïti",
              common: "Haïti",
            ),
            CountryName(
              language: LangHat(),
              official: "Repiblik Ayiti",
              common: "Ayiti",
            ),
          ],
          tld: const [".ht"],
          code: "HTI",
          codeNumeric: "332",
          codeShort: "HT",
          cioc: "HAI",
          independent: true,
          unMember: true,
          currencies: const [FiatHtg()],
          idd: const Idd(root: 50, suffixes: [9]),
          altSpellings: const [
            "HT",
            "Republic of Haiti",
            "République d'Haïti",
            "Repiblik Ayiti",
          ],
          continent: const Americas(),
          subregion: const Caribbean(),
          languages: const [LangFra(), LangHat()],
          translations: htiCountryTranslations,
          latLng: const LatLng(19, -72.41666666),
          landlocked: false,
          bordersCodes: const ["Dom"],
          areaMetric: 27750,
          demonyms: const [
            Demonyms(language: LangEng(), female: "Haitian", male: "Haitian"),
            Demonyms(
              language: LangFra(),
              female: "Haïtienne",
              male: "Haïtien",
            ),
          ],
          emoji: "🇭🇹",
          maps: const Maps(
            googleMaps: "9o13xtjuUdqFnHbn9",
            openStreetMaps: "relation/307829",
          ),
          population: 11402533,
          gini: const Gini(year: 2012, coefficient: 41.1),
          fifa: "HAI",
          car: const Car(sign: "RH"),
          timezones: const ["UTC-05:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Port-au-Prince"),
            latLng: LatLng(18.53, -72.33),
          ),
          postalCode: const PostalCode(
            format: "HT####",
            regExpPattern: r"^(?:HT)*(\d{4})$",
          ),
          regionalBlocs: const [BlocCARICOM()],
        );
}

/// A class that represents the Hungary country.
class CountryHun extends WorldCountry {
  /// Creates a instance of [CountryHun] (Hungary country).
  ///
  /// ISO 3166-1 Alpha-3 code: "HUN", ISO 3166-1 Alpha-2 code: "HU".
  const CountryHun()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Hungary",
            common: "Hungary",
          ),
          namesNative: const [
            CountryName(
              language: LangHun(),
              official: "Magyarország",
              common: "Magyarország",
            ),
          ],
          tld: const [".hu"],
          code: "HUN",
          codeNumeric: "348",
          codeShort: "HU",
          cioc: "HUN",
          independent: true,
          unMember: true,
          currencies: const [FiatHuf()],
          idd: const Idd(root: 3, suffixes: [6]),
          altSpellings: const ["HU"],
          continent: const Europe(),
          subregion: const CentralEurope(),
          languages: const [LangHun()],
          translations: hunCountryTranslations,
          latLng: const LatLng(47, 20),
          landlocked: true,
          bordersCodes: const [
            "Aut",
            "Hrv",
            "Rou",
            "Srb",
            "Svk",
            "Svn",
            "Ukr",
          ],
          areaMetric: 93028,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Hungarian",
              male: "Hungarian",
            ),
            Demonyms(
              language: LangFra(),
              female: "Hongroise",
              male: "Hongrois",
            ),
          ],
          emoji: "🇭🇺",
          maps: const Maps(
            googleMaps: "9gfPupm5bffixiFJ6",
            openStreetMaps: "relation/21335",
          ),
          population: 9749763,
          gini: const Gini(year: 2018, coefficient: 29.6),
          fifa: "HUN",
          car: const Car(sign: "H"),
          timezones: const ["UTC+01:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Budapest"),
            latLng: LatLng(47.5, 19.08),
          ),
          postalCode:
              const PostalCode(format: "####", regExpPattern: r"^(\d{4})$"),
          regionalBlocs: const [BlocEU()],
        );
}

/// A class that represents the Indonesia country.
class CountryIdn extends WorldCountry {
  /// Creates a instance of [CountryIdn] (Indonesia country).
  ///
  /// ISO 3166-1 Alpha-3 code: "IDN", ISO 3166-1 Alpha-2 code: "ID".
  const CountryIdn()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Republic of Indonesia",
            common: "Indonesia",
          ),
          namesNative: const [
            CountryName(
              language: LangInd(),
              official: "Republik Indonesia",
              common: "Indonesia",
            ),
          ],
          tld: const [".id"],
          code: "IDN",
          codeNumeric: "360",
          codeShort: "ID",
          cioc: "INA",
          independent: true,
          unMember: true,
          currencies: const [FiatIdr()],
          idd: const Idd(root: 6, suffixes: [2]),
          altSpellings: const [
            "ID",
            "Republic of Indonesia",
            "Republik Indonesia",
          ],
          continent: const Asia(),
          subregion: const SouthEasternAsia(),
          languages: const [LangInd()],
          translations: idnCountryTranslations,
          latLng: const LatLng(-5, 120),
          landlocked: false,
          bordersCodes: const ["Tls", "Mys", "Png"],
          areaMetric: 1904569,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Indonesian",
              male: "Indonesian",
            ),
            Demonyms(
              language: LangFra(),
              female: "Indonésienne",
              male: "Indonésien",
            ),
          ],
          emoji: "🇮🇩",
          maps: const Maps(
            googleMaps: "9gfPupm5bffixiFJ6",
            openStreetMaps: "relation/21335",
          ),
          population: 273523621,
          gini: const Gini(year: 2019, coefficient: 38.2),
          fifa: "IDN",
          car: const Car(sign: "RI", isRightSide: false),
          timezones: const ["UTC+07:00", "UTC+08:00", "UTC+09:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Jakarta"),
            latLng: LatLng(-6.17, 106.82),
          ),
          postalCode: const PostalCode(),
          regionalBlocs: const [BlocASEAN()],
        );
}

/// A class that represents the Isle of Man country.
class CountryImn extends WorldCountry {
  /// Creates a instance of [CountryImn] (Isle of Man country).
  ///
  /// ISO 3166-1 Alpha-3 code: "IMN", ISO 3166-1 Alpha-2 code: "IM".
  const CountryImn()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Isle of Man",
            common: "Isle of Man",
          ),
          namesNative: const [
            CountryName(
              language: LangEng(),
              official: "Isle of Man",
              common: "Isle of Man",
            ),
            CountryName(
              language: LangGlv(),
              official: "Ellan Vannin or Mannin",
              common: "Mannin",
            ),
          ],
          tld: const [".im"],
          code: "IMN",
          codeNumeric: "833",
          codeShort: "IM",
          cioc: null,
          independent: false,
          unMember: false,
          currencies: const [FiatGbp()],
          idd: const Idd(root: 4, suffixes: [4]),
          altSpellings: const ["IM", "Ellan Vannin", "Mann", "Mannin"],
          continent: const Europe(),
          subregion: const NorthernEurope(),
          languages: const [LangEng(), LangGlv()],
          translations: imnCountryTranslations,
          latLng: const LatLng(54.25, -4.5),
          landlocked: false,
          bordersCodes: null,
          areaMetric: 572,
          demonyms: const [
            Demonyms(language: LangEng(), female: "Manx", male: "Manx"),
          ],
          emoji: "🇮🇲",
          maps: const Maps(
            googleMaps: "4DqVHDgVaFgnh8ZV8",
            openStreetMaps: "relation/62269",
          ),
          population: 85032,
          gini: null,
          fifa: null,
          car: const Car(sign: "GBM", isRightSide: false),
          timezones: const ["UTC+00:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Douglas"),
            latLng: LatLng(54.15, -4.48),
          ),
          postalCode: const PostalCode(
            format: "@# #@@|@## #@@|@@# #@@|@@## #@@|@#@ #@@|@@#@ #@@|GIR0AA",
            regExpPattern:
                r"^(([A-Z]\d{2}[A-Z]{2})|([A-Z]\d{3}[A-Z]{2})|([A-Z]{2}\d{2}[A-Z]{2})|([A-Z]{2}\d{3}[A-Z]{2})|([A-Z]\d[A-Z]\d[A-Z]{2})|([A-Z]{2}\d[A-Z]\d[A-Z]{2})|(GIR0AA))$",
          ),
          regionalBlocs: const [BlocEU()],
        );
}

/// A class that represents the India country.
class CountryInd extends WorldCountry {
  /// Creates a instance of [CountryInd] (India country).
  ///
  /// ISO 3166-1 Alpha-3 code: "IND", ISO 3166-1 Alpha-2 code: "IN".
  const CountryInd()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Republic of India",
            common: "India",
          ),
          namesNative: const [
            CountryName(
              language: LangEng(),
              official: "Republic of India",
              common: "India",
            ),
            CountryName(
              language: LangHin(),
              official: "भारत गणराज्य",
              common: "भारत",
            ),
            CountryName(
              language: LangTam(),
              official: "இந்தியக் குடியரசு",
              common: "இந்தியா",
            ),
          ],
          tld: const [".in"],
          code: "IND",
          codeNumeric: "356",
          codeShort: "IN",
          cioc: "IND",
          independent: true,
          unMember: true,
          currencies: const [FiatInr()],
          idd: const Idd(root: 9, suffixes: [1]),
          altSpellings: const [
            "IN",
            "Bhārat",
            "Republic of India",
            "Bharat Ganrajya",
            "இந்தியா",
          ],
          continent: const Asia(),
          subregion: const SouthernAsia(),
          languages: const [LangEng(), LangHin(), LangTam()],
          translations: indCountryTranslations,
          latLng: const LatLng(20, 77),
          landlocked: false,
          bordersCodes: const ["Bgd", "Btn", "Mmr", "Chn", "Npl", "Pak"],
          areaMetric: 3287590,
          demonyms: const [
            Demonyms(language: LangEng(), female: "Indian", male: "Indian"),
            Demonyms(language: LangFra(), female: "Indienne", male: "Indien"),
          ],
          emoji: "🇮🇳",
          maps: const Maps(
            googleMaps: "WSk3fLwG4vtPQetp7",
            openStreetMaps: "relation/304716",
          ),
          population: 1380004385,
          gini: const Gini(year: 2011, coefficient: 35.7),
          fifa: "IND",
          car: const Car(sign: "IND", isRightSide: false),
          timezones: const ["UTC+05:30"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("New Delhi"),
            latLng: LatLng(28.6, 77.2),
          ),
          postalCode:
              const PostalCode(format: "######", regExpPattern: r"^(\d{6})$"),
          regionalBlocs: const [BlocSAARC()],
        );
}

/// A class that represents the British Indian Ocean Territory country.
class CountryIot extends WorldCountry {
  /// Creates a instance of [CountryIot] (British Indian Ocean Territory country).
  ///
  /// ISO 3166-1 Alpha-3 code: "IOT", ISO 3166-1 Alpha-2 code: "IO".
  const CountryIot()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "British Indian Ocean Territory",
            common: "British Indian Ocean Territory",
          ),
          namesNative: const [
            CountryName(
              language: LangEng(),
              official: "British Indian Ocean Territory",
              common: "British Indian Ocean Territory",
            ),
          ],
          tld: const [".io"],
          code: "IOT",
          codeNumeric: "086",
          codeShort: "IO",
          cioc: null,
          independent: false,
          unMember: false,
          currencies: const [FiatUsd()],
          idd: const Idd(root: 2, suffixes: [46]),
          altSpellings: const ["IO"],
          continent: const Africa(),
          subregion: const EasternAfrica(),
          languages: const [LangEng()],
          translations: iotCountryTranslations,
          latLng: const LatLng(-6, 71.5),
          landlocked: false,
          bordersCodes: null,
          areaMetric: 60,
          demonyms: const [
            Demonyms(language: LangEng(), female: "Indian", male: "Indian"),
          ],
          emoji: "🇮🇴",
          maps: const Maps(
            googleMaps: "bheNucgekVEYozoi6",
            openStreetMaps: "relation/1993867",
          ),
          population: 3000,
          gini: null,
          fifa: null,
          car: const Car(sign: "GB"),
          timezones: const ["UTC+06:00"],
          hasCoatOfArms: false,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Diego Garcia"),
            latLng: LatLng(-7.3, 72.4),
          ),
          postalCode: null,
          regionalBlocs: const [BlocAU()],
        );
}

/// A class that represents the Ireland country.
class CountryIrl extends WorldCountry {
  /// Creates a instance of [CountryIrl] (Ireland country).
  ///
  /// ISO 3166-1 Alpha-3 code: "IRL", ISO 3166-1 Alpha-2 code: "IE".
  const CountryIrl()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Republic of Ireland",
            common: "Ireland",
          ),
          namesNative: const [
            CountryName(
              language: LangEng(),
              official: "Republic of Ireland",
              common: "Ireland",
            ),
            CountryName(
              language: LangGle(),
              official: "Poblacht na hÉireann",
              common: "Éire",
            ),
          ],
          tld: const [".ie"],
          code: "IRL",
          codeNumeric: "372",
          codeShort: "IE",
          cioc: "IRL",
          independent: true,
          unMember: true,
          currencies: const [FiatEur()],
          idd: const Idd(root: 3, suffixes: [53]),
          altSpellings: const [
            "IE",
            "Éire",
            "Republic of Ireland",
            "Poblacht na hÉireann",
          ],
          continent: const Europe(),
          subregion: const NorthernEurope(),
          languages: const [LangEng(), LangGle()],
          translations: irlCountryTranslations,
          latLng: const LatLng(53, -8),
          landlocked: false,
          bordersCodes: const ["Gbr"],
          areaMetric: 70273,
          demonyms: const [
            Demonyms(language: LangEng(), female: "Irish", male: "Irish"),
            Demonyms(
              language: LangFra(),
              female: "Irlandaise",
              male: "Irlandais",
            ),
          ],
          emoji: "🇮🇪",
          maps: const Maps(
            googleMaps: "hxd1BKxgpchStzQC6",
            openStreetMaps: "relation/62273",
          ),
          population: 4994724,
          gini: const Gini(year: 2017, coefficient: 31.4),
          fifa: "IRL",
          car: const Car(sign: "IRL", isRightSide: false),
          timezones: const ["UTC+00:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Dublin"),
            latLng: LatLng(53.32, -6.23),
          ),
          postalCode: const PostalCode(
            format: "#|@#|@#|@#|@#|@#|@#|@",
            regExpPattern:
                r"^(([A-Z]\d{2}[A-Z]{2})|([A-Z]\d{3}[A-Z]{2})|([A-Z]{2}\d{2}[A-Z]{2})|([A-Z]{2}\d{3}[A-Z]{2})|([A-Z]\d[A-Z]\d[A-Z]{2})|([A-Z]{2}\d[A-Z]\d[A-Z]{2})|(GIR0AA))$",
          ),
          regionalBlocs: const [BlocEU()],
        );
}

/// A class that represents the Iran country.
class CountryIrn extends WorldCountry {
  /// Creates a instance of [CountryIrn] (Iran country).
  ///
  /// ISO 3166-1 Alpha-3 code: "IRN", ISO 3166-1 Alpha-2 code: "IR".
  const CountryIrn()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Islamic Republic of Iran",
            common: "Iran",
          ),
          namesNative: const [
            CountryName(
              language: LangFas(),
              official: "جمهوری اسلامی ایران",
              common: "ایران",
            ),
          ],
          tld: const [".ir", "ایران."],
          code: "IRN",
          codeNumeric: "364",
          codeShort: "IR",
          cioc: "IRI",
          independent: true,
          unMember: true,
          currencies: const [FiatIrr()],
          idd: const Idd(root: 9, suffixes: [8]),
          altSpellings: const [
            "IR",
            "Islamic Republic of Iran",
            "Iran, Islamic Republic of",
            "Jomhuri-ye Eslāmi-ye Irān",
          ],
          continent: const Asia(),
          subregion: const SouthernAsia(),
          languages: const [LangFas()],
          translations: irnCountryTranslations,
          latLng: const LatLng(32, 53),
          landlocked: false,
          bordersCodes: const [
            "Afg",
            "Arm",
            "Aze",
            "Irq",
            "Pak",
            "Tur",
            "Tkm",
          ],
          areaMetric: 1648195,
          demonyms: const [
            Demonyms(language: LangEng(), female: "Iranian", male: "Iranian"),
            Demonyms(
              language: LangFra(),
              female: "Iranienne",
              male: "Iranien",
            ),
          ],
          emoji: "🇮🇷",
          maps: const Maps(
            googleMaps: "dMgEGuacBPGYQnjY7",
            openStreetMaps: "relation/304938",
          ),
          population: 83992953,
          gini: const Gini(year: 2018, coefficient: 42),
          fifa: "IRN",
          car: const Car(sign: "IR"),
          timezones: const ["UTC+03:30"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.saturday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Tehran"),
            latLng: LatLng(35.7, 51.42),
          ),
          postalCode: const PostalCode(
            format: "##########",
            regExpPattern: r"^(\d{10})$",
          ),
          regionalBlocs: null,
        );
}

/// A class that represents the Iraq country.
class CountryIrq extends WorldCountry {
  /// Creates a instance of [CountryIrq] (Iraq country).
  ///
  /// ISO 3166-1 Alpha-3 code: "IRQ", ISO 3166-1 Alpha-2 code: "IQ".
  const CountryIrq()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Republic of Iraq",
            common: "Iraq",
          ),
          namesNative: const [
            CountryName(
              language: LangAra(),
              official: "جمهورية العراق",
              common: "العراق",
            ),
          ],
          tld: const [".iq"],
          code: "IRQ",
          codeNumeric: "368",
          codeShort: "IQ",
          cioc: "IRQ",
          independent: true,
          unMember: true,
          currencies: const [FiatIqd()],
          idd: const Idd(root: 9, suffixes: [64]),
          altSpellings: const [
            "IQ",
            "Republic of Iraq",
            "Jumhūriyyat al-‘Irāq",
          ],
          continent: const Asia(),
          subregion: const WesternAsia(),
          languages: const [LangAra()],
          translations: irqCountryTranslations,
          latLng: const LatLng(33, 44),
          landlocked: false,
          bordersCodes: const ["Irn", "Jor", "Kwt", "Sau", "Syr", "Tur"],
          areaMetric: 438317,
          demonyms: const [
            Demonyms(language: LangEng(), female: "Iraqi", male: "Iraqi"),
            Demonyms(
              language: LangFra(),
              female: "Irakienne",
              male: "Irakien",
            ),
          ],
          emoji: "🇮🇶",
          maps: const Maps(
            googleMaps: "iL8Bmy1sUCW9fUk18",
            openStreetMaps: "relation/304934",
          ),
          population: 40222503,
          gini: const Gini(year: 2012, coefficient: 29.5),
          fifa: "IRQ",
          car: const Car(sign: "IRQ"),
          timezones: const ["UTC+03:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.sunday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Baghdad"),
            latLng: LatLng(33.33, 44.4),
          ),
          postalCode: const PostalCode(),
          regionalBlocs: const [BlocAL()],
        );
}

/// A class that represents the Iceland country.
class CountryIsl extends WorldCountry {
  /// Creates a instance of [CountryIsl] (Iceland country).
  ///
  /// ISO 3166-1 Alpha-3 code: "ISL", ISO 3166-1 Alpha-2 code: "IS".
  const CountryIsl()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Iceland",
            common: "Iceland",
          ),
          namesNative: const [
            CountryName(
              language: LangIsl(),
              official: "Ísland",
              common: "Ísland",
            ),
          ],
          tld: const [".is"],
          code: "ISL",
          codeNumeric: "352",
          codeShort: "IS",
          cioc: "ISL",
          independent: true,
          unMember: true,
          currencies: const [FiatIsk()],
          idd: const Idd(root: 3, suffixes: [54]),
          altSpellings: const [
            "IS",
            "Island",
            "Republic of Iceland",
            "Lýðveldið Ísland",
          ],
          continent: const Europe(),
          subregion: const NorthernEurope(),
          languages: const [LangIsl()],
          translations: islCountryTranslations,
          latLng: const LatLng(65, -18),
          landlocked: false,
          bordersCodes: null,
          areaMetric: 103000,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Icelander",
              male: "Icelander",
            ),
            Demonyms(
              language: LangFra(),
              female: "Islandaise",
              male: "Islandais",
            ),
          ],
          emoji: "🇮🇸",
          maps: const Maps(
            googleMaps: "WxFWSQuc3oamNxoE6",
            openStreetMaps: "relation/299133",
          ),
          population: 366425,
          gini: const Gini(year: 2017, coefficient: 26.1),
          fifa: "ISL",
          car: const Car(sign: "IS"),
          timezones: const ["UTC+00:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Reykjavik"),
            latLng: LatLng(64.15, -21.95),
          ),
          postalCode:
              const PostalCode(format: "###", regExpPattern: r"^(\d{3})$"),
          regionalBlocs: const [BlocEFTA()],
        );
}

/// A class that represents the Israel country.
class CountryIsr extends WorldCountry {
  /// Creates a instance of [CountryIsr] (Israel country).
  ///
  /// ISO 3166-1 Alpha-3 code: "ISR", ISO 3166-1 Alpha-2 code: "IL".
  const CountryIsr()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "State of Israel",
            common: "Israel",
          ),
          namesNative: const [
            CountryName(
              language: LangAra(),
              official: "دولة إسرائيل",
              common: "إسرائيل",
            ),
            CountryName(
              language: LangHeb(),
              official: "מדינת ישראל",
              common: "ישראל",
            ),
          ],
          tld: const [".il"],
          code: "ISR",
          codeNumeric: "376",
          codeShort: "IL",
          cioc: "ISR",
          independent: true,
          unMember: true,
          currencies: const [FiatIls()],
          idd: const Idd(root: 9, suffixes: [72]),
          altSpellings: const ["IL", "State of Israel", "Medīnat Yisrā'el"],
          continent: const Asia(),
          subregion: const WesternAsia(),
          languages: const [LangAra(), LangHeb()],
          translations: isrCountryTranslations,
          latLng: const LatLng(31.47, 35.13),
          landlocked: false,
          bordersCodes: const ["Egy", "Jor", "Lbn", "Pse", "Syr"],
          areaMetric: 20770,
          demonyms: const [
            Demonyms(language: LangEng(), female: "Israeli", male: "Israeli"),
            Demonyms(
              language: LangFra(),
              female: "Israélienne",
              male: "Israélien",
            ),
          ],
          emoji: "🇮🇱",
          maps: const Maps(
            googleMaps: "6UY1AH8XeafVwdC97",
            openStreetMaps: "relation/1473946",
          ),
          population: 9216900,
          gini: const Gini(year: 2016, coefficient: 39),
          fifa: "ISR",
          car: const Car(sign: "IL"),
          timezones: const ["UTC+02:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.sunday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Jerusalem"),
            latLng: LatLng(31.77, 35.23),
          ),
          postalCode: const PostalCode(),
          regionalBlocs: null,
        );
}

/// A class that represents the Italy country.
class CountryIta extends WorldCountry {
  /// Creates a instance of [CountryIta] (Italy country).
  ///
  /// ISO 3166-1 Alpha-3 code: "ITA", ISO 3166-1 Alpha-2 code: "IT".
  const CountryIta()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Italian Republic",
            common: "Italy",
          ),
          namesNative: const [
            CountryName(
              language: LangIta(),
              official: "Repubblica italiana",
              common: "Italia",
            ),
          ],
          tld: const [".it"],
          code: "ITA",
          codeNumeric: "380",
          codeShort: "IT",
          cioc: "ITA",
          independent: true,
          unMember: true,
          currencies: const [FiatEur()],
          idd: const Idd(root: 3, suffixes: [9]),
          altSpellings: const [
            "IT",
            "Italian Republic",
            "Repubblica italiana",
          ],
          continent: const Europe(),
          subregion: const SouthernEurope(),
          languages: const [LangIta()],
          translations: itaCountryTranslations,
          latLng: const LatLng(42.83333333, 12.83333333),
          landlocked: false,
          bordersCodes: const ["Aut", "Fra", "Smr", "Svn", "Che", "Vat"],
          areaMetric: 301336,
          demonyms: const [
            Demonyms(language: LangEng(), female: "Italian", male: "Italian"),
            Demonyms(
              language: LangFra(),
              female: "Italienne",
              male: "Italien",
            ),
          ],
          emoji: "🇮🇹",
          maps: const Maps(
            googleMaps: "8M1K27TDj7StTRTq8",
            openStreetMaps: "relation/365331",
          ),
          population: 59554023,
          gini: const Gini(year: 2017, coefficient: 35.9),
          fifa: "ITA",
          car: const Car(sign: "I"),
          timezones: const ["UTC+01:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Rome"),
            latLng: LatLng(41.9, 12.48),
          ),
          postalCode: const PostalCode(),
          regionalBlocs: const [BlocEU()],
        );
}

/// A class that represents the Jamaica country.
class CountryJam extends WorldCountry {
  /// Creates a instance of [CountryJam] (Jamaica country).
  ///
  /// ISO 3166-1 Alpha-3 code: "JAM", ISO 3166-1 Alpha-2 code: "JM".
  const CountryJam()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Jamaica",
            common: "Jamaica",
          ),
          namesNative: const [
            CountryName(
              language: LangEng(),
              official: "Jamaica",
              common: "Jamaica",
            ),
          ],
          tld: const [".jm"],
          code: "JAM",
          codeNumeric: "388",
          codeShort: "JM",
          cioc: "JAM",
          independent: true,
          unMember: true,
          currencies: const [FiatJmd()],
          idd: const Idd(root: 1, suffixes: [658, 876]),
          altSpellings: const ["JM"],
          continent: const Americas(),
          subregion: const Caribbean(),
          languages: const [LangEng()],
          translations: jamCountryTranslations,
          latLng: const LatLng(18.25, -77.5),
          landlocked: false,
          bordersCodes: null,
          areaMetric: 10991,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Jamaican",
              male: "Jamaican",
            ),
            Demonyms(
              language: LangFra(),
              female: "Jamaïcaine",
              male: "Jamaïcain",
            ),
          ],
          emoji: "🇯🇲",
          maps: const Maps(
            googleMaps: "Z8mQ6jxnRQKFwJy9A",
            openStreetMaps: "relation/555017",
          ),
          population: 2961161,
          gini: const Gini(year: 2004, coefficient: 45.5),
          fifa: "JAM",
          car: const Car(sign: "JA", isRightSide: false),
          timezones: const ["UTC-05:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Kingston"),
            latLng: LatLng(17.99702, -76.79358),
          ),
          postalCode: null,
          regionalBlocs: const [BlocCARICOM()],
        );
}

/// A class that represents the Jersey country.
class CountryJey extends WorldCountry {
  /// Creates a instance of [CountryJey] (Jersey country).
  ///
  /// ISO 3166-1 Alpha-3 code: "JEY", ISO 3166-1 Alpha-2 code: "JE".
  const CountryJey()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Bailiwick of Jersey",
            common: "Jersey",
          ),
          namesNative: const [
            CountryName(
              language: LangEng(),
              official: "Bailiwick of Jersey",
              common: "Jersey",
            ),
            CountryName(
              language: LangFra(),
              official: "Bailliage de Jersey",
              common: "Jersey",
            ),
          ],
          tld: const [".je"],
          code: "JEY",
          codeNumeric: "832",
          codeShort: "JE",
          cioc: null,
          independent: false,
          unMember: false,
          currencies: const [FiatGbp()],
          idd: const Idd(root: 4, suffixes: [4]),
          altSpellings: const [
            "JE",
            "Bailiwick of Jersey",
            "Bailliage de Jersey",
            "Bailliage dé Jèrri",
          ],
          continent: const Europe(),
          subregion: const NorthernEurope(),
          languages: const [LangEng(), LangFra()],
          translations: jeyCountryTranslations,
          latLng: const LatLng(49.25, -2.16666666),
          landlocked: false,
          bordersCodes: null,
          areaMetric: 116,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Channel Islander",
              male: "Channel Islander",
            ),
            Demonyms(
              language: LangFra(),
              female: "Jersiaise",
              male: "Jersiais",
            ),
          ],
          emoji: "🇯🇪",
          maps: const Maps(
            googleMaps: "rXG8GZZtsqK92kTCA",
            openStreetMaps: "relation/367988",
          ),
          population: 100800,
          gini: null,
          fifa: null,
          car: const Car(sign: "GBJ", isRightSide: false),
          timezones: const ["UTC+01:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Saint Helier"),
            latLng: LatLng(49.18, -2.1),
          ),
          postalCode: const PostalCode(
            format: "@# #@@|@## #@@|@@# #@@|@@## #@@|@#@ #@@|@@#@ #@@|GIR0AA",
            regExpPattern:
                r"^(([A-Z]\d{2}[A-Z]{2})|([A-Z]\d{3}[A-Z]{2})|([A-Z]{2}\d{2}[A-Z]{2})|([A-Z]{2}\d{3}[A-Z]{2})|([A-Z]\d[A-Z]\d[A-Z]{2})|([A-Z]{2}\d[A-Z]\d[A-Z]{2})|(GIR0AA))$",
          ),
          regionalBlocs: null,
        );
}

/// A class that represents the Jordan country.
class CountryJor extends WorldCountry {
  /// Creates a instance of [CountryJor] (Jordan country).
  ///
  /// ISO 3166-1 Alpha-3 code: "JOR", ISO 3166-1 Alpha-2 code: "JO".
  const CountryJor()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Hashemite Kingdom of Jordan",
            common: "Jordan",
          ),
          namesNative: const [
            CountryName(
              language: LangAra(),
              official: "المملكة الأردنية الهاشمية",
              common: "الأردن",
            ),
          ],
          tld: const [".jo", "الاردن."],
          code: "JOR",
          codeNumeric: "400",
          codeShort: "JO",
          cioc: "JOR",
          independent: true,
          unMember: true,
          currencies: const [FiatJod()],
          idd: const Idd(root: 9, suffixes: [62]),
          altSpellings: const [
            "JO",
            "Hashemite Kingdom of Jordan",
            "al-Mamlakah al-Urdunīyah al-Hāshimīyah",
          ],
          continent: const Asia(),
          subregion: const WesternAsia(),
          languages: const [LangAra()],
          translations: jorCountryTranslations,
          latLng: const LatLng(31, 36),
          landlocked: false,
          bordersCodes: const ["Irq", "Isr", "Pse", "Sau", "Syr"],
          areaMetric: 89342,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Jordanian",
              male: "Jordanian",
            ),
            Demonyms(
              language: LangFra(),
              female: "Jordanienne",
              male: "Jordanien",
            ),
          ],
          emoji: "🇯🇴",
          maps: const Maps(
            googleMaps: "ko1dzSDKg8Gsi9A98",
            openStreetMaps: "relation/184818",
          ),
          population: 10203140,
          gini: const Gini(year: 2010, coefficient: 33.7),
          fifa: "JOR",
          car: const Car(sign: "HKJ"),
          timezones: const ["UTC+03:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.sunday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Amman"),
            latLng: LatLng(31.95, 35.93),
          ),
          postalCode: const PostalCode(),
          regionalBlocs: const [BlocAL()],
        );
}

/// A class that represents the Japan country.
class CountryJpn extends WorldCountry {
  /// Creates a instance of [CountryJpn] (Japan country).
  ///
  /// ISO 3166-1 Alpha-3 code: "JPN", ISO 3166-1 Alpha-2 code: "JP".
  const CountryJpn()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Japan",
            common: "Japan",
          ),
          namesNative: const [
            CountryName(language: LangJpn(), official: "日本", common: "日本"),
          ],
          tld: const [".jp", ".みんな"],
          code: "JPN",
          codeNumeric: "392",
          codeShort: "JP",
          cioc: "JPN",
          independent: true,
          unMember: true,
          currencies: const [FiatJpy()],
          idd: const Idd(root: 8, suffixes: [1]),
          altSpellings: const ["JP", "Nippon", "Nihon"],
          continent: const Asia(),
          subregion: const EasternAsia(),
          languages: const [LangJpn()],
          translations: jpnCountryTranslations,
          latLng: const LatLng(36, 138),
          landlocked: false,
          bordersCodes: null,
          areaMetric: 377930,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Japanese",
              male: "Japanese",
            ),
            Demonyms(
              language: LangFra(),
              female: "Japonaise",
              male: "Japonais",
            ),
          ],
          emoji: "🇯🇵",
          maps: const Maps(
            googleMaps: "NGTLSCSrA8bMrvnX9",
            openStreetMaps: "relation/382313",
          ),
          population: 125836021,
          gini: const Gini(year: 2013, coefficient: 32.9),
          fifa: "JPN",
          car: const Car(sign: "J", isRightSide: false),
          timezones: const ["UTC+09:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Tokyo"),
            latLng: LatLng(35.68, 139.75),
          ),
          postalCode: const PostalCode(
            format: "###-####",
            regExpPattern: r"^(\d{7})$",
          ),
          regionalBlocs: null,
        );
}

/// A class that represents the Kazakhstan country.
class CountryKaz extends WorldCountry {
  /// Creates a instance of [CountryKaz] (Kazakhstan country).
  ///
  /// ISO 3166-1 Alpha-3 code: "KAZ", ISO 3166-1 Alpha-2 code: "KZ".
  const CountryKaz()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Republic of Kazakhstan",
            common: "Kazakhstan",
          ),
          namesNative: const [
            CountryName(
              language: LangKaz(),
              official: "Қазақстан Республикасы",
              common: "Қазақстан",
            ),
            CountryName(
              language: LangRus(),
              official: "Республика Казахстан",
              common: "Казахстан",
            ),
          ],
          tld: const [".kz", ".қаз"],
          code: "KAZ",
          codeNumeric: "398",
          codeShort: "KZ",
          cioc: "KAZ",
          independent: true,
          unMember: true,
          currencies: const [FiatKzt()],
          idd: const Idd(root: 7, suffixes: [6, 7]),
          altSpellings: const [
            "KZ",
            "Qazaqstan",
            "Казахстан",
            "Republic of Kazakhstan",
            "Қазақстан Республикасы",
            "Qazaqstan Respublïkası",
            "Республика Казахстан",
            "Respublika Kazakhstan",
          ],
          continent: const Asia(),
          subregion: const CentralAsia(),
          languages: const [LangKaz(), LangRus()],
          translations: kazCountryTranslations,
          latLng: const LatLng(48.0196, 66.9237),
          landlocked: true,
          bordersCodes: const ["Chn", "Kgz", "Rus", "Tkm", "Uzb"],
          areaMetric: 2724900,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Kazakhstani",
              male: "Kazakhstani",
            ),
            Demonyms(
              language: LangFra(),
              female: "Kazakhstanaise",
              male: "Kazakhstanais",
            ),
          ],
          emoji: "🇰🇿",
          maps: const Maps(
            googleMaps: "8VohJGu7ShuzZYyeA",
            openStreetMaps: "relation/214665",
          ),
          population: 18754440,
          gini: const Gini(year: 2018, coefficient: 27.8),
          fifa: "KAZ",
          car: const Car(sign: "KZ"),
          timezones: const ["UTC+05:00", "UTC+06:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Nur-Sultan"),
            latLng: LatLng(51.16, 71.45),
          ),
          postalCode:
              const PostalCode(format: "######", regExpPattern: r"^(\d{6})$"),
          regionalBlocs: const [BlocEEU()],
        );
}

/// A class that represents the Kenya country.
class CountryKen extends WorldCountry {
  /// Creates a instance of [CountryKen] (Kenya country).
  ///
  /// ISO 3166-1 Alpha-3 code: "KEN", ISO 3166-1 Alpha-2 code: "KE".
  const CountryKen()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Republic of Kenya",
            common: "Kenya",
          ),
          namesNative: const [
            CountryName(
              language: LangEng(),
              official: "Republic of Kenya",
              common: "Kenya",
            ),
            CountryName(
              language: LangSwa(),
              official: "Republic of Kenya",
              common: "Kenya",
            ),
          ],
          tld: const [".ke"],
          code: "KEN",
          codeNumeric: "404",
          codeShort: "KE",
          cioc: "KEN",
          independent: true,
          unMember: true,
          currencies: const [FiatKes()],
          idd: const Idd(root: 2, suffixes: [54]),
          altSpellings: const ["KE", "Republic of Kenya", "Jamhuri ya Kenya"],
          continent: const Africa(),
          subregion: const EasternAfrica(),
          languages: const [LangEng(), LangSwa()],
          translations: kenCountryTranslations,
          latLng: const LatLng(1, 38),
          landlocked: false,
          bordersCodes: const ["Eth", "Som", "Ssd", "Tza", "Uga"],
          areaMetric: 580367,
          demonyms: const [
            Demonyms(language: LangEng(), female: "Kenyan", male: "Kenyan"),
            Demonyms(language: LangFra(), female: "Kényane", male: "Kényan"),
          ],
          emoji: "🇰🇪",
          maps: const Maps(
            googleMaps: "Ni9M7wcCxf8bJHLX8",
            openStreetMaps: "relation/192798",
          ),
          population: 53771300,
          gini: const Gini(year: 2015, coefficient: 40.8),
          fifa: "KEN",
          car: const Car(sign: "EAK", isRightSide: false),
          timezones: const ["UTC+03:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Nairobi"),
            latLng: LatLng(-1.28, 36.82),
          ),
          postalCode: const PostalCode(),
          regionalBlocs: const [BlocAU()],
        );
}

/// A class that represents the Kyrgyzstan country.
class CountryKgz extends WorldCountry {
  /// Creates a instance of [CountryKgz] (Kyrgyzstan country).
  ///
  /// ISO 3166-1 Alpha-3 code: "KGZ", ISO 3166-1 Alpha-2 code: "KG".
  const CountryKgz()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Kyrgyz Republic",
            common: "Kyrgyzstan",
          ),
          namesNative: const [
            CountryName(
              language: LangKir(),
              official: "Кыргыз Республикасы",
              common: "Кыргызстан",
            ),
            CountryName(
              language: LangRus(),
              official: "Кыргызская Республика",
              common: "Киргизия",
            ),
          ],
          tld: const [".kg"],
          code: "KGZ",
          codeNumeric: "417",
          codeShort: "KG",
          cioc: "KGZ",
          independent: true,
          unMember: true,
          currencies: const [FiatKgs()],
          idd: const Idd(root: 9, suffixes: [96]),
          altSpellings: const [
            "KG",
            "Киргизия",
            "Kyrgyz Republic",
            "Кыргыз Республикасы",
            "Kyrgyz Respublikasy",
          ],
          continent: const Asia(),
          subregion: const CentralAsia(),
          languages: const [LangKir(), LangRus()],
          translations: kgzCountryTranslations,
          latLng: const LatLng(41, 75),
          landlocked: true,
          bordersCodes: const ["Chn", "Kaz", "Tjk", "Uzb"],
          areaMetric: 199951,
          demonyms: const [
            Demonyms(language: LangEng(), female: "Kirghiz", male: "Kirghiz"),
            Demonyms(
              language: LangFra(),
              female: "Kirghize",
              male: "Kirghize",
            ),
          ],
          emoji: "🇰🇬",
          maps: const Maps(
            googleMaps: "SKG8BSMMQVvxkRkB7",
            openStreetMaps: "relation/178009",
          ),
          population: 6591600,
          gini: const Gini(year: 2019, coefficient: 29.7),
          fifa: "KGZ",
          car: const Car(sign: "KS"),
          timezones: const ["UTC+06:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Bishkek"),
            latLng: LatLng(42.87, 74.6),
          ),
          postalCode:
              const PostalCode(format: "######", regExpPattern: r"^(\d{6})$"),
          regionalBlocs: const [BlocEEU()],
        );
}

/// A class that represents the Cambodia country.
class CountryKhm extends WorldCountry {
  /// Creates a instance of [CountryKhm] (Cambodia country).
  ///
  /// ISO 3166-1 Alpha-3 code: "KHM", ISO 3166-1 Alpha-2 code: "KH".
  const CountryKhm()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Kingdom of Cambodia",
            common: "Cambodia",
          ),
          namesNative: const [
            CountryName(
              language: LangKhm(),
              official: "ព្រះរាជាណាចក្រកម្ពុជា",
              common: "Kâmpŭchéa",
            ),
          ],
          tld: const [".kh"],
          code: "KHM",
          codeNumeric: "116",
          codeShort: "KH",
          cioc: "CAM",
          independent: true,
          unMember: true,
          currencies: const [FiatKhr(), FiatUsd()],
          idd: const Idd(root: 8, suffixes: [55]),
          altSpellings: const ["KH", "Kingdom of Cambodia"],
          continent: const Asia(),
          subregion: const SouthEasternAsia(),
          languages: const [LangKhm()],
          translations: khmCountryTranslations,
          latLng: const LatLng(13, 105),
          landlocked: false,
          bordersCodes: const ["Lao", "Tha", "Vnm"],
          areaMetric: 181035,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Cambodian",
              male: "Cambodian",
            ),
            Demonyms(
              language: LangFra(),
              female: "Cambodgienne",
              male: "Cambodgien",
            ),
          ],
          emoji: "🇰🇭",
          maps: const Maps(
            googleMaps: "nztQtFSrUXZymJaW8",
            openStreetMaps: "relation/49898",
          ),
          population: 16718971,
          gini: null,
          fifa: "CAM",
          car: const Car(sign: "K"),
          timezones: const ["UTC+07:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Phnom Penh"),
            latLng: LatLng(11.55, 104.92),
          ),
          postalCode: const PostalCode(),
          regionalBlocs: const [BlocASEAN()],
        );
}

/// A class that represents the Kiribati country.
class CountryKir extends WorldCountry {
  /// Creates a instance of [CountryKir] (Kiribati country).
  ///
  /// ISO 3166-1 Alpha-3 code: "KIR", ISO 3166-1 Alpha-2 code: "KI".
  const CountryKir()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Independent and Sovereign Republic of Kiribati",
            common: "Kiribati",
          ),
          namesNative: const [
            CountryName(
              language: LangEng(),
              official: "Independent and Sovereign Republic of Kiribati",
              common: "Kiribati",
            ),
          ],
          tld: const [".ki"],
          code: "KIR",
          codeNumeric: "296",
          codeShort: "KI",
          cioc: "KIR",
          independent: true,
          unMember: true,
          currencies: const [FiatAud()],
          idd: const Idd(root: 6, suffixes: [86]),
          altSpellings: const [
            "KI",
            "Republic of Kiribati",
            "Ribaberiki Kiribati",
          ],
          continent: const Oceania(),
          subregion: const Micronesia(),
          languages: const [LangEng()],
          translations: kirCountryTranslations,
          latLng: const LatLng(1.41666666, 173),
          landlocked: false,
          bordersCodes: null,
          areaMetric: 811,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "I-Kiribati",
              male: "I-Kiribati",
            ),
            Demonyms(
              language: LangFra(),
              female: "Kiribatienne",
              male: "Kiribatien",
            ),
          ],
          emoji: "🇰🇮",
          maps: const Maps(
            googleMaps: "NBfYvrndW4skAimw9",
            openStreetMaps: "relation/571178",
          ),
          population: 119446,
          gini: const Gini(year: 2006, coefficient: 37),
          fifa: null,
          car: const Car(sign: "KIR", isRightSide: false),
          timezones: const ["UTC+12:00", "UTC+13:00", "UTC+14:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("South Tarawa"),
            latLng: LatLng(1.33, 172.98),
          ),
          postalCode: null,
          regionalBlocs: null,
        );
}

/// A class that represents the Saint Kitts and Nevis country.
class CountryKna extends WorldCountry {
  /// Creates a instance of [CountryKna] (Saint Kitts and Nevis country).
  ///
  /// ISO 3166-1 Alpha-3 code: "KNA", ISO 3166-1 Alpha-2 code: "KN".
  const CountryKna()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Federation of Saint Christopher and Nevis",
            common: "Saint Kitts and Nevis",
          ),
          namesNative: const [
            CountryName(
              language: LangEng(),
              official: "Federation of Saint Christopher and Nevis",
              common: "Saint Kitts and Nevis",
            ),
          ],
          tld: const [".kn"],
          code: "KNA",
          codeNumeric: "659",
          codeShort: "KN",
          cioc: "SKN",
          independent: true,
          unMember: true,
          currencies: const [FiatXcd()],
          idd: const Idd(root: 1, suffixes: [869]),
          altSpellings: const [
            "KN",
            "Federation of Saint Christopher and Nevis",
          ],
          continent: const Americas(),
          subregion: const Caribbean(),
          languages: const [LangEng()],
          translations: knaCountryTranslations,
          latLng: const LatLng(17.33333333, -62.75),
          landlocked: false,
          bordersCodes: null,
          areaMetric: 261,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Kittitian or Nevisian",
              male: "Kittitian or Nevisian",
            ),
            Demonyms(
              language: LangFra(),
              female: "Kittitienne-et-nevicienne",
              male: "Kittitien-et-nevicien",
            ),
          ],
          emoji: "🇰🇳",
          maps: const Maps(
            googleMaps: "qiaVwcLVTXX3eoTNA",
            openStreetMaps: "relation/536899",
          ),
          population: 53192,
          gini: null,
          fifa: "SKN",
          car: const Car(sign: "KN", isRightSide: false),
          timezones: const ["UTC-04:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Basseterre"),
            latLng: LatLng(17.3, -62.72),
          ),
          postalCode: null,
          regionalBlocs: const [BlocCARICOM()],
        );
}

/// A class that represents the South Korea country.
class CountryKor extends WorldCountry {
  /// Creates a instance of [CountryKor] (South Korea country).
  ///
  /// ISO 3166-1 Alpha-3 code: "KOR", ISO 3166-1 Alpha-2 code: "KR".
  const CountryKor()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Republic of Korea",
            common: "South Korea",
          ),
          namesNative: const [
            CountryName(language: LangKor(), official: "대한민국", common: "한국"),
          ],
          tld: const [".kr", ".한국"],
          code: "KOR",
          codeNumeric: "410",
          codeShort: "KR",
          cioc: "KOR",
          independent: true,
          unMember: true,
          currencies: const [FiatKrw()],
          idd: const Idd(root: 8, suffixes: [2]),
          altSpellings: const [
            "KR",
            "Korea, Republic of",
            "Republic of Korea",
            "남한",
            "남조선",
          ],
          continent: const Asia(),
          subregion: const EasternAsia(),
          languages: const [LangKor()],
          translations: korCountryTranslations,
          latLng: const LatLng(37, 127.5),
          landlocked: false,
          bordersCodes: const ["Prk"],
          areaMetric: 100210,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "South Korean",
              male: "South Korean",
            ),
            Demonyms(
              language: LangFra(),
              female: "Sud-coréenne",
              male: "Sud-coréen",
            ),
          ],
          emoji: "🇰🇷",
          maps: const Maps(
            googleMaps: "7ecjaJXefjAQhxjGA",
            openStreetMaps: "relation/307756",
          ),
          population: 51780579,
          gini: const Gini(year: 2016, coefficient: 31.4),
          fifa: "KOR",
          car: const Car(sign: "ROK"),
          timezones: const ["UTC+09:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Seoul"),
            latLng: LatLng(37.55, 126.98),
          ),
          postalCode: const PostalCode(
            format: "SEOUL ###-###",
            regExpPattern: r"^(?:SEOUL)*(\d{6})$",
          ),
          regionalBlocs: null,
        );
}

/// A class that represents the Kuwait country.
class CountryKwt extends WorldCountry {
  /// Creates a instance of [CountryKwt] (Kuwait country).
  ///
  /// ISO 3166-1 Alpha-3 code: "KWT", ISO 3166-1 Alpha-2 code: "KW".
  const CountryKwt()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "State of Kuwait",
            common: "Kuwait",
          ),
          namesNative: const [
            CountryName(
              language: LangAra(),
              official: "دولة الكويت",
              common: "الكويت",
            ),
          ],
          tld: const [".kw"],
          code: "KWT",
          codeNumeric: "414",
          codeShort: "KW",
          cioc: "KUW",
          independent: true,
          unMember: true,
          currencies: const [FiatKwd()],
          idd: const Idd(root: 9, suffixes: [65]),
          altSpellings: const ["KW", "State of Kuwait", "Dawlat al-Kuwait"],
          continent: const Asia(),
          subregion: const WesternAsia(),
          languages: const [LangAra()],
          translations: kwtCountryTranslations,
          latLng: const LatLng(29.5, 45.75),
          landlocked: false,
          bordersCodes: const ["Irq", "Sau"],
          areaMetric: 17818,
          demonyms: const [
            Demonyms(language: LangEng(), female: "Kuwaiti", male: "Kuwaiti"),
            Demonyms(
              language: LangFra(),
              female: "Koweïtienne",
              male: "Koweïtien",
            ),
          ],
          emoji: "🇰🇼",
          maps: const Maps(
            googleMaps: "aqr3aNQjS1BAvksJ7",
            openStreetMaps: "relation/305099",
          ),
          population: 4270563,
          gini: null,
          fifa: "KUW",
          car: const Car(sign: "KWT"),
          timezones: const ["UTC+03:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.sunday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Kuwait City"),
            latLng: LatLng(29.37, 47.97),
          ),
          postalCode: const PostalCode(),
          regionalBlocs: const [BlocAL()],
        );
}

/// A class that represents the Laos country.
class CountryLao extends WorldCountry {
  /// Creates a instance of [CountryLao] (Laos country).
  ///
  /// ISO 3166-1 Alpha-3 code: "LAO", ISO 3166-1 Alpha-2 code: "LA".
  const CountryLao()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Lao People's Democratic Republic",
            common: "Laos",
          ),
          namesNative: const [
            CountryName(
              language: LangLao(),
              official: "ສາທາລະນະ ຊາທິປະໄຕ ຄົນລາວ ຂອງ",
              common: "ສປປລາວ",
            ),
          ],
          tld: const [".la"],
          code: "LAO",
          codeNumeric: "418",
          codeShort: "LA",
          cioc: "LAO",
          independent: true,
          unMember: true,
          currencies: const [FiatLak()],
          idd: const Idd(root: 8, suffixes: [56]),
          altSpellings: const [
            "LA",
            "Lao",
            "Lao People's Democratic Republic",
            "Sathalanalat Paxathipatai Paxaxon Lao",
          ],
          continent: const Asia(),
          subregion: const SouthEasternAsia(),
          languages: const [LangLao()],
          translations: laoCountryTranslations,
          latLng: const LatLng(18, 105),
          landlocked: true,
          bordersCodes: const ["Mmr", "Khm", "Chn", "Tha", "Vnm"],
          areaMetric: 236800,
          demonyms: const [
            Demonyms(language: LangEng(), female: "Laotian", male: "Laotian"),
            Demonyms(
              language: LangFra(),
              female: "Laotienne",
              male: "Laotien",
            ),
          ],
          emoji: "🇱🇦",
          maps: const Maps(
            googleMaps: "F3asVB7sRKgSnwbE7",
            openStreetMaps: "relation/49903",
          ),
          population: 7275556,
          gini: const Gini(year: 2018, coefficient: 38.8),
          fifa: "LAO",
          car: const Car(sign: "LAO"),
          timezones: const ["UTC+07:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Vientiane"),
            latLng: LatLng(17.97, 102.6),
          ),
          postalCode: const PostalCode(),
          regionalBlocs: const [BlocASEAN()],
        );
}

/// A class that represents the Lebanon country.
class CountryLbn extends WorldCountry {
  /// Creates a instance of [CountryLbn] (Lebanon country).
  ///
  /// ISO 3166-1 Alpha-3 code: "LBN", ISO 3166-1 Alpha-2 code: "LB".
  const CountryLbn()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Lebanese Republic",
            common: "Lebanon",
          ),
          namesNative: const [
            CountryName(
              language: LangAra(),
              official: "الجمهورية اللبنانية",
              common: "لبنان",
            ),
            CountryName(
              language: LangFra(),
              official: "République libanaise",
              common: "Liban",
            ),
          ],
          tld: const [".lb"],
          code: "LBN",
          codeNumeric: "422",
          codeShort: "LB",
          cioc: "LBN",
          independent: true,
          unMember: true,
          currencies: const [FiatLbp()],
          idd: const Idd(root: 9, suffixes: [61]),
          altSpellings: const [
            "LB",
            "Lebanese Republic",
            "Al-Jumhūrīyah Al-Libnānīyah",
          ],
          continent: const Asia(),
          subregion: const WesternAsia(),
          languages: const [LangAra(), LangFra()],
          translations: lbnCountryTranslations,
          latLng: const LatLng(33.83333333, 35.83333333),
          landlocked: false,
          bordersCodes: const ["Isr", "Syr"],
          areaMetric: 10452,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Lebanese",
              male: "Lebanese",
            ),
            Demonyms(
              language: LangFra(),
              female: "Libanaise",
              male: "Libanais",
            ),
          ],
          emoji: "🇱🇧",
          maps: const Maps(
            googleMaps: "Sz5VCU8UFBqMyTdc9",
            openStreetMaps: "relation/184843",
          ),
          population: 6825442,
          gini: const Gini(year: 2011, coefficient: 31.8),
          fifa: "LBN",
          car: const Car(sign: "RL"),
          timezones: const ["UTC+02:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Beirut"),
            latLng: LatLng(33.87, 35.5),
          ),
          postalCode: const PostalCode(
            format: "#### ####|####",
            regExpPattern: r"^(\d{4}(\d{4})?)$",
          ),
          regionalBlocs: const [BlocAL()],
        );
}

/// A class that represents the Liberia country.
class CountryLbr extends WorldCountry {
  /// Creates a instance of [CountryLbr] (Liberia country).
  ///
  /// ISO 3166-1 Alpha-3 code: "LBR", ISO 3166-1 Alpha-2 code: "LR".
  const CountryLbr()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Republic of Liberia",
            common: "Liberia",
          ),
          namesNative: const [
            CountryName(
              language: LangEng(),
              official: "Republic of Liberia",
              common: "Liberia",
            ),
          ],
          tld: const [".lr"],
          code: "LBR",
          codeNumeric: "430",
          codeShort: "LR",
          cioc: "LBR",
          independent: true,
          unMember: true,
          currencies: const [FiatLrd()],
          idd: const Idd(root: 2, suffixes: [31]),
          altSpellings: const ["LR", "Republic of Liberia"],
          continent: const Africa(),
          subregion: const WesternAfrica(),
          languages: const [LangEng()],
          translations: lbrCountryTranslations,
          latLng: const LatLng(6.5, -9.5),
          landlocked: false,
          bordersCodes: const ["Gin", "Civ", "Sle"],
          areaMetric: 111369,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Liberian",
              male: "Liberian",
            ),
            Demonyms(
              language: LangFra(),
              female: "Libérienne",
              male: "Libérien",
            ),
          ],
          emoji: "🇱🇷",
          maps: const Maps(
            googleMaps: "4VsHsc2oeGeRL3wg6",
            openStreetMaps: "relation/192780",
          ),
          population: 5057677,
          gini: const Gini(year: 2016, coefficient: 35.3),
          fifa: "LBR",
          car: const Car(sign: "LB"),
          timezones: const ["UTC+00:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Monrovia"),
            latLng: LatLng(6.3, -10.8),
          ),
          postalCode:
              const PostalCode(format: "####", regExpPattern: r"^(\d{4})$"),
          regionalBlocs: const [BlocAU(), BlocAL()],
        );
}

/// A class that represents the Libya country.
class CountryLby extends WorldCountry {
  /// Creates a instance of [CountryLby] (Libya country).
  ///
  /// ISO 3166-1 Alpha-3 code: "LBY", ISO 3166-1 Alpha-2 code: "LY".
  const CountryLby()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "State of Libya",
            common: "Libya",
          ),
          namesNative: const [
            CountryName(
              language: LangAra(),
              official: "الدولة ليبيا",
              common: "‏ليبيا",
            ),
          ],
          tld: const [".ly"],
          code: "LBY",
          codeNumeric: "434",
          codeShort: "LY",
          cioc: "LBA",
          independent: true,
          unMember: true,
          currencies: const [FiatLyd()],
          idd: const Idd(root: 2, suffixes: [18]),
          altSpellings: const ["LY", "State of Libya", "Dawlat Libya"],
          continent: const Africa(),
          subregion: const NorthernAfrica(),
          languages: const [LangAra()],
          translations: lbyCountryTranslations,
          latLng: const LatLng(25, 17),
          landlocked: false,
          bordersCodes: const ["Dza", "Tcd", "Egy", "Ner", "Sdn", "Tun"],
          areaMetric: 1759540,
          demonyms: const [
            Demonyms(language: LangEng(), female: "Libyan", male: "Libyan"),
            Demonyms(language: LangFra(), female: "Libyenne", male: "Libyen"),
          ],
          emoji: "🇱🇾",
          maps: const Maps(
            googleMaps: "eLgGnaQWcJEdYRMy5",
            openStreetMaps: "relation/192758",
          ),
          population: 6871287,
          gini: null,
          fifa: "LBY",
          car: const Car(sign: "LAR"),
          timezones: const ["UTC+01:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.sunday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Tripoli"),
            latLng: LatLng(32.88, 13.17),
          ),
          postalCode: null,
          regionalBlocs: null,
        );
}

/// A class that represents the Saint Lucia country.
class CountryLca extends WorldCountry {
  /// Creates a instance of [CountryLca] (Saint Lucia country).
  ///
  /// ISO 3166-1 Alpha-3 code: "LCA", ISO 3166-1 Alpha-2 code: "LC".
  const CountryLca()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Saint Lucia",
            common: "Saint Lucia",
          ),
          namesNative: const [
            CountryName(
              language: LangEng(),
              official: "Saint Lucia",
              common: "Saint Lucia",
            ),
          ],
          tld: const [".lc"],
          code: "LCA",
          codeNumeric: "662",
          codeShort: "LC",
          cioc: "LCA",
          independent: true,
          unMember: true,
          currencies: const [FiatXcd()],
          idd: const Idd(root: 1, suffixes: [758]),
          altSpellings: const ["LC"],
          continent: const Americas(),
          subregion: const Caribbean(),
          languages: const [LangEng()],
          translations: lcaCountryTranslations,
          latLng: const LatLng(13.88333333, -60.96666666),
          landlocked: false,
          bordersCodes: null,
          areaMetric: 616,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Saint Lucian",
              male: "Saint Lucian",
            ),
            Demonyms(
              language: LangFra(),
              female: "Saint-Lucienne",
              male: "Saint-Lucien",
            ),
          ],
          emoji: "🇱🇨",
          maps: const Maps(
            googleMaps: "4HhJ2jkPdSL9BPRcA",
            openStreetMaps: "relation/550728",
          ),
          population: 183629,
          gini: const Gini(year: 2016, coefficient: 51.2),
          fifa: "LCA",
          car: const Car(sign: "WL", isRightSide: false),
          timezones: const ["UTC-04:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Castries"),
            latLng: LatLng(14, -61),
          ),
          postalCode: null,
          regionalBlocs: const [BlocCARICOM()],
        );
}

/// A class that represents the Liechtenstein country.
class CountryLie extends WorldCountry {
  /// Creates a instance of [CountryLie] (Liechtenstein country).
  ///
  /// ISO 3166-1 Alpha-3 code: "LIE", ISO 3166-1 Alpha-2 code: "LI".
  const CountryLie()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Principality of Liechtenstein",
            common: "Liechtenstein",
          ),
          namesNative: const [
            CountryName(
              language: LangDeu(),
              official: "Fürstentum Liechtenstein",
              common: "Liechtenstein",
            ),
          ],
          tld: const [".li"],
          code: "LIE",
          codeNumeric: "438",
          codeShort: "LI",
          cioc: "LIE",
          independent: true,
          unMember: true,
          currencies: const [FiatChf()],
          idd: const Idd(root: 4, suffixes: [23]),
          altSpellings: const [
            "LI",
            "Principality of Liechtenstein",
            "Fürstentum Liechtenstein",
          ],
          continent: const Europe(),
          subregion: const WesternEurope(),
          languages: const [LangDeu()],
          translations: lieCountryTranslations,
          latLng: const LatLng(47.26666666, 9.53333333),
          landlocked: true,
          bordersCodes: const ["Aut", "Che"],
          areaMetric: 160,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Liechtensteiner",
              male: "Liechtensteiner",
            ),
            Demonyms(
              language: LangFra(),
              female: "Liechtensteinoise",
              male: "Liechtensteinois",
            ),
          ],
          emoji: "🇱🇮",
          maps: const Maps(
            googleMaps: "KNuHeiJzAPodwM7y6",
            openStreetMaps: "relation/1155955",
          ),
          population: 38137,
          gini: null,
          fifa: "LIE",
          car: const Car(sign: "FL"),
          timezones: const ["UTC+01:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Vaduz"),
            latLng: LatLng(47.13, 9.52),
          ),
          postalCode:
              const PostalCode(format: "####", regExpPattern: r"^(\d{4})$"),
          regionalBlocs: const [BlocEFTA()],
        );
}

/// A class that represents the Sri Lanka country.
class CountryLka extends WorldCountry {
  /// Creates a instance of [CountryLka] (Sri Lanka country).
  ///
  /// ISO 3166-1 Alpha-3 code: "LKA", ISO 3166-1 Alpha-2 code: "LK".
  const CountryLka()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Democratic Socialist Republic of Sri Lanka",
            common: "Sri Lanka",
          ),
          namesNative: const [
            CountryName(
              language: LangSin(),
              official: "ශ්‍රී ලංකා ප්‍රජාතාන්ත්‍රික සමාජවාදී ජනරජය",
              common: "ශ්‍රී ලංකාව",
            ),
            CountryName(
              language: LangTam(),
              official: "இலங்கை சனநாயக சோசலிசக் குடியரசு",
              common: "இலங்கை",
            ),
          ],
          tld: const [".lk", ".இலங்கை", ".ලංකා"],
          code: "LKA",
          codeNumeric: "144",
          codeShort: "LK",
          cioc: "SRI",
          independent: true,
          unMember: true,
          currencies: const [FiatLkr()],
          idd: const Idd(root: 9, suffixes: [4]),
          altSpellings: const [
            "LK",
            "ilaṅkai",
            "Democratic Socialist Republic of Sri Lanka",
          ],
          continent: const Asia(),
          subregion: const SouthernAsia(),
          languages: const [LangSin(), LangTam()],
          translations: lkaCountryTranslations,
          latLng: const LatLng(7, 81),
          landlocked: false,
          bordersCodes: const ["Ind"],
          areaMetric: 65610,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Sri Lankan",
              male: "Sri Lankan",
            ),
            Demonyms(
              language: LangFra(),
              female: "Sri-lankaise",
              male: "Sri-lankais",
            ),
          ],
          emoji: "🇱🇰",
          maps: const Maps(
            googleMaps: "VkPHoeFSfgzRQCDv8",
            openStreetMaps: "relation/536807",
          ),
          population: 21919000,
          gini: const Gini(year: 2016, coefficient: 39.3),
          fifa: "SRI",
          car: const Car(sign: "CL", isRightSide: false),
          timezones: const ["UTC+05:30"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Sri Jayawardenepura Kotte"),
            latLng: LatLng(6.89, 79.9),
          ),
          postalCode: const PostalCode(),
          regionalBlocs: const [BlocSAARC()],
        );
}

/// A class that represents the Lesotho country.
class CountryLso extends WorldCountry {
  /// Creates a instance of [CountryLso] (Lesotho country).
  ///
  /// ISO 3166-1 Alpha-3 code: "LSO", ISO 3166-1 Alpha-2 code: "LS".
  const CountryLso()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Kingdom of Lesotho",
            common: "Lesotho",
          ),
          namesNative: const [
            CountryName(
              language: LangEng(),
              official: "Kingdom of Lesotho",
              common: "Lesotho",
            ),
            CountryName(
              language: LangSot(),
              official: "Kingdom of Lesotho",
              common: "Lesotho",
            ),
          ],
          tld: const [".ls"],
          code: "LSO",
          codeNumeric: "426",
          codeShort: "LS",
          cioc: "LES",
          independent: true,
          unMember: true,
          currencies: const [FiatLsl(), FiatZar()],
          idd: const Idd(root: 2, suffixes: [66]),
          altSpellings: const ["LS", "Kingdom of Lesotho", "Muso oa Lesotho"],
          continent: const Africa(),
          subregion: const SouthernAfrica(),
          languages: const [LangEng(), LangSot()],
          translations: lsoCountryTranslations,
          latLng: const LatLng(-29.5, 28.5),
          landlocked: true,
          bordersCodes: const ["Zaf"],
          areaMetric: 30355,
          demonyms: const [
            Demonyms(language: LangEng(), female: "Mosotho", male: "Mosotho"),
            Demonyms(
              language: LangFra(),
              female: "Lésothienne",
              male: "Lésothien",
            ),
          ],
          emoji: "🇱🇸",
          maps: const Maps(
            googleMaps: "H8gJi5mL4Cmd1SF28",
            openStreetMaps: "relation/2093234",
          ),
          population: 2142252,
          gini: const Gini(year: 2017, coefficient: 44.9),
          fifa: "LES",
          car: const Car(sign: "LS", isRightSide: false),
          timezones: const ["UTC+02:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Maseru"),
            latLng: LatLng(-29.32, 27.48),
          ),
          postalCode:
              const PostalCode(format: "###", regExpPattern: r"^(\d{3})$"),
          regionalBlocs: const [BlocAU()],
        );
}

/// A class that represents the Lithuania country.
class CountryLtu extends WorldCountry {
  /// Creates a instance of [CountryLtu] (Lithuania country).
  ///
  /// ISO 3166-1 Alpha-3 code: "LTU", ISO 3166-1 Alpha-2 code: "LT".
  const CountryLtu()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Republic of Lithuania",
            common: "Lithuania",
          ),
          namesNative: const [
            CountryName(
              language: LangLit(),
              official: "Lietuvos Respublikos",
              common: "Lietuva",
            ),
          ],
          tld: const [".lt"],
          code: "LTU",
          codeNumeric: "440",
          codeShort: "LT",
          cioc: "LTU",
          independent: true,
          unMember: true,
          currencies: const [FiatEur()],
          idd: const Idd(root: 3, suffixes: [70]),
          altSpellings: const [
            "LT",
            "Republic of Lithuania",
            "Lietuvos Respublika",
          ],
          continent: const Europe(),
          subregion: const NorthernEurope(),
          languages: const [LangLit()],
          translations: ltuCountryTranslations,
          latLng: const LatLng(56, 24),
          landlocked: false,
          bordersCodes: const ["Blr", "Lva", "Pol", "Rus"],
          areaMetric: 65300,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Lithuanian",
              male: "Lithuanian",
            ),
            Demonyms(
              language: LangFra(),
              female: "Lituanienne",
              male: "Lituanien",
            ),
          ],
          emoji: "🇱🇹",
          maps: const Maps(
            googleMaps: "dd1s9rrLjrK2G8yY6",
            openStreetMaps: "relation/72596",
          ),
          population: 2794700,
          gini: const Gini(year: 2018, coefficient: 35.7),
          fifa: "LTU",
          car: const Car(sign: "LT"),
          timezones: const ["UTC+02:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Vilnius"),
            latLng: LatLng(54.68, 25.32),
          ),
          postalCode: const PostalCode(
            format: "LT-#####",
            regExpPattern: r"^(?:LT)*(\d{5})$",
          ),
          regionalBlocs: const [BlocEU()],
        );
}

/// A class that represents the Luxembourg country.
class CountryLux extends WorldCountry {
  /// Creates a instance of [CountryLux] (Luxembourg country).
  ///
  /// ISO 3166-1 Alpha-3 code: "LUX", ISO 3166-1 Alpha-2 code: "LU".
  const CountryLux()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Grand Duchy of Luxembourg",
            common: "Luxembourg",
          ),
          namesNative: const [
            CountryName(
              language: LangDeu(),
              official: "Großherzogtum Luxemburg",
              common: "Luxemburg",
            ),
            CountryName(
              language: LangFra(),
              official: "Grand-Duché de Luxembourg",
              common: "Luxembourg",
            ),
            CountryName(
              language: LangLtz(),
              official: "Groussherzogtum Lëtzebuerg",
              common: "Lëtzebuerg",
            ),
          ],
          tld: const [".lu"],
          code: "LUX",
          codeNumeric: "442",
          codeShort: "LU",
          cioc: "LUX",
          independent: true,
          unMember: true,
          currencies: const [FiatEur()],
          idd: const Idd(root: 3, suffixes: [52]),
          altSpellings: const [
            "LU",
            "Grand Duchy of Luxembourg",
            "Grand-Duché de Luxembourg",
            "Großherzogtum Luxemburg",
            "Groussherzogtum Lëtzebuerg",
          ],
          continent: const Europe(),
          subregion: const WesternEurope(),
          languages: const [LangDeu(), LangFra(), LangLtz()],
          translations: luxCountryTranslations,
          latLng: const LatLng(49.75, 6.16666666),
          landlocked: true,
          bordersCodes: const ["Bel", "Fra", "Deu"],
          areaMetric: 2586,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Luxembourger",
              male: "Luxembourger",
            ),
            Demonyms(
              language: LangFra(),
              female: "Luxembourgeoise",
              male: "Luxembourgeois",
            ),
          ],
          emoji: "🇱🇺",
          maps: const Maps(
            googleMaps: "L6b2AgndgHprt2Ko9",
            openStreetMaps: "relation/2171347#map=10/49.8167/6.1335",
          ),
          population: 632275,
          gini: const Gini(year: 2018, coefficient: 35.4),
          fifa: "LUX",
          car: const Car(sign: "L"),
          timezones: const ["UTC+01:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Luxembourg"),
            latLng: LatLng(49.6, 6.12),
          ),
          postalCode:
              const PostalCode(format: "####", regExpPattern: r"^(\d{4})$"),
          regionalBlocs: const [BlocEU()],
        );
}

/// A class that represents the Latvia country.
class CountryLva extends WorldCountry {
  /// Creates a instance of [CountryLva] (Latvia country).
  ///
  /// ISO 3166-1 Alpha-3 code: "LVA", ISO 3166-1 Alpha-2 code: "LV".
  const CountryLva()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Republic of Latvia",
            common: "Latvia",
          ),
          namesNative: const [
            CountryName(
              language: LangLav(),
              official: "Latvijas Republikas",
              common: "Latvija",
            ),
          ],
          tld: const [".lv"],
          code: "LVA",
          codeNumeric: "428",
          codeShort: "LV",
          cioc: "LAT",
          independent: true,
          unMember: true,
          currencies: const [FiatEur()],
          idd: const Idd(root: 3, suffixes: [71]),
          altSpellings: const [
            "LV",
            "Republic of Latvia",
            "Latvijas Republika",
          ],
          continent: const Europe(),
          subregion: const NorthernEurope(),
          languages: const [LangLav()],
          translations: lvaCountryTranslations,
          latLng: const LatLng(57, 25),
          landlocked: false,
          bordersCodes: const ["Blr", "Est", "Ltu", "Rus"],
          areaMetric: 64559,
          demonyms: const [
            Demonyms(language: LangEng(), female: "Latvian", male: "Latvian"),
            Demonyms(language: LangFra(), female: "Lettone", male: "Letton"),
          ],
          emoji: "🇱🇻",
          maps: const Maps(
            googleMaps: "iQpUkH7ghq31ZtXe9",
            openStreetMaps: "relation/72594",
          ),
          population: 1901548,
          gini: const Gini(year: 2018, coefficient: 35.1),
          fifa: "LVA",
          car: const Car(sign: "LV"),
          timezones: const ["UTC+02:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Riga"),
            latLng: LatLng(56.95, 24.1),
          ),
          postalCode: const PostalCode(
            format: "LV-####",
            regExpPattern: r"^(?:LV)*(\d{4})$",
          ),
          regionalBlocs: const [BlocEU()],
        );
}

/// A class that represents the Macau country.
class CountryMac extends WorldCountry {
  /// Creates a instance of [CountryMac] (Macau country).
  ///
  /// ISO 3166-1 Alpha-3 code: "MAC", ISO 3166-1 Alpha-2 code: "MO".
  const CountryMac()
      : super(
          name: const CountryName(
            language: LangEng(),
            official:
                "Macao Special Administrative Region of the People's Republic of China",
            common: "Macau",
          ),
          namesNative: const [
            CountryName(
              language: LangPor(),
              official:
                  "Região Administrativa Especial de Macau da República Popular da China",
              common: "Macau",
            ),
            CountryName(
              language: LangZho(),
              official: "中华人民共和国澳门特别行政区",
              common: "澳门",
            ),
          ],
          tld: const [".mo"],
          code: "MAC",
          codeNumeric: "446",
          codeShort: "MO",
          cioc: null,
          independent: false,
          unMember: false,
          currencies: const [FiatMop()],
          idd: const Idd(root: 8, suffixes: [53]),
          altSpellings: const [
            "MO",
            "澳门",
            "Macao",
            "Macao Special Administrative Region of the People's Republic of China",
            "中華人民共和國澳門特別行政區",
            "Região Administrativa Especial de Macau da República Popular da China",
          ],
          continent: const Asia(),
          subregion: const EasternAsia(),
          languages: const [LangPor(), LangZho()],
          translations: macCountryTranslations,
          latLng: const LatLng(22.16666666, 113.55),
          landlocked: false,
          bordersCodes: const ["Chn"],
          areaMetric: 30,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Macanese",
              male: "Macanese",
            ),
            Demonyms(
              language: LangFra(),
              female: "Macanaise",
              male: "Macanais",
            ),
          ],
          emoji: "🇲🇴",
          maps: const Maps(
            googleMaps: "whymRdk3dZFfAAs4A",
            openStreetMaps: "relation/1867188",
          ),
          population: 649342,
          gini: null,
          fifa: "MAC",
          car: const Car(sign: "MO", isRightSide: false),
          timezones: const ["UTC+08:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: null,
          postalCode: null,
          regionalBlocs: null,
        );
}

/// A class that represents the Saint Martin country.
class CountryMaf extends WorldCountry {
  /// Creates a instance of [CountryMaf] (Saint Martin country).
  ///
  /// ISO 3166-1 Alpha-3 code: "MAF", ISO 3166-1 Alpha-2 code: "MF".
  const CountryMaf()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Saint Martin",
            common: "Saint Martin",
          ),
          namesNative: const [
            CountryName(
              language: LangFra(),
              official: "Saint-Martin",
              common: "Saint-Martin",
            ),
          ],
          tld: const [".fr", ".gp"],
          code: "MAF",
          codeNumeric: "663",
          codeShort: "MF",
          cioc: null,
          independent: false,
          unMember: false,
          currencies: const [FiatEur()],
          idd: const Idd(root: 5, suffixes: [90]),
          altSpellings: const [
            "MF",
            "Collectivity of Saint Martin",
            "Collectivité de Saint-Martin",
            "Saint Martin (French part)",
          ],
          continent: const Americas(),
          subregion: const Caribbean(),
          languages: const [LangFra()],
          translations: mafCountryTranslations,
          latLng: const LatLng(18.0708, 63.0501),
          landlocked: false,
          bordersCodes: const ["Sxm"],
          areaMetric: 53,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Saint Martin Islander",
              male: "Saint Martin Islander",
            ),
            Demonyms(
              language: LangFra(),
              female: "Saint-Martinoise",
              male: "Saint-Martinois",
            ),
          ],
          emoji: "🇲🇫",
          maps: const Maps(
            googleMaps: "P9ho9QuJ9EAR28JEA",
            openStreetMaps: "relation/63064",
          ),
          population: 38659,
          gini: null,
          fifa: null,
          car: const Car(sign: "F"),
          timezones: const ["UTC-04:00"],
          hasCoatOfArms: false,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Marigot"),
            latLng: LatLng(18.07, -63.08),
          ),
          postalCode: const PostalCode(),
          regionalBlocs: null,
        );
}

/// A class that represents the Morocco country.
class CountryMar extends WorldCountry {
  /// Creates a instance of [CountryMar] (Morocco country).
  ///
  /// ISO 3166-1 Alpha-3 code: "MAR", ISO 3166-1 Alpha-2 code: "MA".
  const CountryMar()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Kingdom of Morocco",
            common: "Morocco",
          ),
          namesNative: const [
            CountryName(
              language: LangAra(),
              official: "المملكة المغربية",
              common: "المغرب",
            ),
          ],
          tld: const [".ma", "المغرب."],
          code: "MAR",
          codeNumeric: "504",
          codeShort: "MA",
          cioc: "MAR",
          independent: true,
          unMember: true,
          currencies: const [FiatMad()],
          idd: const Idd(root: 2, suffixes: [12]),
          altSpellings: const [
            "MA",
            "Kingdom of Morocco",
            "Al-Mamlakah al-Maġribiyah",
          ],
          continent: const Africa(),
          subregion: const NorthernAfrica(),
          languages: const [LangAra()],
          translations: marCountryTranslations,
          latLng: const LatLng(32, -5),
          landlocked: false,
          bordersCodes: const ["Dza", "Esh", "Esp"],
          areaMetric: 446550,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Moroccan",
              male: "Moroccan",
            ),
            Demonyms(
              language: LangFra(),
              female: "Marocaine",
              male: "Marocain",
            ),
          ],
          emoji: "🇲🇦",
          maps: const Maps(
            googleMaps: "6oMv3dyBZg3iaXQ5A",
            openStreetMaps: "relation/3630439",
          ),
          population: 36910558,
          gini: const Gini(year: 2013, coefficient: 39.5),
          fifa: "MAR",
          car: const Car(sign: "MA"),
          timezones: const ["UTC+00:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Rabat"),
            latLng: LatLng(34.02, -6.82),
          ),
          postalCode: const PostalCode(),
          regionalBlocs: const [BlocAU(), BlocAL()],
        );
}

/// A class that represents the Monaco country.
class CountryMco extends WorldCountry {
  /// Creates a instance of [CountryMco] (Monaco country).
  ///
  /// ISO 3166-1 Alpha-3 code: "MCO", ISO 3166-1 Alpha-2 code: "MC".
  const CountryMco()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Principality of Monaco",
            common: "Monaco",
          ),
          namesNative: const [
            CountryName(
              language: LangFra(),
              official: "Principauté de Monaco",
              common: "Monaco",
            ),
          ],
          tld: const [".mc"],
          code: "MCO",
          codeNumeric: "492",
          codeShort: "MC",
          cioc: "MON",
          independent: true,
          unMember: true,
          currencies: const [FiatEur()],
          idd: const Idd(root: 3, suffixes: [77]),
          altSpellings: const [
            "MC",
            "Principality of Monaco",
            "Principauté de Monaco",
          ],
          continent: const Europe(),
          subregion: const WesternEurope(),
          languages: const [LangFra()],
          translations: mcoCountryTranslations,
          latLng: const LatLng(43.73333333, 7.4),
          landlocked: false,
          bordersCodes: const ["Fra"],
          areaMetric: 2.02,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Monegasque",
              male: "Monegasque",
            ),
            Demonyms(
              language: LangFra(),
              female: "Monégasque",
              male: "Monégasque",
            ),
          ],
          emoji: "🇲🇨",
          maps: const Maps(
            googleMaps: "DGpndDot28bYdXYn7",
            openStreetMaps: "relation/1124039",
          ),
          population: 39244,
          gini: null,
          fifa: null,
          car: const Car(sign: "MC"),
          timezones: const ["UTC+01:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Monaco"),
            latLng: LatLng(43.73, 7.42),
          ),
          postalCode: const PostalCode(),
          regionalBlocs: null,
        );
}

/// A class that represents the Moldova country.
class CountryMda extends WorldCountry {
  /// Creates a instance of [CountryMda] (Moldova country).
  ///
  /// ISO 3166-1 Alpha-3 code: "MDA", ISO 3166-1 Alpha-2 code: "MD".
  const CountryMda()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Republic of Moldova",
            common: "Moldova",
          ),
          namesNative: const [
            CountryName(
              language: LangRon(),
              official: "Republica Moldova",
              common: "Moldova",
            ),
          ],
          tld: const [".md"],
          code: "MDA",
          codeNumeric: "498",
          codeShort: "MD",
          cioc: "MDA",
          independent: true,
          unMember: true,
          currencies: const [FiatMdl()],
          idd: const Idd(root: 3, suffixes: [73]),
          altSpellings: const [
            "MD",
            "Moldova, Republic of",
            "Republic of Moldova",
            "Republica Moldova",
          ],
          continent: const Europe(),
          subregion: const EasternEurope(),
          languages: const [LangRon()],
          translations: mdaCountryTranslations,
          latLng: const LatLng(47, 29),
          landlocked: true,
          bordersCodes: const ["Rou", "Ukr"],
          areaMetric: 33846,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Moldovan",
              male: "Moldovan",
            ),
            Demonyms(language: LangFra(), female: "Moldave", male: "Moldave"),
          ],
          emoji: "🇲🇩",
          maps: const Maps(
            googleMaps: "JjmyUuULujnDeFPf7",
            openStreetMaps: "relation/58974",
          ),
          population: 2617820,
          gini: const Gini(year: 2018, coefficient: 25.7),
          fifa: "MDA",
          car: const Car(sign: "MD"),
          timezones: const ["UTC+02:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Chișinău"),
            latLng: LatLng(47.01, 28.9),
          ),
          postalCode: const PostalCode(
            format: "MD-####",
            regExpPattern: r"^(?:MD)*(\d{4})$",
          ),
          regionalBlocs: const [BlocCEFTA()],
        );
}

/// A class that represents the Madagascar country.
class CountryMdg extends WorldCountry {
  /// Creates a instance of [CountryMdg] (Madagascar country).
  ///
  /// ISO 3166-1 Alpha-3 code: "MDG", ISO 3166-1 Alpha-2 code: "MG".
  const CountryMdg()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Republic of Madagascar",
            common: "Madagascar",
          ),
          namesNative: const [
            CountryName(
              language: LangFra(),
              official: "République de Madagascar",
              common: "Madagascar",
            ),
            CountryName(
              language: LangMlg(),
              official: "Repoblikan'i Madagasikara",
              common: "Madagasikara",
            ),
          ],
          tld: const [".mg"],
          code: "MDG",
          codeNumeric: "450",
          codeShort: "MG",
          cioc: "MAD",
          independent: true,
          unMember: true,
          currencies: const [FiatMga()],
          idd: const Idd(root: 2, suffixes: [61]),
          altSpellings: const [
            "MG",
            "Republic of Madagascar",
            "Repoblikan'i Madagasikara",
            "République de Madagascar",
          ],
          continent: const Africa(),
          subregion: const EasternAfrica(),
          languages: const [LangFra(), LangMlg()],
          translations: mdgCountryTranslations,
          latLng: const LatLng(-20, 47),
          landlocked: false,
          bordersCodes: null,
          areaMetric: 587041,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Malagasy",
              male: "Malagasy",
            ),
            Demonyms(
              language: LangFra(),
              female: "Malgache",
              male: "Malgache",
            ),
          ],
          emoji: "🇲🇬",
          maps: const Maps(
            googleMaps: "AHQh2ABBaFW6Ngj26",
            openStreetMaps: "relation/447325",
          ),
          population: 27691019,
          gini: const Gini(year: 2012, coefficient: 42.6),
          fifa: "MAD",
          car: const Car(sign: "RM"),
          timezones: const ["UTC+03:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Antananarivo"),
            latLng: LatLng(-18.92, 47.52),
          ),
          postalCode:
              const PostalCode(format: "###", regExpPattern: r"^(\d{3})$"),
          regionalBlocs: const [BlocAU()],
        );
}

/// A class that represents the Maldives country.
class CountryMdv extends WorldCountry {
  /// Creates a instance of [CountryMdv] (Maldives country).
  ///
  /// ISO 3166-1 Alpha-3 code: "MDV", ISO 3166-1 Alpha-2 code: "MV".
  const CountryMdv()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Republic of the Maldives",
            common: "Maldives",
          ),
          namesNative: const [
            CountryName(
              language: LangDiv(),
              official: "ދިވެހިރާއްޖޭގެ ޖުމްހޫރިއްޔާ",
              common: "ދިވެހިރާއްޖޭގެ",
            ),
          ],
          tld: const [".mv"],
          code: "MDV",
          codeNumeric: "462",
          codeShort: "MV",
          cioc: "MDV",
          independent: true,
          unMember: true,
          currencies: const [FiatMvr()],
          idd: const Idd(root: 9, suffixes: [60]),
          altSpellings: const [
            "MV",
            "Maldive Islands",
            "Republic of the Maldives",
            "Dhivehi Raajjeyge Jumhooriyya",
          ],
          continent: const Asia(),
          subregion: const SouthernAsia(),
          languages: const [LangDiv()],
          translations: mdvCountryTranslations,
          latLng: const LatLng(3.25, 73),
          landlocked: false,
          bordersCodes: null,
          areaMetric: 300,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Maldivan",
              male: "Maldivan",
            ),
            Demonyms(
              language: LangFra(),
              female: "Maldivienne",
              male: "Maldivien",
            ),
          ],
          emoji: "🇲🇻",
          maps: const Maps(
            googleMaps: "MNAWGq9vEdbZ9vUV7",
            openStreetMaps: "relation/536773",
          ),
          population: 540542,
          gini: const Gini(year: 2016, coefficient: 31.3),
          fifa: "MDV",
          car: const Car(sign: "MV", isRightSide: false),
          timezones: const ["UTC+05:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.sunday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Malé"),
            latLng: LatLng(4.17, 73.51),
          ),
          postalCode: const PostalCode(),
          regionalBlocs: const [BlocSAARC()],
        );
}

/// A class that represents the Mexico country.
class CountryMex extends WorldCountry {
  /// Creates a instance of [CountryMex] (Mexico country).
  ///
  /// ISO 3166-1 Alpha-3 code: "MEX", ISO 3166-1 Alpha-2 code: "MX".
  const CountryMex()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "United Mexican States",
            common: "Mexico",
          ),
          namesNative: const [
            CountryName(
              language: LangSpa(),
              official: "Estados Unidos Mexicanos",
              common: "México",
            ),
          ],
          tld: const [".mx"],
          code: "MEX",
          codeNumeric: "484",
          codeShort: "MX",
          cioc: "MEX",
          independent: true,
          unMember: true,
          currencies: const [FiatMxn()],
          idd: const Idd(root: 5, suffixes: [2]),
          altSpellings: const [
            "MX",
            "Mexicanos",
            "United Mexican States",
            "Estados Unidos Mexicanos",
          ],
          continent: const Americas(),
          subregion: const NorthAmerica(),
          languages: const [LangSpa()],
          translations: mexCountryTranslations,
          latLng: const LatLng(23, -102),
          landlocked: false,
          bordersCodes: const ["Blz", "Gtm", "Usa"],
          areaMetric: 1964375,
          demonyms: const [
            Demonyms(language: LangEng(), female: "Mexican", male: "Mexican"),
            Demonyms(
              language: LangFra(),
              female: "Mexicaine",
              male: "Mexicain",
            ),
          ],
          emoji: "🇲🇽",
          maps: const Maps(
            googleMaps: "s5g7imNPMDEePxzbA",
            openStreetMaps: "relation/114686",
          ),
          population: 128932753,
          gini: const Gini(year: 2018, coefficient: 45.4),
          fifa: "MEX",
          car: const Car(sign: "MEX"),
          timezones: const ["UTC-08:00", "UTC-07:00", "UTC-06:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Mexico City"),
            latLng: LatLng(19.43, -99.13),
          ),
          postalCode: const PostalCode(),
          regionalBlocs: const [BlocPA(), BlocNAFTA()],
        );
}

/// A class that represents the Marshall Islands country.
class CountryMhl extends WorldCountry {
  /// Creates a instance of [CountryMhl] (Marshall Islands country).
  ///
  /// ISO 3166-1 Alpha-3 code: "MHL", ISO 3166-1 Alpha-2 code: "MH".
  const CountryMhl()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Republic of the Marshall Islands",
            common: "Marshall Islands",
          ),
          namesNative: const [
            CountryName(
              language: LangEng(),
              official: "Republic of the Marshall Islands",
              common: "Marshall Islands",
            ),
            CountryName(
              language: LangMah(),
              official: "Republic of the Marshall Islands",
              common: "M̧ajeļ",
            ),
          ],
          tld: const [".mh"],
          code: "MHL",
          codeNumeric: "584",
          codeShort: "MH",
          cioc: "MHL",
          independent: true,
          unMember: true,
          currencies: const [FiatUsd()],
          idd: const Idd(root: 6, suffixes: [92]),
          altSpellings: const [
            "MH",
            "Republic of the Marshall Islands",
            "Aolepān Aorōkin M̧ajeļ",
          ],
          continent: const Oceania(),
          subregion: const Micronesia(),
          languages: const [LangEng(), LangMah()],
          translations: mhlCountryTranslations,
          latLng: const LatLng(9, 168),
          landlocked: false,
          bordersCodes: null,
          areaMetric: 181,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Marshallese",
              male: "Marshallese",
            ),
            Demonyms(
              language: LangFra(),
              female: "Marshallaise",
              male: "Marshallais",
            ),
          ],
          emoji: "🇲🇭",
          maps: const Maps(
            googleMaps: "A4xLi1XvcX88gi3W8",
            openStreetMaps: "relation/571771",
          ),
          population: 59194,
          gini: null,
          fifa: null,
          car: const Car(sign: "MH"),
          timezones: const ["UTC+12:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Majuro"),
            latLng: LatLng(7.1, 171.38),
          ),
          postalCode: null,
          regionalBlocs: null,
        );
}

/// A class that represents the North Macedonia country.
class CountryMkd extends WorldCountry {
  /// Creates a instance of [CountryMkd] (North Macedonia country).
  ///
  /// ISO 3166-1 Alpha-3 code: "MKD", ISO 3166-1 Alpha-2 code: "MK".
  const CountryMkd()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Republic of North Macedonia",
            common: "North Macedonia",
          ),
          namesNative: const [
            CountryName(
              language: LangMkd(),
              official: "Република Северна Македонија",
              common: "Македонија",
            ),
          ],
          tld: const [".mk"],
          code: "MKD",
          codeNumeric: "807",
          codeShort: "MK",
          cioc: "MKD",
          independent: true,
          unMember: true,
          currencies: const [FiatMkd()],
          idd: const Idd(root: 3, suffixes: [89]),
          altSpellings: const [
            "MK",
            "The former Yugoslav Republic of Macedonia",
            "Republic of North Macedonia",
            "Macedonia, The Former Yugoslav Republic of",
            "Република Северна Македонија",
          ],
          continent: const Europe(),
          subregion: const SouthwestEurope(),
          languages: const [LangMkd()],
          translations: mkdCountryTranslations,
          latLng: const LatLng(41.83333333, 22),
          landlocked: true,
          bordersCodes: const ["Alb", "Bgr", "Grc", "Srb", "Unk"],
          areaMetric: 25713,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Macedonian",
              male: "Macedonian",
            ),
            Demonyms(
              language: LangFra(),
              female: "Macédonienne",
              male: "Macédonien",
            ),
          ],
          emoji: "🇲🇰",
          maps: const Maps(
            googleMaps: "55Q8MEnF6ACdu3q79",
            openStreetMaps: "relation/53293",
          ),
          population: 2077132,
          gini: const Gini(year: 2018, coefficient: 33),
          fifa: "MKD",
          car: const Car(sign: "MK"),
          timezones: const ["UTC+01:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Skopje"),
            latLng: LatLng(42, 21.43),
          ),
          postalCode:
              const PostalCode(format: "####", regExpPattern: r"^(\d{4})$"),
          regionalBlocs: const [BlocCEFTA()],
        );
}

/// A class that represents the Mali country.
class CountryMli extends WorldCountry {
  /// Creates a instance of [CountryMli] (Mali country).
  ///
  /// ISO 3166-1 Alpha-3 code: "MLI", ISO 3166-1 Alpha-2 code: "ML".
  const CountryMli()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Republic of Mali",
            common: "Mali",
          ),
          namesNative: const [
            CountryName(
              language: LangFra(),
              official: "République du Mali",
              common: "Mali",
            ),
          ],
          tld: const [".ml"],
          code: "MLI",
          codeNumeric: "466",
          codeShort: "ML",
          cioc: "MLI",
          independent: true,
          unMember: true,
          currencies: const [FiatXof()],
          idd: const Idd(root: 2, suffixes: [23]),
          altSpellings: const [
            "ML",
            "Republic of Mali",
            "République du Mali",
          ],
          continent: const Africa(),
          subregion: const WesternAfrica(),
          languages: const [LangFra()],
          translations: mliCountryTranslations,
          latLng: const LatLng(17, -4),
          landlocked: true,
          bordersCodes: const [
            "Dza",
            "Bfa",
            "Gin",
            "Civ",
            "Mrt",
            "Ner",
            "Sen",
          ],
          areaMetric: 1240192,
          demonyms: const [
            Demonyms(language: LangEng(), female: "Malian", male: "Malian"),
            Demonyms(language: LangFra(), female: "Malienne", male: "Malien"),
          ],
          emoji: "🇲🇱",
          maps: const Maps(
            googleMaps: "u9mYJkCB19wyuzh27",
            openStreetMaps: "relation/192785",
          ),
          population: 20250834,
          gini: const Gini(year: 2009, coefficient: 33),
          fifa: "MLI",
          car: const Car(sign: "RMM"),
          timezones: const ["UTC+00:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Bamako"),
            latLng: LatLng(12.65, -8),
          ),
          postalCode: null,
          regionalBlocs: const [BlocAU()],
        );
}

/// A class that represents the Malta country.
class CountryMlt extends WorldCountry {
  /// Creates a instance of [CountryMlt] (Malta country).
  ///
  /// ISO 3166-1 Alpha-3 code: "MLT", ISO 3166-1 Alpha-2 code: "MT".
  const CountryMlt()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Republic of Malta",
            common: "Malta",
          ),
          namesNative: const [
            CountryName(
              language: LangEng(),
              official: "Republic of Malta",
              common: "Malta",
            ),
            CountryName(
              language: LangMlt(),
              official: "Repubblika ta ' Malta",
              common: "Malta",
            ),
          ],
          tld: const [".mt"],
          code: "MLT",
          codeNumeric: "470",
          codeShort: "MT",
          cioc: "MLT",
          independent: true,
          unMember: true,
          currencies: const [FiatEur()],
          idd: const Idd(root: 3, suffixes: [56]),
          altSpellings: const [
            "MT",
            "Republic of Malta",
            "Repubblika ta' Malta",
          ],
          continent: const Europe(),
          subregion: const SouthernEurope(),
          languages: const [LangEng(), LangMlt()],
          translations: mltCountryTranslations,
          latLng: const LatLng(35.9375, 14.3754),
          landlocked: false,
          bordersCodes: null,
          areaMetric: 316,
          demonyms: const [
            Demonyms(language: LangEng(), female: "Maltese", male: "Maltese"),
            Demonyms(language: LangFra(), female: "Maltaise", male: "Maltais"),
          ],
          emoji: "🇲🇹",
          maps: const Maps(
            googleMaps: "skXCqguxDxxEKVk47",
            openStreetMaps: "relation/365307",
          ),
          population: 525285,
          gini: const Gini(year: 2018, coefficient: 28.7),
          fifa: "MLT",
          car: const Car(sign: "M", isRightSide: false),
          timezones: const ["UTC+01:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Valletta"),
            latLng: LatLng(35.88, 14.5),
          ),
          postalCode: const PostalCode(
            format: "@@@ ###|@@@ ##",
            regExpPattern: r"^([A-Z]{3}\d{2}\d?)$",
          ),
          regionalBlocs: const [BlocEU()],
        );
}

/// A class that represents the Myanmar country.
class CountryMmr extends WorldCountry {
  /// Creates a instance of [CountryMmr] (Myanmar country).
  ///
  /// ISO 3166-1 Alpha-3 code: "MMR", ISO 3166-1 Alpha-2 code: "MM".
  const CountryMmr()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Republic of the Union of Myanmar",
            common: "Myanmar",
          ),
          namesNative: const [
            CountryName(
              language: LangMya(),
              official: "ပြည်ထောင်စု သမ္မတ မြန်မာနိုင်ငံတော်",
              common: "မြန်မာ",
            ),
          ],
          tld: const [".mm"],
          code: "MMR",
          codeNumeric: "104",
          codeShort: "MM",
          cioc: "MYA",
          independent: true,
          unMember: true,
          currencies: const [FiatMmk()],
          idd: const Idd(root: 9, suffixes: [5]),
          altSpellings: const [
            "MM",
            "Burma",
            "Republic of the Union of Myanmar",
            "Pyidaunzu Thanmăda Myăma Nainngandaw",
          ],
          continent: const Asia(),
          subregion: const SouthEasternAsia(),
          languages: const [LangMya()],
          translations: mmrCountryTranslations,
          latLng: const LatLng(22, 98),
          landlocked: false,
          bordersCodes: const ["Bgd", "Chn", "Ind", "Lao", "Tha"],
          areaMetric: 676578,
          demonyms: const [
            Demonyms(language: LangEng(), female: "Burmese", male: "Burmese"),
            Demonyms(language: LangFra(), female: "Birmane", male: "Birman"),
          ],
          emoji: "🇲🇲",
          maps: const Maps(
            googleMaps: "4jrZyJkDERUfHyp26",
            openStreetMaps: "relation/50371",
          ),
          population: 54409794,
          gini: const Gini(year: 2017, coefficient: 30.7),
          fifa: "MYA",
          car: const Car(sign: "BUR"),
          timezones: const ["UTC+06:30"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Naypyidaw"),
            latLng: LatLng(19.76, 96.07),
          ),
          postalCode: const PostalCode(),
          regionalBlocs: const [BlocASEAN()],
        );
}

/// A class that represents the Montenegro country.
class CountryMne extends WorldCountry {
  /// Creates a instance of [CountryMne] (Montenegro country).
  ///
  /// ISO 3166-1 Alpha-3 code: "MNE", ISO 3166-1 Alpha-2 code: "ME".
  const CountryMne()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Montenegro",
            common: "Montenegro",
          ),
          namesNative: const [
            CountryName(
              language: LangSrp(),
              official: "Црна Гора",
              common: "Црна Гора",
            ),
          ],
          tld: const [".me"],
          code: "MNE",
          codeNumeric: "499",
          codeShort: "ME",
          cioc: "MNE",
          independent: true,
          unMember: true,
          currencies: const [FiatEur()],
          idd: const Idd(root: 3, suffixes: [82]),
          altSpellings: const ["ME", "Crna Gora"],
          continent: const Europe(),
          subregion: const SouthwestEurope(),
          languages: const [LangSrp()],
          translations: mneCountryTranslations,
          latLng: const LatLng(42.5, 19.3),
          landlocked: false,
          bordersCodes: const ["Alb", "Bih", "Hrv", "Srb", "Unk"],
          areaMetric: 13812,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Montenegrin",
              male: "Montenegrin",
            ),
            Demonyms(
              language: LangFra(),
              female: "Monténégrine",
              male: "Monténégrin",
            ),
          ],
          emoji: "🇲🇪",
          maps: const Maps(
            googleMaps: "4THX1fM7WqANuPbB8",
            openStreetMaps: "relation/53296",
          ),
          population: 621718,
          gini: const Gini(year: 2016, coefficient: 38.5),
          fifa: "MNE",
          car: const Car(sign: "SCG"),
          timezones: const ["UTC+01:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Podgorica"),
            latLng: LatLng(42.43, 19.27),
          ),
          postalCode: const PostalCode(),
          regionalBlocs: const [BlocCEFTA()],
        );
}

/// A class that represents the Mongolia country.
class CountryMng extends WorldCountry {
  /// Creates a instance of [CountryMng] (Mongolia country).
  ///
  /// ISO 3166-1 Alpha-3 code: "MNG", ISO 3166-1 Alpha-2 code: "MN".
  const CountryMng()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Mongolia",
            common: "Mongolia",
          ),
          namesNative: const [
            CountryName(
              language: LangMon(),
              official: "Монгол улс",
              common: "Монгол улс",
            ),
          ],
          tld: const [".mn"],
          code: "MNG",
          codeNumeric: "496",
          codeShort: "MN",
          cioc: "MGL",
          independent: true,
          unMember: true,
          currencies: const [FiatMnt()],
          idd: const Idd(root: 9, suffixes: [76]),
          altSpellings: const ["MN"],
          continent: const Asia(),
          subregion: const EasternAsia(),
          languages: const [LangMon()],
          translations: mngCountryTranslations,
          latLng: const LatLng(46, 105),
          landlocked: true,
          bordersCodes: const ["Chn", "Rus"],
          areaMetric: 1564110,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Mongolian",
              male: "Mongolian",
            ),
            Demonyms(language: LangFra(), female: "Mongole", male: "Mongol"),
          ],
          emoji: "🇲🇳",
          maps: const Maps(
            googleMaps: "A1X7bMCKThBDNjzH6",
            openStreetMaps: "relation/161033",
          ),
          population: 3278292,
          gini: const Gini(year: 2018, coefficient: 32.7),
          fifa: "MNG",
          car: const Car(sign: "MGL"),
          timezones: const ["UTC+07:00", "UTC+08:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Ulan Bator"),
            latLng: LatLng(47.92, 106.91),
          ),
          postalCode:
              const PostalCode(format: "######", regExpPattern: r"^(\d{6})$"),
          regionalBlocs: null,
        );
}

/// A class that represents the Northern Mariana Islands country.
class CountryMnp extends WorldCountry {
  /// Creates a instance of [CountryMnp] (Northern Mariana Islands country).
  ///
  /// ISO 3166-1 Alpha-3 code: "MNP", ISO 3166-1 Alpha-2 code: "MP".
  const CountryMnp()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Commonwealth of the Northern Mariana Islands",
            common: "Northern Mariana Islands",
          ),
          namesNative: const [
            CountryName(
              language: LangCha(),
              official: "Sankattan Siha Na Islas Mariånas",
              common: "Na Islas Mariånas",
            ),
            CountryName(
              language: LangEng(),
              official: "Commonwealth of the Northern Mariana Islands",
              common: "Northern Mariana Islands",
            ),
          ],
          tld: const [".mp"],
          code: "MNP",
          codeNumeric: "580",
          codeShort: "MP",
          cioc: null,
          independent: false,
          unMember: false,
          currencies: const [FiatUsd()],
          idd: const Idd(root: 1, suffixes: [670]),
          altSpellings: const [
            "MP",
            "Commonwealth of the Northern Mariana Islands",
            "Sankattan Siha Na Islas Mariånas",
          ],
          continent: const Oceania(),
          subregion: const Micronesia(),
          languages: const [LangCha(), LangEng()],
          translations: mnpCountryTranslations,
          latLng: const LatLng(15.2, 145.75),
          landlocked: false,
          bordersCodes: null,
          areaMetric: 464,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "American",
              male: "American",
            ),
            Demonyms(
              language: LangFra(),
              female: "Américaine",
              male: "Américan",
            ),
          ],
          emoji: "🇲🇵",
          maps: const Maps(
            googleMaps: "cpZ67knoRAcfu1417",
            openStreetMaps: "relation/306004",
          ),
          population: 57557,
          gini: null,
          fifa: null,
          car: const Car(sign: "USA"),
          timezones: const ["UTC+10:00"],
          hasCoatOfArms: false,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Saipan"),
            latLng: LatLng(15.2, 145.75),
          ),
          postalCode: null,
          regionalBlocs: null,
        );
}

/// A class that represents the Mozambique country.
class CountryMoz extends WorldCountry {
  /// Creates a instance of [CountryMoz] (Mozambique country).
  ///
  /// ISO 3166-1 Alpha-3 code: "MOZ", ISO 3166-1 Alpha-2 code: "MZ".
  const CountryMoz()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Republic of Mozambique",
            common: "Mozambique",
          ),
          namesNative: const [
            CountryName(
              language: LangPor(),
              official: "República de Moçambique",
              common: "Moçambique",
            ),
          ],
          tld: const [".mz"],
          code: "MOZ",
          codeNumeric: "508",
          codeShort: "MZ",
          cioc: "MOZ",
          independent: true,
          unMember: true,
          currencies: const [FiatMzn()],
          idd: const Idd(root: 2, suffixes: [58]),
          altSpellings: const [
            "MZ",
            "Republic of Mozambique",
            "República de Moçambique",
          ],
          continent: const Africa(),
          subregion: const EasternAfrica(),
          languages: const [LangPor()],
          translations: mozCountryTranslations,
          latLng: const LatLng(-18.25, 35),
          landlocked: false,
          bordersCodes: const ["Mwi", "Zaf", "Swz", "Tza", "Zmb", "Zwe"],
          areaMetric: 801590,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Mozambican",
              male: "Mozambican",
            ),
            Demonyms(
              language: LangFra(),
              female: "Mozambicaine",
              male: "Mozambicain",
            ),
          ],
          emoji: "🇲🇿",
          maps: const Maps(
            googleMaps: "xCLcY9fzU6x4Pueu5",
            openStreetMaps: "relation/195273",
          ),
          population: 31255435,
          gini: const Gini(year: 2014, coefficient: 54),
          fifa: "MOZ",
          car: const Car(sign: "MOC", isRightSide: false),
          timezones: const ["UTC+02:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Maputo"),
            latLng: LatLng(-25.95, 32.58),
          ),
          postalCode:
              const PostalCode(format: "####", regExpPattern: r"^(\d{4})$"),
          regionalBlocs: const [BlocAU()],
        );
}

/// A class that represents the Mauritania country.
class CountryMrt extends WorldCountry {
  /// Creates a instance of [CountryMrt] (Mauritania country).
  ///
  /// ISO 3166-1 Alpha-3 code: "MRT", ISO 3166-1 Alpha-2 code: "MR".
  const CountryMrt()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Islamic Republic of Mauritania",
            common: "Mauritania",
          ),
          namesNative: const [
            CountryName(
              language: LangAra(),
              official: "الجمهورية الإسلامية الموريتانية",
              common: "موريتانيا",
            ),
          ],
          tld: const [".mr"],
          code: "MRT",
          codeNumeric: "478",
          codeShort: "MR",
          cioc: "MTN",
          independent: true,
          unMember: true,
          currencies: const [FiatMru()],
          idd: const Idd(root: 2, suffixes: [22]),
          altSpellings: const [
            "MR",
            "Islamic Republic of Mauritania",
            "al-Jumhūriyyah al-ʾIslāmiyyah al-Mūrītāniyyah",
          ],
          continent: const Africa(),
          subregion: const WesternAfrica(),
          languages: const [LangAra()],
          translations: mrtCountryTranslations,
          latLng: const LatLng(20, -12),
          landlocked: false,
          bordersCodes: const ["Dza", "Mli", "Sen", "Esh"],
          areaMetric: 1030700,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Mauritanian",
              male: "Mauritanian",
            ),
            Demonyms(
              language: LangFra(),
              female: "Mauritanienne",
              male: "Mauritanien",
            ),
          ],
          emoji: "🇲🇷",
          maps: const Maps(
            googleMaps: "im2MmQ5jFjzxWBks5",
            openStreetMaps: "relation/192763",
          ),
          population: 4649660,
          gini: const Gini(year: 2014, coefficient: 32.6),
          fifa: "MTN",
          car: const Car(sign: "RIM"),
          timezones: const ["UTC+00:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Nouakchott"),
            latLng: LatLng(18.07, -15.97),
          ),
          postalCode: null,
          regionalBlocs: const [BlocAU(), BlocAL()],
        );
}

/// A class that represents the Montserrat country.
class CountryMsr extends WorldCountry {
  /// Creates a instance of [CountryMsr] (Montserrat country).
  ///
  /// ISO 3166-1 Alpha-3 code: "MSR", ISO 3166-1 Alpha-2 code: "MS".
  const CountryMsr()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Montserrat",
            common: "Montserrat",
          ),
          namesNative: const [
            CountryName(
              language: LangEng(),
              official: "Montserrat",
              common: "Montserrat",
            ),
          ],
          tld: const [".ms"],
          code: "MSR",
          codeNumeric: "500",
          codeShort: "MS",
          cioc: null,
          independent: false,
          unMember: false,
          currencies: const [FiatXcd()],
          idd: const Idd(root: 1, suffixes: [664]),
          altSpellings: const ["MS"],
          continent: const Americas(),
          subregion: const Caribbean(),
          languages: const [LangEng()],
          translations: msrCountryTranslations,
          latLng: const LatLng(16.75, -62.2),
          landlocked: false,
          bordersCodes: null,
          areaMetric: 102,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Montserratian",
              male: "Montserratian",
            ),
            Demonyms(
              language: LangFra(),
              female: "Montserratienne",
              male: "Montserratien",
            ),
          ],
          emoji: "🇲🇸",
          maps: const Maps(
            googleMaps: "CSbe7UmxPmiwQB7GA",
            openStreetMaps: "relation/537257",
          ),
          population: 4922,
          gini: null,
          fifa: "MSR",
          car: const Car(sign: "GB", isRightSide: false),
          timezones: const ["UTC-04:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Plymouth"),
            latLng: LatLng(16.7, -62.22),
          ),
          postalCode: null,
          regionalBlocs: const [BlocCARICOM()],
        );
}

/// A class that represents the Martinique country.
class CountryMtq extends WorldCountry {
  /// Creates a instance of [CountryMtq] (Martinique country).
  ///
  /// ISO 3166-1 Alpha-3 code: "MTQ", ISO 3166-1 Alpha-2 code: "MQ".
  const CountryMtq()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Martinique",
            common: "Martinique",
          ),
          namesNative: const [
            CountryName(
              language: LangFra(),
              official: "Martinique",
              common: "Martinique",
            ),
          ],
          tld: const [".mq"],
          code: "MTQ",
          codeNumeric: "474",
          codeShort: "MQ",
          cioc: null,
          independent: false,
          unMember: false,
          currencies: const [FiatEur()],
          idd: const Idd(root: 5, suffixes: [96]),
          altSpellings: const ["MQ"],
          continent: const Americas(),
          subregion: const Caribbean(),
          languages: const [LangFra()],
          translations: mtqCountryTranslations,
          latLng: const LatLng(14.666667, -61),
          landlocked: false,
          bordersCodes: null,
          areaMetric: 1128,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Martinican",
              male: "Martinican",
            ),
            Demonyms(
              language: LangFra(),
              female: "Martiniquaise",
              male: "Martiniquais",
            ),
          ],
          emoji: "🇲🇶",
          maps: const Maps(
            googleMaps: "87ER7sDAFU7JjcvR6",
            openStreetMaps: "relation/2473088",
          ),
          population: 378243,
          gini: null,
          fifa: null,
          car: const Car(sign: "F"),
          timezones: const ["UTC-04:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Fort-de-France"),
            latLng: LatLng(14.6, -61.08),
          ),
          postalCode: const PostalCode(),
          regionalBlocs: null,
        );
}

/// A class that represents the Mauritius country.
class CountryMus extends WorldCountry {
  /// Creates a instance of [CountryMus] (Mauritius country).
  ///
  /// ISO 3166-1 Alpha-3 code: "MUS", ISO 3166-1 Alpha-2 code: "MU".
  const CountryMus()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Republic of Mauritius",
            common: "Mauritius",
          ),
          namesNative: const [
            CountryName(
              language: LangEng(),
              official: "Republic of Mauritius",
              common: "Mauritius",
            ),
            CountryName(
              language: LangFra(),
              official: "République de Maurice",
              common: "Maurice",
            ),
          ],
          tld: const [".mu"],
          code: "MUS",
          codeNumeric: "480",
          codeShort: "MU",
          cioc: "MRI",
          independent: true,
          unMember: true,
          currencies: const [FiatMur()],
          idd: const Idd(root: 2, suffixes: [30]),
          altSpellings: const [
            "MU",
            "Republic of Mauritius",
            "République de Maurice",
          ],
          continent: const Africa(),
          subregion: const EasternAfrica(),
          languages: const [LangEng(), LangFra()],
          translations: musCountryTranslations,
          latLng: const LatLng(-20.28333333, 57.55),
          landlocked: false,
          bordersCodes: null,
          areaMetric: 2040,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Mauritian",
              male: "Mauritian",
            ),
            Demonyms(
              language: LangFra(),
              female: "Mauricienne",
              male: "Mauricien",
            ),
          ],
          emoji: "🇲🇺",
          maps: const Maps(
            googleMaps: "PpKtZ4W3tir5iGrz7",
            openStreetMaps: "relation/535828",
          ),
          population: 1265740,
          gini: const Gini(year: 2017, coefficient: 36.8),
          fifa: "MRI",
          car: const Car(sign: "MS", isRightSide: false),
          timezones: const ["UTC+04:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Port Louis"),
            latLng: LatLng(-20.15, 57.48),
          ),
          postalCode: null,
          regionalBlocs: const [BlocAU()],
        );
}

/// A class that represents the Malawi country.
class CountryMwi extends WorldCountry {
  /// Creates a instance of [CountryMwi] (Malawi country).
  ///
  /// ISO 3166-1 Alpha-3 code: "MWI", ISO 3166-1 Alpha-2 code: "MW".
  const CountryMwi()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Republic of Malawi",
            common: "Malawi",
          ),
          namesNative: const [
            CountryName(
              language: LangEng(),
              official: "Republic of Malawi",
              common: "Malawi",
            ),
            CountryName(
              language: LangNya(),
              official: "Chalo cha Malawi, Dziko la Malaŵi",
              common: "Malaŵi",
            ),
          ],
          tld: const [".mw"],
          code: "MWI",
          codeNumeric: "454",
          codeShort: "MW",
          cioc: "MAW",
          independent: true,
          unMember: true,
          currencies: const [FiatMwk()],
          idd: const Idd(root: 2, suffixes: [65]),
          altSpellings: const ["MW", "Republic of Malawi"],
          continent: const Africa(),
          subregion: const EasternAfrica(),
          languages: const [LangEng(), LangNya()],
          translations: mwiCountryTranslations,
          latLng: const LatLng(-13.5, 34),
          landlocked: true,
          bordersCodes: const ["Moz", "Tza", "Zmb"],
          areaMetric: 118484,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Malawian",
              male: "Malawian",
            ),
            Demonyms(
              language: LangFra(),
              female: "Malawienne",
              male: "Malawien",
            ),
          ],
          emoji: "🇲🇼",
          maps: const Maps(
            googleMaps: "mc6z83pW9m98X2Ef6",
            openStreetMaps: "relation/195290",
          ),
          population: 19129955,
          gini: const Gini(year: 2016, coefficient: 44.7),
          fifa: "MWI",
          car: const Car(sign: "MW", isRightSide: false),
          timezones: const ["UTC+02:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Lilongwe"),
            latLng: LatLng(-13.97, 33.78),
          ),
          postalCode: null,
          regionalBlocs: const [BlocAU()],
        );
}

/// A class that represents the Malaysia country.
class CountryMys extends WorldCountry {
  /// Creates a instance of [CountryMys] (Malaysia country).
  ///
  /// ISO 3166-1 Alpha-3 code: "MYS", ISO 3166-1 Alpha-2 code: "MY".
  const CountryMys()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Malaysia",
            common: "Malaysia",
          ),
          namesNative: const [
            CountryName(
              language: LangEng(),
              official: "Malaysia",
              common: "Malaysia",
            ),
            CountryName(
              language: LangMsa(),
              official: "مليسيا",
              common: "مليسيا",
            ),
          ],
          tld: const [".my"],
          code: "MYS",
          codeNumeric: "458",
          codeShort: "MY",
          cioc: "MAS",
          independent: true,
          unMember: true,
          currencies: const [FiatMyr()],
          idd: const Idd(root: 6, suffixes: [0]),
          altSpellings: const ["MY"],
          continent: const Asia(),
          subregion: const SouthEasternAsia(),
          languages: const [LangEng(), LangMsa()],
          translations: mysCountryTranslations,
          latLng: const LatLng(2.5, 112.5),
          landlocked: false,
          bordersCodes: const ["Brn", "Idn", "Tha"],
          areaMetric: 330803,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Malaysian",
              male: "Malaysian",
            ),
            Demonyms(
              language: LangFra(),
              female: "Malaisienne",
              male: "Malaisien",
            ),
          ],
          emoji: "🇲🇾",
          maps: const Maps(
            googleMaps: "qrY1PNeUXGyXDcPy6",
            openStreetMaps: "relation/2108121",
          ),
          population: 32365998,
          gini: const Gini(year: 2015, coefficient: 41.1),
          fifa: "MAS",
          car: const Car(sign: "MAL", isRightSide: false),
          timezones: const ["UTC+08:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.sunday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Kuala Lumpur"),
            latLng: LatLng(3.17, 101.7),
          ),
          postalCode: const PostalCode(),
          regionalBlocs: const [BlocASEAN()],
        );
}

/// A class that represents the Mayotte country.
class CountryMyt extends WorldCountry {
  /// Creates a instance of [CountryMyt] (Mayotte country).
  ///
  /// ISO 3166-1 Alpha-3 code: "MYT", ISO 3166-1 Alpha-2 code: "YT".
  const CountryMyt()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Department of Mayotte",
            common: "Mayotte",
          ),
          namesNative: const [
            CountryName(
              language: LangFra(),
              official: "Département de Mayotte",
              common: "Mayotte",
            ),
          ],
          tld: const [".yt"],
          code: "MYT",
          codeNumeric: "175",
          codeShort: "YT",
          cioc: null,
          independent: false,
          unMember: false,
          currencies: const [FiatEur()],
          idd: const Idd(root: 2, suffixes: [62]),
          altSpellings: const [
            "YT",
            "Department of Mayotte",
            "Département de Mayotte",
          ],
          continent: const Africa(),
          subregion: const EasternAfrica(),
          languages: const [LangFra()],
          translations: mytCountryTranslations,
          latLng: const LatLng(-12.83333333, 45.16666666),
          landlocked: false,
          bordersCodes: null,
          areaMetric: 374,
          demonyms: const [
            Demonyms(language: LangEng(), female: "Mahoran", male: "Mahoran"),
            Demonyms(
              language: LangFra(),
              female: "Mahoraise",
              male: "Mahorais",
            ),
          ],
          emoji: "🇾🇹",
          maps: const Maps(
            googleMaps: "1e7MXmfBwQv3TQGF7",
            openStreetMaps: "relation/1259885",
          ),
          population: 226915,
          gini: null,
          fifa: null,
          car: const Car(sign: "F"),
          timezones: const ["UTC+03:00"],
          hasCoatOfArms: false,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Mamoudzou"),
            latLng: LatLng(-12.78, 45.22),
          ),
          postalCode: const PostalCode(),
          regionalBlocs: const [BlocAU()],
        );
}

/// A class that represents the Namibia country.
class CountryNam extends WorldCountry {
  /// Creates a instance of [CountryNam] (Namibia country).
  ///
  /// ISO 3166-1 Alpha-3 code: "NAM", ISO 3166-1 Alpha-2 code: "NA".
  const CountryNam()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Republic of Namibia",
            common: "Namibia",
          ),
          namesNative: const [
            CountryName(
              language: LangAfr(),
              official: "Republiek van Namibië",
              common: "Namibië",
            ),
            CountryName(
              language: LangDeu(),
              official: "Republik Namibia",
              common: "Namibia",
            ),
            CountryName(
              language: LangEng(),
              official: "Republic of Namibia",
              common: "Namibia",
            ),
            CountryName(
              language: LangHer(),
              official: "Republic of Namibia",
              common: "Namibia",
            ),
            CountryName(
              language: LangTsn(),
              official: "Lefatshe la Namibia",
              common: "Namibia",
            ),
          ],
          tld: const [".na"],
          code: "NAM",
          codeNumeric: "516",
          codeShort: "NA",
          cioc: "NAM",
          independent: true,
          unMember: true,
          currencies: const [FiatNad(), FiatZar()],
          idd: const Idd(root: 2, suffixes: [64]),
          altSpellings: const ["NA", "Namibië", "Republic of Namibia"],
          continent: const Africa(),
          subregion: const SouthernAfrica(),
          languages: const [
            LangAfr(),
            LangDeu(),
            LangEng(),
            LangHer(),
            LangNdo(),
            LangTsn(),
          ],
          translations: namCountryTranslations,
          latLng: const LatLng(-22, 17),
          landlocked: false,
          bordersCodes: const ["Ago", "Bwa", "Zaf", "Tur"],
          areaMetric: 825615,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Namibian",
              male: "Namibian",
            ),
            Demonyms(
              language: LangFra(),
              female: "Namibienne",
              male: "Namibien",
            ),
          ],
          emoji: "🇳🇦",
          maps: const Maps(
            googleMaps: "oR1i8BFEYX3EY83WA",
            openStreetMaps: "relation/195266",
          ),
          population: 2540916,
          gini: const Gini(year: 2015, coefficient: 59.1),
          fifa: "NAM",
          car: const Car(sign: "NAM", isRightSide: false),
          timezones: const ["UTC+01:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Windhoek"),
            latLng: LatLng(-22.57, 17.08),
          ),
          postalCode: null,
          regionalBlocs: const [BlocAU()],
        );
}

/// A class that represents the New Caledonia country.
class CountryNcl extends WorldCountry {
  /// Creates a instance of [CountryNcl] (New Caledonia country).
  ///
  /// ISO 3166-1 Alpha-3 code: "NCL", ISO 3166-1 Alpha-2 code: "NC".
  const CountryNcl()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "New Caledonia",
            common: "New Caledonia",
          ),
          namesNative: const [
            CountryName(
              language: LangFra(),
              official: "Nouvelle-Calédonie",
              common: "Nouvelle-Calédonie",
            ),
          ],
          tld: const [".nc"],
          code: "NCL",
          codeNumeric: "540",
          codeShort: "NC",
          cioc: null,
          independent: false,
          unMember: false,
          currencies: const [FiatXpf()],
          idd: const Idd(root: 6, suffixes: [87]),
          altSpellings: const ["NC"],
          continent: const Oceania(),
          subregion: const Melanesia(),
          languages: const [LangFra()],
          translations: nclCountryTranslations,
          latLng: const LatLng(-21.5, 165.5),
          landlocked: false,
          bordersCodes: null,
          areaMetric: 18575,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "New Caledonian",
              male: "New Caledonian",
            ),
            Demonyms(
              language: LangFra(),
              female: "Néo-Calédonienne",
              male: "Néo-Calédonien",
            ),
          ],
          emoji: "🇳🇨",
          maps: const Maps(
            googleMaps: "cBhtCeMdob4U7FRU9",
            openStreetMaps: "relation/3407643",
          ),
          population: 271960,
          gini: null,
          fifa: "NCL",
          car: const Car(sign: "F"),
          timezones: const ["UTC+11:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Nouméa"),
            latLng: LatLng(-22.27, 166.45),
          ),
          postalCode: const PostalCode(),
          regionalBlocs: null,
        );
}

/// A class that represents the Niger country.
class CountryNer extends WorldCountry {
  /// Creates a instance of [CountryNer] (Niger country).
  ///
  /// ISO 3166-1 Alpha-3 code: "NER", ISO 3166-1 Alpha-2 code: "NE".
  const CountryNer()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Republic of Niger",
            common: "Niger",
          ),
          namesNative: const [
            CountryName(
              language: LangFra(),
              official: "République du Niger",
              common: "Niger",
            ),
          ],
          tld: const [".ne"],
          code: "NER",
          codeNumeric: "562",
          codeShort: "NE",
          cioc: "NIG",
          independent: true,
          unMember: true,
          currencies: const [FiatXof()],
          idd: const Idd(root: 2, suffixes: [27]),
          altSpellings: const ["NE", "Nijar"],
          continent: const Africa(),
          subregion: const WesternAfrica(),
          languages: const [LangFra()],
          translations: nerCountryTranslations,
          latLng: const LatLng(16, 8),
          landlocked: true,
          bordersCodes: const [
            "Dza",
            "Ben",
            "Bfa",
            "Tcd",
            "Lby",
            "Mli",
            "Nga",
          ],
          areaMetric: 1267000,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Nigerien",
              male: "Nigerien",
            ),
            Demonyms(
              language: LangFra(),
              female: "Nigérienne",
              male: "Nigérien",
            ),
          ],
          emoji: "🇳🇪",
          maps: const Maps(
            googleMaps: "VKNU2TLsZcgxM49c8",
            openStreetMaps: "relation/192786",
          ),
          population: 24206636,
          gini: const Gini(year: 2014, coefficient: 34.3),
          fifa: "NIG",
          car: const Car(sign: "RN"),
          timezones: const ["UTC+01:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Niamey"),
            latLng: LatLng(13.52, 2.12),
          ),
          postalCode:
              const PostalCode(format: "####", regExpPattern: r"^(\d{4})$"),
          regionalBlocs: const [BlocAU()],
        );
}

/// A class that represents the Norfolk Island country.
class CountryNfk extends WorldCountry {
  /// Creates a instance of [CountryNfk] (Norfolk Island country).
  ///
  /// ISO 3166-1 Alpha-3 code: "NFK", ISO 3166-1 Alpha-2 code: "NF".
  const CountryNfk()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Territory of Norfolk Island",
            common: "Norfolk Island",
          ),
          namesNative: const [
            CountryName(
              language: LangEng(),
              official: "Territory of Norfolk Island",
              common: "Norfolk Island",
            ),
          ],
          tld: const [".nf"],
          code: "NFK",
          codeNumeric: "574",
          codeShort: "NF",
          cioc: null,
          independent: false,
          unMember: false,
          currencies: const [FiatAud()],
          idd: const Idd(root: 6, suffixes: [72]),
          altSpellings: const [
            "NF",
            "Territory of Norfolk Island",
            "Teratri of Norf'k Ailen",
          ],
          continent: const Oceania(),
          subregion: const AustraliaAndNewZealand(),
          languages: const [LangEng()],
          translations: nfkCountryTranslations,
          latLng: const LatLng(-29.03333333, 167.95),
          landlocked: false,
          bordersCodes: null,
          areaMetric: 36,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Norfolk Islander",
              male: "Norfolk Islander",
            ),
            Demonyms(
              language: LangFra(),
              female: "Norfolkaise",
              male: "Norfolkais",
            ),
          ],
          emoji: "🇳🇫",
          maps: const Maps(
            googleMaps: "pbvtm6XYd1iZbjky5",
            openStreetMaps: "relation/2574988",
          ),
          population: 2302,
          gini: null,
          fifa: null,
          car: const Car(sign: "AUS", isRightSide: false),
          timezones: const ["UTC+11:30"],
          hasCoatOfArms: false,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Kingston"),
            latLng: LatLng(-29.05, 167.97),
          ),
          postalCode: null,
          regionalBlocs: null,
        );
}

/// A class that represents the Nigeria country.
class CountryNga extends WorldCountry {
  /// Creates a instance of [CountryNga] (Nigeria country).
  ///
  /// ISO 3166-1 Alpha-3 code: "NGA", ISO 3166-1 Alpha-2 code: "NG".
  const CountryNga()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Federal Republic of Nigeria",
            common: "Nigeria",
          ),
          namesNative: const [
            CountryName(
              language: LangEng(),
              official: "Federal Republic of Nigeria",
              common: "Nigeria",
            ),
          ],
          tld: const [".ng"],
          code: "NGA",
          codeNumeric: "566",
          codeShort: "NG",
          cioc: "NGR",
          independent: true,
          unMember: true,
          currencies: const [FiatNgn()],
          idd: const Idd(root: 2, suffixes: [34]),
          altSpellings: const [
            "NG",
            "Nijeriya",
            "Naíjíríà",
            "Federal Republic of Nigeria",
          ],
          continent: const Africa(),
          subregion: const WesternAfrica(),
          languages: const [LangEng()],
          translations: ngaCountryTranslations,
          latLng: const LatLng(10, 8),
          landlocked: false,
          bordersCodes: const ["Ben", "Cmr", "Tcd", "Ner"],
          areaMetric: 923768,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Nigerian",
              male: "Nigerian",
            ),
            Demonyms(
              language: LangFra(),
              female: "Nigériane",
              male: "Nigérian",
            ),
          ],
          emoji: "🇳🇬",
          maps: const Maps(
            googleMaps: "LTn417qWwBPFszuV9",
            openStreetMaps: "relation/192787",
          ),
          population: 206139587,
          gini: const Gini(year: 2018, coefficient: 35.1),
          fifa: "NGA",
          car: const Car(sign: "WAN"),
          timezones: const ["UTC+01:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Abuja"),
            latLng: LatLng(9.08, 7.53),
          ),
          postalCode:
              const PostalCode(format: "######", regExpPattern: r"^(\d{6})$"),
          regionalBlocs: const [BlocAU()],
        );
}

/// A class that represents the Nicaragua country.
class CountryNic extends WorldCountry {
  /// Creates a instance of [CountryNic] (Nicaragua country).
  ///
  /// ISO 3166-1 Alpha-3 code: "NIC", ISO 3166-1 Alpha-2 code: "NI".
  const CountryNic()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Republic of Nicaragua",
            common: "Nicaragua",
          ),
          namesNative: const [
            CountryName(
              language: LangSpa(),
              official: "República de Nicaragua",
              common: "Nicaragua",
            ),
          ],
          tld: const [".ni"],
          code: "NIC",
          codeNumeric: "558",
          codeShort: "NI",
          cioc: "NCA",
          independent: true,
          unMember: true,
          currencies: const [FiatNio()],
          idd: const Idd(root: 50, suffixes: [5]),
          altSpellings: const [
            "NI",
            "Republic of Nicaragua",
            "República de Nicaragua",
          ],
          continent: const Americas(),
          subregion: const CentralAmerica(),
          languages: const [LangSpa()],
          translations: nicCountryTranslations,
          latLng: const LatLng(13, -85),
          landlocked: false,
          bordersCodes: const ["Cri", "Hnd"],
          areaMetric: 130373,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Nicaraguan",
              male: "Nicaraguan",
            ),
            Demonyms(
              language: LangFra(),
              female: "Nicaraguayenne",
              male: "Nicaraguayen",
            ),
          ],
          emoji: "🇳🇮",
          maps: const Maps(
            googleMaps: "P77LaEVkKJKXneRC6",
            openStreetMaps: "relation/287666",
          ),
          population: 6624554,
          gini: const Gini(year: 2014, coefficient: 46.2),
          fifa: "NCA",
          car: const Car(sign: "NIC"),
          timezones: const ["UTC-06:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Managua"),
            latLng: LatLng(12.13, -86.25),
          ),
          postalCode: const PostalCode(
            format: "###-###-#",
            regExpPattern: r"^(\d{7})$",
          ),
          regionalBlocs: const [BlocCAIS()],
        );
}

/// A class that represents the Niue country.
class CountryNiu extends WorldCountry {
  /// Creates a instance of [CountryNiu] (Niue country).
  ///
  /// ISO 3166-1 Alpha-3 code: "NIU", ISO 3166-1 Alpha-2 code: "NU".
  const CountryNiu()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Niue",
            common: "Niue",
          ),
          namesNative: const [
            CountryName(language: LangEng(), official: "Niue", common: "Niue"),
          ],
          tld: const [".nu"],
          code: "NIU",
          codeNumeric: "570",
          codeShort: "NU",
          cioc: null,
          independent: false,
          unMember: false,
          currencies: const [FiatNzd()],
          idd: const Idd(root: 6, suffixes: [83]),
          altSpellings: const ["NU"],
          continent: const Oceania(),
          subregion: const Polynesia(),
          languages: const [LangEng()],
          translations: niuCountryTranslations,
          latLng: const LatLng(-19.03333333, -169.86666666),
          landlocked: false,
          bordersCodes: null,
          areaMetric: 260,
          demonyms: const [
            Demonyms(language: LangEng(), female: "Niuean", male: "Niuean"),
            Demonyms(language: LangFra(), female: "Niuéenne", male: "Niuéen"),
          ],
          emoji: "🇳🇺",
          maps: const Maps(
            googleMaps: "xFgdzs3E55Rk1y8P9",
            openStreetMaps: "relation/1558556",
          ),
          population: 1470,
          gini: null,
          fifa: null,
          car: const Car(sign: "NZ", isRightSide: false),
          timezones: const ["UTC-11:00"],
          hasCoatOfArms: false,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Alofi"),
            latLng: LatLng(-19.02, -169.92),
          ),
          postalCode: null,
          regionalBlocs: null,
        );
}

/// A class that represents the Netherlands country.
class CountryNld extends WorldCountry {
  /// Creates a instance of [CountryNld] (Netherlands country).
  ///
  /// ISO 3166-1 Alpha-3 code: "NLD", ISO 3166-1 Alpha-2 code: "NL".
  const CountryNld()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Kingdom of the Netherlands",
            common: "Netherlands",
          ),
          namesNative: const [
            CountryName(
              language: LangNld(),
              official: "Koninkrijk der Nederlanden",
              common: "Nederland",
            ),
          ],
          tld: const [".nl"],
          code: "NLD",
          codeNumeric: "528",
          codeShort: "NL",
          cioc: "NED",
          independent: true,
          unMember: true,
          currencies: const [FiatEur()],
          idd: const Idd(root: 3, suffixes: [1]),
          altSpellings: const [
            "NL",
            "Holland",
            "Nederland",
            "The Netherlands",
          ],
          continent: const Europe(),
          subregion: const WesternEurope(),
          languages: const [LangNld()],
          translations: nldCountryTranslations,
          latLng: const LatLng(52.5, 5.75),
          landlocked: false,
          bordersCodes: const ["Bel", "Deu"],
          areaMetric: 41850,
          demonyms: const [
            Demonyms(language: LangEng(), female: "Dutch", male: "Dutch"),
            Demonyms(
              language: LangFra(),
              female: "Néerlandaise",
              male: "Néerlandais",
            ),
          ],
          emoji: "🇳🇱",
          maps: const Maps(
            googleMaps: "Hv6zQswGhFxoVVBm6",
            openStreetMaps: "relation/47796",
          ),
          population: 16655799,
          gini: const Gini(year: 2018, coefficient: 28.1),
          fifa: "NED",
          car: const Car(sign: "NL"),
          timezones: const ["UTC+01:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Amsterdam"),
            latLng: LatLng(52.35, 4.92),
          ),
          postalCode: const PostalCode(
            format: "#### @@",
            regExpPattern: r"^(\d{4}[A-Z]{2})$",
          ),
          regionalBlocs: const [BlocEU()],
        );
}

/// A class that represents the Norway country.
class CountryNor extends WorldCountry {
  /// Creates a instance of [CountryNor] (Norway country).
  ///
  /// ISO 3166-1 Alpha-3 code: "NOR", ISO 3166-1 Alpha-2 code: "NO".
  const CountryNor()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Kingdom of Norway",
            common: "Norway",
          ),
          namesNative: const [
            CountryName(
              language: LangNno(),
              official: "Kongeriket Noreg",
              common: "Noreg",
            ),
            CountryName(
              language: LangNob(),
              official: "Kongeriket Norge",
              common: "Norge",
            ),
          ],
          tld: const [".no"],
          code: "NOR",
          codeNumeric: "578",
          codeShort: "NO",
          cioc: "NOR",
          independent: true,
          unMember: true,
          currencies: const [FiatNok()],
          idd: const Idd(root: 4, suffixes: [7]),
          altSpellings: const [
            "NO",
            "Norge",
            "Noreg",
            "Kingdom of Norway",
            "Kongeriket Norge",
            "Kongeriket Noreg",
          ],
          continent: const Europe(),
          subregion: const NorthernEurope(),
          languages: const [LangNno(), LangNob()],
          translations: norCountryTranslations,
          latLng: const LatLng(62, 10),
          landlocked: false,
          bordersCodes: const ["Fin", "Swe", "Rus"],
          areaMetric: 323802,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Norwegian",
              male: "Norwegian",
            ),
            Demonyms(
              language: LangFra(),
              female: "Norvégienne",
              male: "Norvégien",
            ),
          ],
          emoji: "🇳🇴",
          maps: const Maps(
            googleMaps: "htWRrphA7vNgQNdSA",
            openStreetMaps: "relation/2978650",
          ),
          population: 5379475,
          gini: const Gini(year: 2018, coefficient: 27.6),
          fifa: "NOR",
          car: const Car(sign: "N"),
          timezones: const ["UTC+01:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Oslo"),
            latLng: LatLng(59.92, 10.75),
          ),
          postalCode:
              const PostalCode(format: "####", regExpPattern: r"^(\d{4})$"),
          regionalBlocs: const [BlocEFTA()],
        );
}

/// A class that represents the Nepal country.
class CountryNpl extends WorldCountry {
  /// Creates a instance of [CountryNpl] (Nepal country).
  ///
  /// ISO 3166-1 Alpha-3 code: "NPL", ISO 3166-1 Alpha-2 code: "NP".
  const CountryNpl()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Federal Democratic Republic of Nepal",
            common: "Nepal",
          ),
          namesNative: const [
            CountryName(
              language: LangNep(),
              official: "नेपाल संघीय लोकतान्त्रिक गणतन्त्र",
              common: "नेपाल",
            ),
          ],
          tld: const [".np"],
          code: "NPL",
          codeNumeric: "524",
          codeShort: "NP",
          cioc: "NEP",
          independent: true,
          unMember: true,
          currencies: const [FiatNpr()],
          idd: const Idd(root: 9, suffixes: [77]),
          altSpellings: const [
            "NP",
            "Federal Democratic Republic of Nepal",
            "Loktāntrik Ganatantra Nepāl",
          ],
          continent: const Asia(),
          subregion: const SouthernAsia(),
          languages: const [LangNep()],
          translations: nplCountryTranslations,
          latLng: const LatLng(28, 84),
          landlocked: true,
          bordersCodes: const ["Chn", "Ind"],
          areaMetric: 147181,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Nepalese",
              male: "Nepalese",
            ),
            Demonyms(
              language: LangFra(),
              female: "Népalaise",
              male: "Népalais",
            ),
          ],
          emoji: "🇳🇵",
          maps: const Maps(
            googleMaps: "UMj2zpbQp7B5c3yT7",
            openStreetMaps: "relation/184633",
          ),
          population: 29136808,
          gini: const Gini(year: 2010, coefficient: 32.8),
          fifa: "NEP",
          car: const Car(sign: "NEP", isRightSide: false),
          timezones: const ["UTC+05:45"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.sunday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Kathmandu"),
            latLng: LatLng(27.72, 85.32),
          ),
          postalCode: const PostalCode(),
          regionalBlocs: const [BlocSAARC()],
        );
}

/// A class that represents the Nauru country.
class CountryNru extends WorldCountry {
  /// Creates a instance of [CountryNru] (Nauru country).
  ///
  /// ISO 3166-1 Alpha-3 code: "NRU", ISO 3166-1 Alpha-2 code: "NR".
  const CountryNru()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Republic of Nauru",
            common: "Nauru",
          ),
          namesNative: const [
            CountryName(
              language: LangEng(),
              official: "Republic of Nauru",
              common: "Nauru",
            ),
            CountryName(
              language: LangNau(),
              official: "Republic of Nauru",
              common: "Nauru",
            ),
          ],
          tld: const [".nr"],
          code: "NRU",
          codeNumeric: "520",
          codeShort: "NR",
          cioc: "NRU",
          independent: true,
          unMember: true,
          currencies: const [FiatAud()],
          idd: const Idd(root: 6, suffixes: [74]),
          altSpellings: const [
            "NR",
            "Naoero",
            "Pleasant Island",
            "Republic of Nauru",
            "Ripublik Naoero",
          ],
          continent: const Oceania(),
          subregion: const Micronesia(),
          languages: const [LangEng(), LangNau()],
          translations: nruCountryTranslations,
          latLng: const LatLng(-0.53333333, 166.91666666),
          landlocked: false,
          bordersCodes: null,
          areaMetric: 21,
          demonyms: const [
            Demonyms(language: LangEng(), female: "Nauruan", male: "Nauruan"),
            Demonyms(language: LangFra(), female: "Nauruane", male: "Nauruan"),
          ],
          emoji: "🇳🇷",
          maps: const Maps(
            googleMaps: "kyAGw6XEJgjSMsTK7",
            openStreetMaps: "relation/571804",
          ),
          population: 10834,
          gini: const Gini(year: 2012, coefficient: 34.8),
          fifa: null,
          car: const Car(sign: "NAU", isRightSide: false),
          timezones: const ["UTC+12:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Yaren"),
            latLng: LatLng(-0.55, 166.92),
          ),
          postalCode: null,
          regionalBlocs: null,
        );
}

/// A class that represents the New Zealand country.
class CountryNzl extends WorldCountry {
  /// Creates a instance of [CountryNzl] (New Zealand country).
  ///
  /// ISO 3166-1 Alpha-3 code: "NZL", ISO 3166-1 Alpha-2 code: "NZ".
  const CountryNzl()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "New Zealand",
            common: "New Zealand",
          ),
          namesNative: const [
            CountryName(
              language: LangEng(),
              official: "New Zealand",
              common: "New Zealand",
            ),
            CountryName(
              language: LangMri(),
              official: "Aotearoa",
              common: "Aotearoa",
            ),
          ],
          tld: const [".nz"],
          code: "NZL",
          codeNumeric: "554",
          codeShort: "NZ",
          cioc: "NZL",
          independent: true,
          unMember: true,
          currencies: const [FiatNzd()],
          idd: const Idd(root: 6, suffixes: [4]),
          altSpellings: const ["NZ", "Aotearoa"],
          continent: const Oceania(),
          subregion: const AustraliaAndNewZealand(),
          languages: const [LangEng(), LangMri()],
          translations: nzlCountryTranslations,
          latLng: const LatLng(-41, 174),
          landlocked: false,
          bordersCodes: null,
          areaMetric: 270467,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "New Zealander",
              male: "New Zealander",
            ),
            Demonyms(
              language: LangFra(),
              female: "Neo-Zélandaise",
              male: "Neo-Zélandais",
            ),
          ],
          emoji: "🇳🇿",
          maps: const Maps(
            googleMaps: "xXiDQo65dwdpw9iu8",
            openStreetMaps: "relation/556706#map=5/-46.710/172.046",
          ),
          population: 5084300,
          gini: null,
          fifa: "NZL",
          car: const Car(sign: "NZ", isRightSide: false),
          timezones: const [
            "UTC-11:00",
            "UTC-10:00",
            "UTC+12:00",
            "UTC+12:45",
            "UTC+13:00",
          ],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Wellington"),
            latLng: LatLng(-41.3, 174.78),
          ),
          postalCode:
              const PostalCode(format: "####", regExpPattern: r"^(\d{4})$"),
          regionalBlocs: null,
        );
}

/// A class that represents the Oman country.
class CountryOmn extends WorldCountry {
  /// Creates a instance of [CountryOmn] (Oman country).
  ///
  /// ISO 3166-1 Alpha-3 code: "OMN", ISO 3166-1 Alpha-2 code: "OM".
  const CountryOmn()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Sultanate of Oman",
            common: "Oman",
          ),
          namesNative: const [
            CountryName(
              language: LangAra(),
              official: "سلطنة عمان",
              common: "عمان",
            ),
          ],
          tld: const [".om"],
          code: "OMN",
          codeNumeric: "512",
          codeShort: "OM",
          cioc: "OMA",
          independent: true,
          unMember: true,
          currencies: const [FiatOmr()],
          idd: const Idd(root: 9, suffixes: [68]),
          altSpellings: const ["OM", "Sultanate of Oman", "Salṭanat ʻUmān"],
          continent: const Asia(),
          subregion: const WesternAsia(),
          languages: const [LangAra()],
          translations: omnCountryTranslations,
          latLng: const LatLng(21, 57),
          landlocked: false,
          bordersCodes: const ["Sau", "Are", "Yem"],
          areaMetric: 309500,
          demonyms: const [
            Demonyms(language: LangEng(), female: "Omani", male: "Omani"),
            Demonyms(language: LangFra(), female: "Omanaise", male: "Omanais"),
          ],
          emoji: "🇴🇲",
          maps: const Maps(
            googleMaps: "L2BoXoAwDDwWecnw5",
            openStreetMaps: "relation/305138",
          ),
          population: 5106622,
          gini: null,
          fifa: "OMA",
          car: const Car(sign: "OM"),
          timezones: const ["UTC+04:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.sunday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Muscat"),
            latLng: LatLng(23.62, 58.58),
          ),
          postalCode:
              const PostalCode(format: "###", regExpPattern: r"^(\d{3})$"),
          regionalBlocs: const [BlocAL()],
        );
}

/// A class that represents the Pakistan country.
class CountryPak extends WorldCountry {
  /// Creates a instance of [CountryPak] (Pakistan country).
  ///
  /// ISO 3166-1 Alpha-3 code: "PAK", ISO 3166-1 Alpha-2 code: "PK".
  const CountryPak()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Islamic Republic of Pakistan",
            common: "Pakistan",
          ),
          namesNative: const [
            CountryName(
              language: LangEng(),
              official: "Islamic Republic of Pakistan",
              common: "Pakistan",
            ),
            CountryName(
              language: LangUrd(),
              official: "اسلامی جمہوریۂ پاكستان",
              common: "پاكستان",
            ),
          ],
          tld: const [".pk"],
          code: "PAK",
          codeNumeric: "586",
          codeShort: "PK",
          cioc: "PAK",
          independent: true,
          unMember: true,
          currencies: const [FiatPkr()],
          idd: const Idd(root: 9, suffixes: [2]),
          altSpellings: const [
            "PK",
            "Pākistān",
            "Islamic Republic of Pakistan",
            "Islāmī Jumhūriya'eh Pākistān",
          ],
          continent: const Asia(),
          subregion: const SouthernAsia(),
          languages: const [LangEng(), LangUrd()],
          translations: pakCountryTranslations,
          latLng: const LatLng(30, 70),
          landlocked: false,
          bordersCodes: const ["Afg", "Chn", "Ind", "Irn"],
          areaMetric: 881912,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Pakistani",
              male: "Pakistani",
            ),
            Demonyms(
              language: LangFra(),
              female: "Pakistanaise",
              male: "Pakistanais",
            ),
          ],
          emoji: "🇵🇰",
          maps: const Maps(
            googleMaps: "5LYujdfR5yLUXoERA",
            openStreetMaps: "relation/307573",
          ),
          population: 220892331,
          gini: const Gini(year: 2018, coefficient: 31.6),
          fifa: "PAK",
          car: const Car(sign: "PK", isRightSide: false),
          timezones: const ["UTC+05:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Islamabad"),
            latLng: LatLng(33.68, 73.05),
          ),
          postalCode: const PostalCode(),
          regionalBlocs: const [BlocSAARC()],
        );
}

/// A class that represents the Panama country.
class CountryPan extends WorldCountry {
  /// Creates a instance of [CountryPan] (Panama country).
  ///
  /// ISO 3166-1 Alpha-3 code: "PAN", ISO 3166-1 Alpha-2 code: "PA".
  const CountryPan()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Republic of Panama",
            common: "Panama",
          ),
          namesNative: const [
            CountryName(
              language: LangSpa(),
              official: "República de Panamá",
              common: "Panamá",
            ),
          ],
          tld: const [".pa"],
          code: "PAN",
          codeNumeric: "591",
          codeShort: "PA",
          cioc: "PAN",
          independent: true,
          unMember: true,
          currencies: const [FiatPab(), FiatUsd()],
          idd: const Idd(root: 50, suffixes: [7]),
          altSpellings: const [
            "PA",
            "Republic of Panama",
            "República de Panamá",
          ],
          continent: const Americas(),
          subregion: const CentralAmerica(),
          languages: const [LangSpa()],
          translations: panCountryTranslations,
          latLng: const LatLng(9, -80),
          landlocked: false,
          bordersCodes: const ["Col", "Cri"],
          areaMetric: 75417,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Panamanian",
              male: "Panamanian",
            ),
            Demonyms(
              language: LangFra(),
              female: "Panaméenne",
              male: "Panaméen",
            ),
          ],
          emoji: "🇵🇦",
          maps: const Maps(
            googleMaps: "sEN7sKqeawa5oPNLA",
            openStreetMaps: "relation/287668",
          ),
          population: 4314768,
          gini: const Gini(year: 2019, coefficient: 49.8),
          fifa: "PAN",
          car: const Car(sign: "PA"),
          timezones: const ["UTC-05:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Panama City"),
            latLng: LatLng(8.97, -79.53),
          ),
          postalCode: null,
          regionalBlocs: const [BlocCAIS()],
        );
}

/// A class that represents the Pitcairn Islands country.
class CountryPcn extends WorldCountry {
  /// Creates a instance of [CountryPcn] (Pitcairn Islands country).
  ///
  /// ISO 3166-1 Alpha-3 code: "PCN", ISO 3166-1 Alpha-2 code: "PN".
  const CountryPcn()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Pitcairn Group of Islands",
            common: "Pitcairn Islands",
          ),
          namesNative: const [
            CountryName(
              language: LangEng(),
              official: "Pitcairn Group of Islands",
              common: "Pitcairn Islands",
            ),
          ],
          tld: const [".pn"],
          code: "PCN",
          codeNumeric: "612",
          codeShort: "PN",
          cioc: null,
          independent: false,
          unMember: false,
          currencies: const [FiatNzd()],
          idd: const Idd(root: 6, suffixes: [4]),
          altSpellings: const [
            "PN",
            "Pitcairn",
            "Pitcairn Henderson Ducie and Oeno Islands",
          ],
          continent: const Oceania(),
          subregion: const Polynesia(),
          languages: const [LangEng()],
          translations: pcnCountryTranslations,
          latLng: const LatLng(-25.06666666, -130.1),
          landlocked: false,
          bordersCodes: null,
          areaMetric: 47,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Pitcairn Islander",
              male: "Pitcairn Islander",
            ),
            Demonyms(
              language: LangFra(),
              female: "Pitcairnaise",
              male: "Pitcairnais",
            ),
          ],
          emoji: "🇵🇳",
          maps: const Maps(
            googleMaps: "XGJMnMAigXjXcxSa7",
            openStreetMaps: "relation/2185375",
          ),
          population: 56,
          gini: null,
          fifa: null,
          car: const Car(sign: "GB", isRightSide: false),
          timezones: const ["UTC-08:00"],
          hasCoatOfArms: false,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Adamstown"),
            latLng: LatLng(-25.07, -130.08),
          ),
          postalCode: null,
          regionalBlocs: null,
        );
}

/// A class that represents the Peru country.
class CountryPer extends WorldCountry {
  /// Creates a instance of [CountryPer] (Peru country).
  ///
  /// ISO 3166-1 Alpha-3 code: "PER", ISO 3166-1 Alpha-2 code: "PE".
  const CountryPer()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Republic of Peru",
            common: "Peru",
          ),
          namesNative: const [
            CountryName(
              language: LangAym(),
              official: "Piruw Suyu",
              common: "Piruw",
            ),
            CountryName(
              language: LangQue(),
              official: "Piruw Ripuwlika",
              common: "Piruw",
            ),
            CountryName(
              language: LangSpa(),
              official: "República del Perú",
              common: "Perú",
            ),
          ],
          tld: const [".pe"],
          code: "PER",
          codeNumeric: "604",
          codeShort: "PE",
          cioc: "PER",
          independent: true,
          unMember: true,
          currencies: const [FiatPen()],
          idd: const Idd(root: 5, suffixes: [1]),
          altSpellings: const [
            "PE",
            "Republic of Peru",
            "República del Perú",
          ],
          continent: const Americas(),
          subregion: const SouthAmerica(),
          languages: const [LangAym(), LangQue(), LangSpa()],
          translations: perCountryTranslations,
          latLng: const LatLng(-10, -76),
          landlocked: false,
          bordersCodes: const ["Bol", "Bra", "Chl", "Col", "Ecu"],
          areaMetric: 1285216,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Peruvian",
              male: "Peruvian",
            ),
            Demonyms(
              language: LangFra(),
              female: "Péruvienne",
              male: "Péruvien",
            ),
          ],
          emoji: "🇵🇪",
          maps: const Maps(
            googleMaps: "uDWEUaXNcZTng1fP6",
            openStreetMaps: "relation/288247",
          ),
          population: 32971846,
          gini: const Gini(year: 2019, coefficient: 41.5),
          fifa: "PER",
          car: const Car(sign: "PE"),
          timezones: const ["UTC-05:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Lima"),
            latLng: LatLng(-12.05, -77.05),
          ),
          postalCode: const PostalCode(),
          regionalBlocs: const [BlocPA(), BlocUSAN()],
        );
}

/// A class that represents the Philippines country.
class CountryPhl extends WorldCountry {
  /// Creates a instance of [CountryPhl] (Philippines country).
  ///
  /// ISO 3166-1 Alpha-3 code: "PHL", ISO 3166-1 Alpha-2 code: "PH".
  const CountryPhl()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Republic of the Philippines",
            common: "Philippines",
          ),
          namesNative: const [
            CountryName(
              language: LangEng(),
              official: "Republic of the Philippines",
              common: "Philippines",
            ),
            CountryName(
              language: LangTgl(),
              official: "Republika ng Pilipinas",
              common: "Pilipinas",
            ),
          ],
          tld: const [".ph"],
          code: "PHL",
          codeNumeric: "608",
          codeShort: "PH",
          cioc: "PHI",
          independent: true,
          unMember: true,
          currencies: const [FiatPhp()],
          idd: const Idd(root: 6, suffixes: [3]),
          altSpellings: const [
            "PH",
            "Republic of the Philippines",
            "Repúblika ng Pilipinas",
          ],
          continent: const Asia(),
          subregion: const SouthEasternAsia(),
          languages: const [LangEng(), LangTgl()],
          translations: phlCountryTranslations,
          latLng: const LatLng(13, 122),
          landlocked: false,
          bordersCodes: null,
          areaMetric: 342353,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Filipino",
              male: "Filipino",
            ),
            Demonyms(
              language: LangFra(),
              female: "Philippine",
              male: "Philippin",
            ),
          ],
          emoji: "🇵🇭",
          maps: const Maps(
            googleMaps: "k8T2fb5VMUfsWFX6A",
            openStreetMaps: "relation/443174",
          ),
          population: 109581085,
          gini: const Gini(year: 2018, coefficient: 42.3),
          fifa: "PHI",
          car: const Car(sign: "RP"),
          timezones: const ["UTC+08:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Manila"),
            latLng: LatLng(14.6, 120.97),
          ),
          postalCode:
              const PostalCode(format: "####", regExpPattern: r"^(\d{4})$"),
          regionalBlocs: const [BlocASEAN()],
        );
}

/// A class that represents the Palau country.
class CountryPlw extends WorldCountry {
  /// Creates a instance of [CountryPlw] (Palau country).
  ///
  /// ISO 3166-1 Alpha-3 code: "PLW", ISO 3166-1 Alpha-2 code: "PW".
  const CountryPlw()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Republic of Palau",
            common: "Palau",
          ),
          namesNative: const [
            CountryName(
              language: LangEng(),
              official: "Republic of Palau",
              common: "Palau",
            ),
          ],
          tld: const [".pw"],
          code: "PLW",
          codeNumeric: "585",
          codeShort: "PW",
          cioc: "PLW",
          independent: true,
          unMember: true,
          currencies: const [FiatUsd()],
          idd: const Idd(root: 6, suffixes: [80]),
          altSpellings: const ["PW", "Republic of Palau", "Beluu er a Belau"],
          continent: const Oceania(),
          subregion: const Micronesia(),
          languages: const [LangEng()],
          translations: plwCountryTranslations,
          latLng: const LatLng(7.5, 134.5),
          landlocked: false,
          bordersCodes: null,
          areaMetric: 459,
          demonyms: const [
            Demonyms(language: LangEng(), female: "Palauan", male: "Palauan"),
            Demonyms(language: LangFra(), female: "Paluane", male: "Paluan"),
          ],
          emoji: "🇵🇼",
          maps: const Maps(
            googleMaps: "MVasQBbUkQP7qQDR9",
            openStreetMaps: "relation/571805",
          ),
          population: 18092,
          gini: null,
          fifa: null,
          car: const Car(sign: "PAL"),
          timezones: const ["UTC+09:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Ngerulmud"),
            latLng: LatLng(7.5, 134.62),
          ),
          postalCode:
              const PostalCode(format: "96940", regExpPattern: r"^(96940)$"),
          regionalBlocs: null,
        );
}

/// A class that represents the Papua New Guinea country.
class CountryPng extends WorldCountry {
  /// Creates a instance of [CountryPng] (Papua New Guinea country).
  ///
  /// ISO 3166-1 Alpha-3 code: "PNG", ISO 3166-1 Alpha-2 code: "PG".
  const CountryPng()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Independent State of Papua New Guinea",
            common: "Papua New Guinea",
          ),
          namesNative: const [
            CountryName(
              language: LangEng(),
              official: "Independent State of Papua New Guinea",
              common: "Papua New Guinea",
            ),
            CountryName(
              language: LangHmo(),
              official: "Independen Stet bilong Papua Niugini",
              common: "Papua Niu Gini",
            ),
          ],
          tld: const [".pg"],
          code: "PNG",
          codeNumeric: "598",
          codeShort: "PG",
          cioc: "PNG",
          independent: true,
          unMember: true,
          currencies: const [FiatPgk()],
          idd: const Idd(root: 6, suffixes: [75]),
          altSpellings: const [
            "PG",
            "Independent State of Papua New Guinea",
            "Independen Stet bilong Papua Niugini",
          ],
          continent: const Oceania(),
          subregion: const Melanesia(),
          languages: const [LangEng(), LangHmo()],
          translations: pngCountryTranslations,
          latLng: const LatLng(-6, 147),
          landlocked: false,
          bordersCodes: const ["Idn"],
          areaMetric: 462840,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Papua New Guinean",
              male: "Papua New Guinean",
            ),
            Demonyms(
              language: LangFra(),
              female: "Papouasienne",
              male: "Papouasien",
            ),
          ],
          emoji: "🇵🇬",
          maps: const Maps(
            googleMaps: "ChGmzZBjZ3vnBwR2A",
            openStreetMaps: "307866",
          ),
          population: 8947027,
          gini: const Gini(year: 2009, coefficient: 41.9),
          fifa: "PNG",
          car: const Car(sign: "PNG", isRightSide: false),
          timezones: const ["UTC+10:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Port Moresby"),
            latLng: LatLng(-9.45, 147.18),
          ),
          postalCode:
              const PostalCode(format: "###", regExpPattern: r"^(\d{3})$"),
          regionalBlocs: null,
        );
}

/// A class that represents the Poland country.
class CountryPol extends WorldCountry {
  /// Creates a instance of [CountryPol] (Poland country).
  ///
  /// ISO 3166-1 Alpha-3 code: "POL", ISO 3166-1 Alpha-2 code: "PL".
  const CountryPol()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Republic of Poland",
            common: "Poland",
          ),
          namesNative: const [
            CountryName(
              language: LangPol(),
              official: "Rzeczpospolita Polska",
              common: "Polska",
            ),
          ],
          tld: const [".pl"],
          code: "POL",
          codeNumeric: "616",
          codeShort: "PL",
          cioc: "POL",
          independent: true,
          unMember: true,
          currencies: const [FiatPln()],
          idd: const Idd(root: 4, suffixes: [8]),
          altSpellings: const [
            "PL",
            "Republic of Poland",
            "Rzeczpospolita Polska",
          ],
          continent: const Europe(),
          subregion: const CentralEurope(),
          languages: const [LangPol()],
          translations: polCountryTranslations,
          latLng: const LatLng(52, 20),
          landlocked: false,
          bordersCodes: const [
            "Blr",
            "Cze",
            "Deu",
            "Ltu",
            "Rus",
            "Svk",
            "Ukr",
          ],
          areaMetric: 312679,
          demonyms: const [
            Demonyms(language: LangEng(), female: "Polish", male: "Polish"),
            Demonyms(
              language: LangFra(),
              female: "Polonaise",
              male: "Polonais",
            ),
          ],
          emoji: "🇵🇱",
          maps: const Maps(
            googleMaps: "gY9Xw4Sf4415P4949",
            openStreetMaps: "relation/49715",
          ),
          population: 37950802,
          gini: const Gini(year: 2018, coefficient: 30.2),
          fifa: "POL",
          car: const Car(sign: "PL"),
          timezones: const ["UTC+01:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Warsaw"),
            latLng: LatLng(52.25, 21),
          ),
          postalCode: const PostalCode(format: "##-###"),
          regionalBlocs: const [BlocEU()],
        );
}

/// A class that represents the Puerto Rico country.
class CountryPri extends WorldCountry {
  /// Creates a instance of [CountryPri] (Puerto Rico country).
  ///
  /// ISO 3166-1 Alpha-3 code: "PRI", ISO 3166-1 Alpha-2 code: "PR".
  const CountryPri()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Commonwealth of Puerto Rico",
            common: "Puerto Rico",
          ),
          namesNative: const [
            CountryName(
              language: LangEng(),
              official: "Commonwealth of Puerto Rico",
              common: "Puerto Rico",
            ),
            CountryName(
              language: LangSpa(),
              official: "Estado Libre Asociado de Puerto Rico",
              common: "Puerto Rico",
            ),
          ],
          tld: const [".pr"],
          code: "PRI",
          codeNumeric: "630",
          codeShort: "PR",
          cioc: "PUR",
          independent: false,
          unMember: false,
          currencies: const [FiatUsd()],
          idd: const Idd(root: 1, suffixes: [787, 939]),
          altSpellings: const [
            "PR",
            "Commonwealth of Puerto Rico",
            "Estado Libre Asociado de Puerto Rico",
          ],
          continent: const Americas(),
          subregion: const Caribbean(),
          languages: const [LangEng(), LangSpa()],
          translations: priCountryTranslations,
          latLng: const LatLng(18.25, -66.5),
          landlocked: false,
          bordersCodes: null,
          areaMetric: 8870,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Puerto Rican",
              male: "Puerto Rican",
            ),
            Demonyms(
              language: LangFra(),
              female: "Portoricaine",
              male: "Portoricain",
            ),
          ],
          emoji: "🇵🇷",
          maps: const Maps(
            googleMaps: "sygfDbtwn389wu8x5",
            openStreetMaps: "relation/4422604",
          ),
          population: 3194034,
          gini: null,
          fifa: "PUR",
          car: const Car(sign: "USA"),
          timezones: const ["UTC-04:00"],
          hasCoatOfArms: false,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("San Juan"),
            latLng: LatLng(18.47, -66.12),
          ),
          postalCode: const PostalCode(
            format: "#####-####",
            regExpPattern: r"^(\d{9})$",
          ),
          regionalBlocs: null,
        );
}

/// A class that represents the North Korea country.
class CountryPrk extends WorldCountry {
  /// Creates a instance of [CountryPrk] (North Korea country).
  ///
  /// ISO 3166-1 Alpha-3 code: "PRK", ISO 3166-1 Alpha-2 code: "KP".
  const CountryPrk()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Democratic People's Republic of Korea",
            common: "North Korea",
          ),
          namesNative: const [
            CountryName(
              language: LangKor(),
              official: "조선민주주의인민공화국",
              common: "조선",
            ),
          ],
          tld: const [".kp"],
          code: "PRK",
          codeNumeric: "408",
          codeShort: "KP",
          cioc: "PRK",
          independent: true,
          unMember: true,
          currencies: const [FiatKpw()],
          idd: const Idd(root: 8, suffixes: [50]),
          altSpellings: const [
            "KP",
            "Democratic People's Republic of Korea",
            "DPRK",
            "조선민주주의인민공화국",
            "Chosŏn Minjujuŭi Inmin Konghwaguk",
            "Korea, Democratic People's Republic of",
            "북한",
            "북조선",
          ],
          continent: const Asia(),
          subregion: const EasternAsia(),
          languages: const [LangKor()],
          translations: prkCountryTranslations,
          latLng: const LatLng(40, 127),
          landlocked: false,
          bordersCodes: const ["Chn", "Kor", "Rus"],
          areaMetric: 120538,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "North Korean",
              male: "North Korean",
            ),
            Demonyms(
              language: LangFra(),
              female: "Nord-coréenne",
              male: "Nord-coréen",
            ),
          ],
          emoji: "🇰🇵",
          maps: const Maps(
            googleMaps: "9q5T2DMeH5JL7Tky6",
            openStreetMaps: "relation/192734",
          ),
          population: 25778815,
          gini: null,
          fifa: "PRK",
          car: const Car(),
          timezones: const ["UTC+09:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Pyongyang"),
            latLng: LatLng(39.02, 125.75),
          ),
          postalCode: const PostalCode(
            format: "###-###",
            regExpPattern: r"^(\d{6})$",
          ),
          regionalBlocs: null,
        );
}

/// A class that represents the Portugal country.
class CountryPrt extends WorldCountry {
  /// Creates a instance of [CountryPrt] (Portugal country).
  ///
  /// ISO 3166-1 Alpha-3 code: "PRT", ISO 3166-1 Alpha-2 code: "PT".
  const CountryPrt()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Portuguese Republic",
            common: "Portugal",
          ),
          namesNative: const [
            CountryName(
              language: LangPor(),
              official: "República português",
              common: "Portugal",
            ),
          ],
          tld: const [".pt"],
          code: "PRT",
          codeNumeric: "620",
          codeShort: "PT",
          cioc: "POR",
          independent: true,
          unMember: true,
          currencies: const [FiatEur()],
          idd: const Idd(root: 3, suffixes: [51]),
          altSpellings: const [
            "PT",
            "Portuguesa",
            "Portuguese Republic",
            "República Portuguesa",
          ],
          continent: const Europe(),
          subregion: const SouthernEurope(),
          languages: const [LangPor()],
          translations: prtCountryTranslations,
          latLng: const LatLng(39.5, -8),
          landlocked: false,
          bordersCodes: const ["Esp"],
          areaMetric: 92090,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Portuguese",
              male: "Portuguese",
            ),
            Demonyms(
              language: LangFra(),
              female: "Portugaise",
              male: "Portugais",
            ),
          ],
          emoji: "🇵🇹",
          maps: const Maps(
            googleMaps: "BaTBSyc4GWMmbAKB8",
            openStreetMaps: "relation/295480",
          ),
          population: 10305564,
          gini: const Gini(year: 2018, coefficient: 33.5),
          fifa: "POR",
          car: const Car(sign: "P"),
          timezones: const ["UTC-01:00", "UTC+00:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Lisbon"),
            latLng: LatLng(38.72, -9.13),
          ),
          postalCode: const PostalCode(
            format: "####-###",
            regExpPattern: r"^(\d{7})$",
          ),
          regionalBlocs: const [BlocEU()],
        );
}

/// A class that represents the Paraguay country.
class CountryPry extends WorldCountry {
  /// Creates a instance of [CountryPry] (Paraguay country).
  ///
  /// ISO 3166-1 Alpha-3 code: "PRY", ISO 3166-1 Alpha-2 code: "PY".
  const CountryPry()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Republic of Paraguay",
            common: "Paraguay",
          ),
          namesNative: const [
            CountryName(
              language: LangGrn(),
              official: "Tetã Paraguái",
              common: "Paraguái",
            ),
            CountryName(
              language: LangSpa(),
              official: "República de Paraguay",
              common: "Paraguay",
            ),
          ],
          tld: const [".py"],
          code: "PRY",
          codeNumeric: "600",
          codeShort: "PY",
          cioc: "PAR",
          independent: true,
          unMember: true,
          currencies: const [FiatPyg()],
          idd: const Idd(root: 5, suffixes: [95]),
          altSpellings: const [
            "PY",
            "Republic of Paraguay",
            "República del Paraguay",
            "Tetã Paraguái",
          ],
          continent: const Americas(),
          subregion: const SouthAmerica(),
          languages: const [LangGrn(), LangSpa()],
          translations: pryCountryTranslations,
          latLng: const LatLng(-23, -58),
          landlocked: true,
          bordersCodes: const ["Arg", "Bol", "Bra"],
          areaMetric: 406752,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Paraguayan",
              male: "Paraguayan",
            ),
            Demonyms(
              language: LangFra(),
              female: "Paraguayenne",
              male: "Paraguayen",
            ),
          ],
          emoji: "🇵🇾",
          maps: const Maps(
            googleMaps: "JtnqG73WJn1Gx6mz6",
            openStreetMaps: "relation/287077",
          ),
          population: 7132530,
          gini: const Gini(year: 2019, coefficient: 45.7),
          fifa: "PAR",
          car: const Car(sign: "PY"),
          timezones: const ["UTC-04:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Asunción"),
            latLng: LatLng(-25.28, -57.57),
          ),
          postalCode:
              const PostalCode(format: "####", regExpPattern: r"^(\d{4})$"),
          regionalBlocs: const [BlocUSAN()],
        );
}

/// A class that represents the Palestine country.
class CountryPse extends WorldCountry {
  /// Creates a instance of [CountryPse] (Palestine country).
  ///
  /// ISO 3166-1 Alpha-3 code: "PSE", ISO 3166-1 Alpha-2 code: "PS".
  const CountryPse()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "State of Palestine",
            common: "Palestine",
          ),
          namesNative: const [
            CountryName(
              language: LangAra(),
              official: "دولة فلسطين",
              common: "فلسطين",
            ),
          ],
          tld: const [".ps", "فلسطين."],
          code: "PSE",
          codeNumeric: "275",
          codeShort: "PS",
          cioc: "PLE",
          independent: false,
          unMember: false,
          currencies: const [FiatEgp(), FiatIls(), FiatJod()],
          idd: const Idd(root: 9, suffixes: [70]),
          altSpellings: const [
            "PS",
            "Palestine, State of",
            "State of Palestine",
            "Dawlat Filasṭin",
          ],
          continent: const Asia(),
          subregion: const WesternAsia(),
          languages: const [LangAra()],
          translations: pseCountryTranslations,
          latLng: const LatLng(31.9, 35.2),
          landlocked: false,
          bordersCodes: const ["Isr", "Egy", "Jor"],
          areaMetric: 6220,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Palestinian",
              male: "Palestinian",
            ),
            Demonyms(
              language: LangFra(),
              female: "Palestinienne",
              male: "Palestinien",
            ),
          ],
          emoji: "🇵🇸",
          maps: const Maps(
            googleMaps: "QvTbkRdmdWEoYAmt5",
            openStreetMaps: "relation/1703814",
          ),
          population: 4803269,
          gini: const Gini(year: 2016, coefficient: 33.7),
          fifa: "PLE",
          car: const Car(sign: "PS"),
          timezones: const ["UTC+02:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.sunday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Ramallah", deJure: "Jerusalem"),
            latLng: LatLng(31.9, 35.2),
          ),
          postalCode: null,
          regionalBlocs: const [BlocAL()],
        );
}

/// A class that represents the French Polynesia country.
class CountryPyf extends WorldCountry {
  /// Creates a instance of [CountryPyf] (French Polynesia country).
  ///
  /// ISO 3166-1 Alpha-3 code: "PYF", ISO 3166-1 Alpha-2 code: "PF".
  const CountryPyf()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "French Polynesia",
            common: "French Polynesia",
          ),
          namesNative: const [
            CountryName(
              language: LangFra(),
              official: "Polynésie française",
              common: "Polynésie française",
            ),
          ],
          tld: const [".pf"],
          code: "PYF",
          codeNumeric: "258",
          codeShort: "PF",
          cioc: null,
          independent: false,
          unMember: false,
          currencies: const [FiatXpf()],
          idd: const Idd(root: 6, suffixes: [89]),
          altSpellings: const [
            "PF",
            "Polynésie française",
            "French Polynesia",
            "Pōrīnetia Farāni",
          ],
          continent: const Oceania(),
          subregion: const Polynesia(),
          languages: const [LangFra()],
          translations: pyfCountryTranslations,
          latLng: const LatLng(17.6797, 149.4068),
          landlocked: false,
          bordersCodes: null,
          areaMetric: 4167,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "French Polynesian",
              male: "French Polynesian",
            ),
            Demonyms(
              language: LangFra(),
              female: "Polynésienne",
              male: "Polynésien",
            ),
          ],
          emoji: "🇵🇫",
          maps: const Maps(
            googleMaps: "xgg6BQTRyeQg4e1m6",
            openStreetMaps: "relation/3412620",
          ),
          population: 280904,
          gini: null,
          fifa: null,
          car: const Car(sign: "F"),
          timezones: const ["UTC-10:00", "UTC-09:30", "UTC-09:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Papeetē"),
            latLng: LatLng(-17.53, -149.56),
          ),
          postalCode: const PostalCode(regExpPattern: r"^((97|98)7\d{2})$"),
          regionalBlocs: null,
        );
}

/// A class that represents the Qatar country.
class CountryQat extends WorldCountry {
  /// Creates a instance of [CountryQat] (Qatar country).
  ///
  /// ISO 3166-1 Alpha-3 code: "QAT", ISO 3166-1 Alpha-2 code: "QA".
  const CountryQat()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "State of Qatar",
            common: "Qatar",
          ),
          namesNative: const [
            CountryName(
              language: LangAra(),
              official: "دولة قطر",
              common: "قطر",
            ),
          ],
          tld: const [".qa", "قطر."],
          code: "QAT",
          codeNumeric: "634",
          codeShort: "QA",
          cioc: "QAT",
          independent: true,
          unMember: true,
          currencies: const [FiatQar()],
          idd: const Idd(root: 9, suffixes: [74]),
          altSpellings: const ["QA", "State of Qatar", "Dawlat Qaṭar"],
          continent: const Asia(),
          subregion: const WesternAsia(),
          languages: const [LangAra()],
          translations: qatCountryTranslations,
          latLng: const LatLng(25.5, 51.25),
          landlocked: false,
          bordersCodes: const ["Sau"],
          areaMetric: 11586,
          demonyms: const [
            Demonyms(language: LangEng(), female: "Qatari", male: "Qatari"),
            Demonyms(
              language: LangFra(),
              female: "Qatarienne",
              male: "Qatarien",
            ),
          ],
          emoji: "🇶🇦",
          maps: const Maps(
            googleMaps: "ZV76Y49z7LLUZ2KQ6",
            openStreetMaps: "relation/305095",
          ),
          population: 2881060,
          gini: null,
          fifa: "QAT",
          car: const Car(sign: "Q"),
          timezones: const ["UTC+03:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.sunday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Doha"),
            latLng: LatLng(25.28, 51.53),
          ),
          postalCode: null,
          regionalBlocs: const [BlocAL()],
        );
}

/// A class that represents the Réunion country.
class CountryReu extends WorldCountry {
  /// Creates a instance of [CountryReu] (Réunion country).
  ///
  /// ISO 3166-1 Alpha-3 code: "REU", ISO 3166-1 Alpha-2 code: "RE".
  const CountryReu()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Réunion Island",
            common: "Réunion",
          ),
          namesNative: const [
            CountryName(
              language: LangFra(),
              official: "Ile de la Réunion",
              common: "La Réunion",
            ),
          ],
          tld: const [".re"],
          code: "REU",
          codeNumeric: "638",
          codeShort: "RE",
          cioc: null,
          independent: false,
          unMember: false,
          currencies: const [FiatEur()],
          idd: const Idd(root: 2, suffixes: [62]),
          altSpellings: const ["RE", "Reunion"],
          continent: const Africa(),
          subregion: const EasternAfrica(),
          languages: const [LangFra()],
          translations: reuCountryTranslations,
          latLng: const LatLng(-21.15, 55.5),
          landlocked: false,
          bordersCodes: null,
          areaMetric: 2511,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Réunionese",
              male: "Réunionese",
            ),
            Demonyms(
              language: LangFra(),
              female: "Réunionnaise",
              male: "Réunionnais",
            ),
          ],
          emoji: "🇷🇪",
          maps: const Maps(
            googleMaps: "wWpBrXsp8UHVbah29",
            openStreetMaps: "relation/1785276",
          ),
          population: 840974,
          gini: null,
          fifa: null,
          car: const Car(sign: "F"),
          timezones: const ["UTC+04:00"],
          hasCoatOfArms: false,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Saint-Denis"),
            latLng: LatLng(-20.88, 55.45),
          ),
          postalCode:
              const PostalCode(regExpPattern: r"^((97|98)(4|7|8)\d{2})$"),
          regionalBlocs: const [BlocAU()],
        );
}

/// A class that represents the Romania country.
class CountryRou extends WorldCountry {
  /// Creates a instance of [CountryRou] (Romania country).
  ///
  /// ISO 3166-1 Alpha-3 code: "ROU", ISO 3166-1 Alpha-2 code: "RO".
  const CountryRou()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Romania",
            common: "Romania",
          ),
          namesNative: const [
            CountryName(
              language: LangRon(),
              official: "România",
              common: "România",
            ),
          ],
          tld: const [".ro"],
          code: "ROU",
          codeNumeric: "642",
          codeShort: "RO",
          cioc: "ROU",
          independent: true,
          unMember: true,
          currencies: const [FiatRon()],
          idd: const Idd(root: 4, suffixes: [0]),
          altSpellings: const ["RO", "Rumania", "Roumania", "România"],
          continent: const Europe(),
          subregion: const SouthwestEurope(),
          languages: const [LangRon()],
          translations: rouCountryTranslations,
          latLng: const LatLng(46, 25),
          landlocked: false,
          bordersCodes: const ["Bgr", "Hun", "Mda", "Srb", "Ukr"],
          areaMetric: 238391,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Romanian",
              male: "Romanian",
            ),
            Demonyms(language: LangFra(), female: "Roumaine", male: "Roumain"),
          ],
          emoji: "🇷🇴",
          maps: const Maps(
            googleMaps: "845hAgCf1mDkN3vr7",
            openStreetMaps: "relation/90689",
          ),
          population: 19286123,
          gini: const Gini(year: 2018, coefficient: 35.8),
          fifa: "ROU",
          car: const Car(sign: "RO"),
          timezones: const ["UTC+02:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Bucharest"),
            latLng: LatLng(44.43, 26.1),
          ),
          postalCode:
              const PostalCode(format: "######", regExpPattern: r"^(\d{6})$"),
          regionalBlocs: const [BlocEU()],
        );
}

/// A class that represents the Russia country.
class CountryRus extends WorldCountry {
  /// Creates a instance of [CountryRus] (Russia country).
  ///
  /// ISO 3166-1 Alpha-3 code: "RUS", ISO 3166-1 Alpha-2 code: "RU".
  const CountryRus()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Russian Federation",
            common: "Russia",
          ),
          namesNative: const [
            CountryName(
              language: LangRus(),
              official: "Российская Федерация",
              common: "Россия",
            ),
          ],
          tld: const [".ru", ".su", ".рф"],
          code: "RUS",
          codeNumeric: "643",
          codeShort: "RU",
          cioc: "RUS",
          independent: true,
          unMember: true,
          currencies: const [FiatRub()],
          idd: const Idd(root: 7, suffixes: [3, 4, 5, 8, 9]),
          altSpellings: const [
            "RU",
            "Russian Federation",
            "Российская Федерация",
          ],
          continent: const Europe(),
          subregion: const EasternEurope(),
          languages: const [LangRus()],
          translations: rusCountryTranslations,
          latLng: const LatLng(60, 100),
          landlocked: false,
          bordersCodes: const [
            "Aze",
            "Blr",
            "Chn",
            "Est",
            "Fin",
            "Geo",
            "Kaz",
            "Prk",
            "Lva",
            "Ltu",
            "Mng",
            "Nor",
            "Pol",
            "Ukr",
          ],
          areaMetric: 17098242,
          demonyms: const [
            Demonyms(language: LangEng(), female: "Russian", male: "Russian"),
            Demonyms(language: LangFra(), female: "Russe", male: "Russe"),
          ],
          emoji: "🇷🇺",
          maps: const Maps(
            googleMaps: "4F4PpDhGJgVvLby57",
            openStreetMaps: "relation/60189#map=3/65.15/105.29",
          ),
          population: 144104080,
          gini: const Gini(year: 2018, coefficient: 37.5),
          fifa: "RUS",
          car: const Car(sign: "RUS"),
          timezones: const [
            "UTC+03:00",
            "UTC+04:00",
            "UTC+06:00",
            "UTC+07:00",
            "UTC+08:00",
            "UTC+09:00",
            "UTC+10:00",
            "UTC+11:00",
            "UTC+12:00",
          ],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Moscow"),
            latLng: LatLng(55.75, 37.6),
          ),
          postalCode:
              const PostalCode(format: "######", regExpPattern: r"^(\d{6})$"),
          regionalBlocs: const [BlocEEU()],
        );
}

/// A class that represents the Rwanda country.
class CountryRwa extends WorldCountry {
  /// Creates a instance of [CountryRwa] (Rwanda country).
  ///
  /// ISO 3166-1 Alpha-3 code: "RWA", ISO 3166-1 Alpha-2 code: "RW".
  const CountryRwa()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Republic of Rwanda",
            common: "Rwanda",
          ),
          namesNative: const [
            CountryName(
              language: LangEng(),
              official: "Republic of Rwanda",
              common: "Rwanda",
            ),
            CountryName(
              language: LangFra(),
              official: "République rwandaise",
              common: "Rwanda",
            ),
            CountryName(
              language: LangKin(),
              official: "Repubulika y'u Rwanda",
              common: "Rwanda",
            ),
          ],
          tld: const [".rw"],
          code: "RWA",
          codeNumeric: "646",
          codeShort: "RW",
          cioc: "RWA",
          independent: true,
          unMember: true,
          currencies: const [FiatRwf()],
          idd: const Idd(root: 2, suffixes: [50]),
          altSpellings: const [
            "RW",
            "Republic of Rwanda",
            "Repubulika y'u Rwanda",
            "République du Rwanda",
          ],
          continent: const Africa(),
          subregion: const EasternAfrica(),
          languages: const [LangEng(), LangFra(), LangKin()],
          translations: rwaCountryTranslations,
          latLng: const LatLng(-2, 30),
          landlocked: true,
          bordersCodes: const ["Bdi", "Cod", "Tza", "Uga"],
          areaMetric: 26338,
          demonyms: const [
            Demonyms(language: LangEng(), female: "Rwandan", male: "Rwandan"),
            Demonyms(
              language: LangFra(),
              female: "Rwandaise",
              male: "Rwandais",
            ),
          ],
          emoji: "🇷🇼",
          maps: const Maps(
            googleMaps: "j5xb5r7CLqjYbyP86",
            openStreetMaps: "relation/171496",
          ),
          population: 12952209,
          gini: const Gini(year: 2016, coefficient: 43.7),
          fifa: "RWA",
          car: const Car(sign: "RWA"),
          timezones: const ["UTC+02:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Kigali"),
            latLng: LatLng(-1.95, 30.05),
          ),
          postalCode: null,
          regionalBlocs: const [BlocAU()],
        );
}

/// A class that represents the Saudi Arabia country.
class CountrySau extends WorldCountry {
  /// Creates a instance of [CountrySau] (Saudi Arabia country).
  ///
  /// ISO 3166-1 Alpha-3 code: "SAU", ISO 3166-1 Alpha-2 code: "SA".
  const CountrySau()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Kingdom of Saudi Arabia",
            common: "Saudi Arabia",
          ),
          namesNative: const [
            CountryName(
              language: LangAra(),
              official: "المملكة العربية السعودية",
              common: "العربية السعودية",
            ),
          ],
          tld: const [".sa", ".السعودية"],
          code: "SAU",
          codeNumeric: "682",
          codeShort: "SA",
          cioc: "KSA",
          independent: true,
          unMember: true,
          currencies: const [FiatSar()],
          idd: const Idd(root: 9, suffixes: [66]),
          altSpellings: const [
            "Saudi",
            "SA",
            "Kingdom of Saudi Arabia",
            "Al-Mamlakah al-‘Arabiyyah as-Su‘ūdiyyah",
          ],
          continent: const Asia(),
          subregion: const WesternAsia(),
          languages: const [LangAra()],
          translations: sauCountryTranslations,
          latLng: const LatLng(25, 45),
          landlocked: false,
          bordersCodes: const [
            "Irq",
            "Jor",
            "Kwt",
            "Omn",
            "Qat",
            "Are",
            "Yem",
          ],
          areaMetric: 2149690,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Saudi Arabian",
              male: "Saudi Arabian",
            ),
            Demonyms(
              language: LangFra(),
              female: "Saoudienne",
              male: "Saoudien",
            ),
          ],
          emoji: "🇸🇦",
          maps: const Maps(
            googleMaps: "5PSjvdJ1AyaLFRrG9",
            openStreetMaps: "relation/307584",
          ),
          population: 34813867,
          gini: null,
          fifa: "KSA",
          car: const Car(sign: "SA"),
          timezones: const ["UTC+03:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.sunday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Riyadh"),
            latLng: LatLng(24.65, 46.7),
          ),
          postalCode: const PostalCode(),
          regionalBlocs: const [BlocAL()],
        );
}

/// A class that represents the Sudan country.
class CountrySdn extends WorldCountry {
  /// Creates a instance of [CountrySdn] (Sudan country).
  ///
  /// ISO 3166-1 Alpha-3 code: "SDN", ISO 3166-1 Alpha-2 code: "SD".
  const CountrySdn()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Republic of the Sudan",
            common: "Sudan",
          ),
          namesNative: const [
            CountryName(
              language: LangAra(),
              official: "جمهورية السودان",
              common: "السودان",
            ),
            CountryName(
              language: LangEng(),
              official: "Republic of the Sudan",
              common: "Sudan",
            ),
          ],
          tld: const [".sd"],
          code: "SDN",
          codeNumeric: "729",
          codeShort: "SD",
          cioc: "SUD",
          independent: true,
          unMember: true,
          currencies: const [FiatSdg()],
          idd: const Idd(root: 2, suffixes: [49]),
          altSpellings: const [
            "SD",
            "Republic of the Sudan",
            "Jumhūrīyat as-Sūdān",
          ],
          continent: const Africa(),
          subregion: const NorthernAfrica(),
          languages: const [LangAra(), LangEng()],
          translations: sdnCountryTranslations,
          latLng: const LatLng(15, 30),
          landlocked: false,
          bordersCodes: const [
            "Caf",
            "Tcd",
            "Egy",
            "Eri",
            "Eth",
            "Lby",
            "Ssd",
          ],
          areaMetric: 1886068,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Sudanese",
              male: "Sudanese",
            ),
            Demonyms(
              language: LangFra(),
              female: "Soudanaise",
              male: "Soudanais",
            ),
          ],
          emoji: "🇸🇩",
          maps: const Maps(
            googleMaps: "bNW7YUJCaqR8zcXn7",
            openStreetMaps: "relation/192789",
          ),
          population: 43849269,
          gini: const Gini(year: 2014, coefficient: 34.2),
          fifa: "SDN",
          car: const Car(sign: "SUD"),
          timezones: const ["UTC+03:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Khartoum"),
            latLng: LatLng(15.6, 32.53),
          ),
          postalCode: const PostalCode(),
          regionalBlocs: const [BlocAU(), BlocAL()],
        );
}

/// A class that represents the Senegal country.
class CountrySen extends WorldCountry {
  /// Creates a instance of [CountrySen] (Senegal country).
  ///
  /// ISO 3166-1 Alpha-3 code: "SEN", ISO 3166-1 Alpha-2 code: "SN".
  const CountrySen()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Republic of Senegal",
            common: "Senegal",
          ),
          namesNative: const [
            CountryName(
              language: LangFra(),
              official: "République du Sénégal",
              common: "Sénégal",
            ),
          ],
          tld: const [".sn"],
          code: "SEN",
          codeNumeric: "686",
          codeShort: "SN",
          cioc: "SEN",
          independent: true,
          unMember: true,
          currencies: const [FiatXof()],
          idd: const Idd(root: 2, suffixes: [21]),
          altSpellings: const [
            "SN",
            "Republic of Senegal",
            "République du Sénégal",
          ],
          continent: const Africa(),
          subregion: const WesternAfrica(),
          languages: const [LangFra()],
          translations: senCountryTranslations,
          latLng: const LatLng(14, -14),
          landlocked: false,
          bordersCodes: const ["Gmb", "Gin", "Gnb", "Mli", "Mrt"],
          areaMetric: 196722,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Senegalese",
              male: "Senegalese",
            ),
            Demonyms(
              language: LangFra(),
              female: "Sénégalaise",
              male: "Sénégalais",
            ),
          ],
          emoji: "🇸🇳",
          maps: const Maps(
            googleMaps: "o5f1uD5nyihCL3HCA",
            openStreetMaps: "relation/192775",
          ),
          population: 16743930,
          gini: const Gini(year: 2011, coefficient: 40.3),
          fifa: "SEN",
          car: const Car(sign: "SN"),
          timezones: const ["UTC+00:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Dakar"),
            latLng: LatLng(14.73, -17.63),
          ),
          postalCode: const PostalCode(),
          regionalBlocs: const [BlocAU()],
        );
}

/// A class that represents the Singapore country.
class CountrySgp extends WorldCountry {
  /// Creates a instance of [CountrySgp] (Singapore country).
  ///
  /// ISO 3166-1 Alpha-3 code: "SGP", ISO 3166-1 Alpha-2 code: "SG".
  const CountrySgp()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Republic of Singapore",
            common: "Singapore",
          ),
          namesNative: const [
            CountryName(
              language: LangEng(),
              official: "Republic of Singapore",
              common: "Singapore",
            ),
            CountryName(
              language: LangZho(),
              official: "新加坡共和国",
              common: "新加坡",
            ),
            CountryName(
              language: LangMsa(),
              official: "Republik Singapura",
              common: "Singapura",
            ),
            CountryName(
              language: LangTam(),
              official: "சிங்கப்பூர் குடியரசு",
              common: "சிங்கப்பூர்",
            ),
          ],
          tld: const [".sg", ".新加坡", ".சிங்கப்பூர்"],
          code: "SGP",
          codeNumeric: "702",
          codeShort: "SG",
          cioc: "SGP",
          independent: true,
          unMember: true,
          currencies: const [FiatSgd()],
          idd: const Idd(root: 6, suffixes: [5]),
          altSpellings: const [
            "SG",
            "Singapura",
            "Republik Singapura",
            "新加坡共和国",
          ],
          continent: const Asia(),
          subregion: const SouthEasternAsia(),
          languages: const [LangZho(), LangEng(), LangMsa(), LangTam()],
          translations: sgpCountryTranslations,
          latLng: const LatLng(1.36666666, 103.8),
          landlocked: false,
          bordersCodes: null,
          areaMetric: 710,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Singaporean",
              male: "Singaporean",
            ),
            Demonyms(
              language: LangFra(),
              female: "Singapourienne",
              male: "Singapourien",
            ),
          ],
          emoji: "🇸🇬",
          maps: const Maps(
            googleMaps: "QbQt9Y9b5KFzsahV6",
            openStreetMaps: "relation/536780",
          ),
          population: 5685807,
          gini: null,
          fifa: "SIN",
          car: const Car(sign: "SGP", isRightSide: false),
          timezones: const ["UTC+08:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Singapore"),
            latLng: LatLng(1.28, 103.85),
          ),
          postalCode:
              const PostalCode(format: "######", regExpPattern: r"^(\d{6})$"),
          regionalBlocs: const [BlocASEAN()],
        );
}

/// A class that represents the South Georgia country.
class CountrySgs extends WorldCountry {
  /// Creates a instance of [CountrySgs] (South Georgia country).
  ///
  /// ISO 3166-1 Alpha-3 code: "SGS", ISO 3166-1 Alpha-2 code: "GS".
  const CountrySgs()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "South Georgia and the South Sandwich Islands",
            common: "South Georgia",
          ),
          namesNative: const [
            CountryName(
              language: LangEng(),
              official: "South Georgia and the South Sandwich Islands",
              common: "South Georgia",
            ),
          ],
          tld: const [".gs"],
          code: "SGS",
          codeNumeric: "239",
          codeShort: "GS",
          cioc: null,
          independent: false,
          unMember: false,
          currencies: const [FiatShp()],
          idd: const Idd(root: 50, suffixes: [0]),
          altSpellings: const [
            "GS",
            "South Georgia and the South Sandwich Islands",
          ],
          continent: const Antarctica(),
          subregion: null,
          languages: const [LangEng()],
          translations: sgsCountryTranslations,
          latLng: const LatLng(-54.5, -37),
          landlocked: false,
          bordersCodes: null,
          areaMetric: 3903,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "South Georgian South Sandwich Islander",
              male: "South Georgian South Sandwich Islander",
            ),
          ],
          emoji: "🇬🇸",
          maps: const Maps(
            googleMaps: "mJzdaBwKBbm2B81q9",
            openStreetMaps: "relation/1983629",
          ),
          population: 30,
          gini: null,
          fifa: null,
          car: const Car(),
          timezones: const ["UTC-02:00"],
          hasCoatOfArms: false,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("King Edward Point"),
            latLng: LatLng(-54.28, -36.5),
          ),
          postalCode: null,
          regionalBlocs: const [BlocUSAN()],
        );
}

/// A class that represents the Saint Helena, Ascension and Tristan da Cunha country.
class CountryShn extends WorldCountry {
  /// Creates a instance of [CountryShn] (Saint Helena, Ascension and Tristan da Cunha country).
  ///
  /// ISO 3166-1 Alpha-3 code: "SHN", ISO 3166-1 Alpha-2 code: "SH".
  const CountryShn()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Saint Helena, Ascension and Tristan da Cunha",
            common: "Saint Helena, Ascension and Tristan da Cunha",
          ),
          namesNative: const [
            CountryName(
              language: LangEng(),
              official: "Saint Helena, Ascension and Tristan da Cunha",
              common: "Saint Helena, Ascension and Tristan da Cunha",
            ),
          ],
          tld: const [".sh", ".ac"],
          code: "SHN",
          codeNumeric: "654",
          codeShort: "SH",
          cioc: null,
          independent: false,
          unMember: false,
          currencies: const [FiatGbp(), FiatShp()],
          idd: const Idd(root: 2, suffixes: [90, 47]),
          altSpellings: const [
            "Saint Helena",
            "St. Helena, Ascension and Tristan da Cunha",
          ],
          continent: const Africa(),
          subregion: const WesternAfrica(),
          languages: const [LangEng()],
          translations: shnCountryTranslations,
          latLng: const LatLng(-15.95, -5.72),
          landlocked: false,
          bordersCodes: null,
          areaMetric: 394,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Saint Helenian",
              male: "Saint Helenian",
            ),
            Demonyms(
              language: LangFra(),
              female: "Sainte-Hélénoise",
              male: "Sainte-Hélènois",
            ),
          ],
          emoji: "🇸🇭",
          maps: const Maps(
            googleMaps: "iv4VxnPzHkjLCJuc6",
            openStreetMaps: "relation/4868269#map=13/-15.9657/-5.7120",
          ),
          population: 53192,
          gini: null,
          fifa: null,
          car: const Car(sign: "GB", isRightSide: false),
          timezones: const ["UTC+00:00"],
          hasCoatOfArms: false,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Jamestown"),
            latLng: LatLng(-15.93, -5.72),
          ),
          postalCode: const PostalCode(
            format: "STHL 1ZZ",
            regExpPattern: r"^(STHL1ZZ)$",
          ),
          regionalBlocs: const [BlocAU()],
        );
}

/// A class that represents the Svalbard and Jan Mayen country.
class CountrySjm extends WorldCountry {
  /// Creates a instance of [CountrySjm] (Svalbard and Jan Mayen country).
  ///
  /// ISO 3166-1 Alpha-3 code: "SJM", ISO 3166-1 Alpha-2 code: "SJ".
  const CountrySjm()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Svalbard og Jan Mayen",
            common: "Svalbard and Jan Mayen",
          ),
          namesNative: const [
            CountryName(
              language: LangNor(),
              official: "Svalbard og Jan Mayen",
              common: "Svalbard og Jan Mayen",
            ),
          ],
          tld: const [".sj"],
          code: "SJM",
          codeNumeric: "744",
          codeShort: "SJ",
          cioc: null,
          independent: false,
          unMember: false,
          currencies: const [FiatNok()],
          idd: const Idd(root: 4, suffixes: [779]),
          altSpellings: const ["SJ", "Svalbard and Jan Mayen Islands"],
          continent: const Europe(),
          subregion: const NorthernEurope(),
          languages: const [LangNor()],
          translations: sjmCountryTranslations,
          latLng: const LatLng(78, 20),
          landlocked: false,
          bordersCodes: null,
          areaMetric: 377,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Norwegian",
              male: "Norwegian",
            ),
          ],
          emoji: "🇸🇯",
          maps: const Maps(
            googleMaps: "L2wyyn3cQ16PzQ5J8",
            openStreetMaps: "relation/1337397",
          ),
          population: 2562,
          gini: null,
          fifa: null,
          car: const Car(sign: "N"),
          timezones: const ["UTC+01:00"],
          hasCoatOfArms: false,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Longyearbyen"),
            latLng: LatLng(78.22, 15.63),
          ),
          postalCode: null,
          regionalBlocs: null,
        );
}

/// A class that represents the Solomon Islands country.
class CountrySlb extends WorldCountry {
  /// Creates a instance of [CountrySlb] (Solomon Islands country).
  ///
  /// ISO 3166-1 Alpha-3 code: "SLB", ISO 3166-1 Alpha-2 code: "SB".
  const CountrySlb()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Solomon Islands",
            common: "Solomon Islands",
          ),
          namesNative: const [
            CountryName(
              language: LangEng(),
              official: "Solomon Islands",
              common: "Solomon Islands",
            ),
          ],
          tld: const [".sb"],
          code: "SLB",
          codeNumeric: "090",
          codeShort: "SB",
          cioc: "SOL",
          independent: true,
          unMember: true,
          currencies: const [FiatSbd()],
          idd: const Idd(root: 6, suffixes: [77]),
          altSpellings: const ["SB"],
          continent: const Oceania(),
          subregion: const Melanesia(),
          languages: const [LangEng()],
          translations: slbCountryTranslations,
          latLng: const LatLng(-8, 159),
          landlocked: false,
          bordersCodes: null,
          areaMetric: 28896,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Solomon Islander",
              male: "Solomon Islander",
            ),
            Demonyms(
              language: LangFra(),
              female: "Salomonienne",
              male: "Salomonien",
            ),
          ],
          emoji: "🇸🇧",
          maps: const Maps(
            googleMaps: "JbPkx86Ywjv8C1n8A",
            openStreetMaps: "relation/1857436",
          ),
          population: 686878,
          gini: const Gini(year: 2012, coefficient: 37.1),
          fifa: "SOL",
          car: const Car(sign: "SOL", isRightSide: false),
          timezones: const ["UTC+11:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Honiara"),
            latLng: LatLng(-9.43, 159.95),
          ),
          postalCode: null,
          regionalBlocs: null,
        );
}

/// A class that represents the Sierra Leone country.
class CountrySle extends WorldCountry {
  /// Creates a instance of [CountrySle] (Sierra Leone country).
  ///
  /// ISO 3166-1 Alpha-3 code: "SLE", ISO 3166-1 Alpha-2 code: "SL".
  const CountrySle()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Republic of Sierra Leone",
            common: "Sierra Leone",
          ),
          namesNative: const [
            CountryName(
              language: LangEng(),
              official: "Republic of Sierra Leone",
              common: "Sierra Leone",
            ),
          ],
          tld: const [".sl"],
          code: "SLE",
          codeNumeric: "694",
          codeShort: "SL",
          cioc: "SLE",
          independent: true,
          unMember: true,
          currencies: const [FiatSll()],
          idd: const Idd(root: 2, suffixes: [32]),
          altSpellings: const ["SL", "Republic of Sierra Leone"],
          continent: const Africa(),
          subregion: const WesternAfrica(),
          languages: const [LangEng()],
          translations: sleCountryTranslations,
          latLng: const LatLng(8.5, -11.5),
          landlocked: false,
          bordersCodes: const ["Gin", "Lbr"],
          areaMetric: 71740,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Sierra Leonean",
              male: "Sierra Leonean",
            ),
            Demonyms(
              language: LangFra(),
              female: "Sierra-leonaise",
              male: "Sierra-leonais",
            ),
          ],
          emoji: "🇸🇱",
          maps: const Maps(
            googleMaps: "jhacar85oq9QaeKB7",
            openStreetMaps: "relation/192777",
          ),
          population: 7976985,
          gini: const Gini(year: 2018, coefficient: 35.7),
          fifa: "SLE",
          car: const Car(sign: "WAL"),
          timezones: const ["UTC+00:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Freetown"),
            latLng: LatLng(8.48, -13.23),
          ),
          postalCode: null,
          regionalBlocs: const [BlocAU()],
        );
}

/// A class that represents the El Salvador country.
class CountrySlv extends WorldCountry {
  /// Creates a instance of [CountrySlv] (El Salvador country).
  ///
  /// ISO 3166-1 Alpha-3 code: "SLV", ISO 3166-1 Alpha-2 code: "SV".
  const CountrySlv()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Republic of El Salvador",
            common: "El Salvador",
          ),
          namesNative: const [
            CountryName(
              language: LangSpa(),
              official: "República de El Salvador",
              common: "El Salvador",
            ),
          ],
          tld: const [".sv"],
          code: "SLV",
          codeNumeric: "222",
          codeShort: "SV",
          cioc: "ESA",
          independent: true,
          unMember: true,
          currencies: const [FiatUsd()],
          idd: const Idd(root: 50, suffixes: [3]),
          altSpellings: const [
            "SV",
            "Republic of El Salvador",
            "República de El Salvador",
          ],
          continent: const Americas(),
          subregion: const CentralAmerica(),
          languages: const [LangSpa()],
          translations: slvCountryTranslations,
          latLng: const LatLng(13.83333333, -88.91666666),
          landlocked: false,
          bordersCodes: const ["Gtm", "Hnd"],
          areaMetric: 21041,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Salvadoran",
              male: "Salvadoran",
            ),
            Demonyms(
              language: LangFra(),
              female: "Salvadorienne",
              male: "Salvadorien",
            ),
          ],
          emoji: "🇸🇻",
          maps: const Maps(
            googleMaps: "cZnCEi5sEMQtKKcB7",
            openStreetMaps: "relation/1520612",
          ),
          population: 6486201,
          gini: const Gini(year: 2019, coefficient: 38.8),
          fifa: "SLV",
          car: const Car(sign: "ES"),
          timezones: const ["UTC-06:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("San Salvador"),
            latLng: LatLng(13.7, -89.2),
          ),
          postalCode: const PostalCode(
            format: "CP ####",
            regExpPattern: r"^(?:CP)*(\d{4})$",
          ),
          regionalBlocs: const [BlocCAIS()],
        );
}

/// A class that represents the San Marino country.
class CountrySmr extends WorldCountry {
  /// Creates a instance of [CountrySmr] (San Marino country).
  ///
  /// ISO 3166-1 Alpha-3 code: "SMR", ISO 3166-1 Alpha-2 code: "SM".
  const CountrySmr()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Republic of San Marino",
            common: "San Marino",
          ),
          namesNative: const [
            CountryName(
              language: LangIta(),
              official: "Repubblica di San Marino",
              common: "San Marino",
            ),
          ],
          tld: const [".sm"],
          code: "SMR",
          codeNumeric: "674",
          codeShort: "SM",
          cioc: "SMR",
          independent: true,
          unMember: true,
          currencies: const [FiatEur()],
          idd: const Idd(root: 3, suffixes: [78]),
          altSpellings: const [
            "SM",
            "Republic of San Marino",
            "Repubblica di San Marino",
          ],
          continent: const Europe(),
          subregion: const SouthernEurope(),
          languages: const [LangIta()],
          translations: smrCountryTranslations,
          latLng: const LatLng(43.76666666, 12.41666666),
          landlocked: true,
          bordersCodes: const ["Ita"],
          areaMetric: 61,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Sammarinese",
              male: "Sammarinese",
            ),
            Demonyms(
              language: LangFra(),
              female: "Saint-Marinaise",
              male: "Saint-Marinais",
            ),
          ],
          emoji: "🇸🇲",
          maps: const Maps(
            googleMaps: "rxCVJjm8dVY93RPY8",
            openStreetMaps: "relation/54624",
          ),
          population: 33938,
          gini: null,
          fifa: "SMR",
          car: const Car(sign: "RSM"),
          timezones: const ["UTC+01:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("City of San Marino"),
            latLng: LatLng(43.94, 12.45),
          ),
          postalCode:
              const PostalCode(format: "4789#", regExpPattern: r"^(4789\d)$"),
          regionalBlocs: null,
        );
}

/// A class that represents the Somalia country.
class CountrySom extends WorldCountry {
  /// Creates a instance of [CountrySom] (Somalia country).
  ///
  /// ISO 3166-1 Alpha-3 code: "SOM", ISO 3166-1 Alpha-2 code: "SO".
  const CountrySom()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Federal Republic of Somalia",
            common: "Somalia",
          ),
          namesNative: const [
            CountryName(
              language: LangAra(),
              official: "جمهورية الصومال‎‎",
              common: "الصومال‎‎",
            ),
            CountryName(
              language: LangSom(),
              official: "Jamhuuriyadda Federaalka Soomaaliya",
              common: "Soomaaliya",
            ),
          ],
          tld: const [".so"],
          code: "SOM",
          codeNumeric: "706",
          codeShort: "SO",
          cioc: "SOM",
          independent: true,
          unMember: true,
          currencies: const [FiatSos()],
          idd: const Idd(root: 2, suffixes: [52]),
          altSpellings: const [
            "SO",
            "aṣ-Ṣūmāl",
            "Federal Republic of Somalia",
            "Jamhuuriyadda Federaalka Soomaaliya",
            "Jumhūriyyat aṣ-Ṣūmāl al-Fiderāliyya",
          ],
          continent: const Africa(),
          subregion: const EasternAfrica(),
          languages: const [LangAra(), LangSom()],
          translations: somCountryTranslations,
          latLng: const LatLng(10, 49),
          landlocked: false,
          bordersCodes: const ["Dji", "Eth", "Ken"],
          areaMetric: 637657,
          demonyms: const [
            Demonyms(language: LangEng(), female: "Somali", male: "Somali"),
            Demonyms(
              language: LangFra(),
              female: "Somalienne",
              male: "Somalien",
            ),
          ],
          emoji: "🇸🇴",
          maps: const Maps(
            googleMaps: "8of8q7D1a8p7R6Fc9",
            openStreetMaps: "relation/192799",
          ),
          population: 15893219,
          gini: const Gini(year: 2017, coefficient: 36.8),
          fifa: "SOM",
          car: const Car(sign: "SO"),
          timezones: const ["UTC+03:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Mogadishu"),
            latLng: LatLng(2.07, 45.33),
          ),
          postalCode: const PostalCode(
            format: "@@  #####",
            regExpPattern: r"^([A-Z]{2}\d{5})$",
          ),
          regionalBlocs: const [BlocAU(), BlocAL()],
        );
}

/// A class that represents the Saint Pierre and Miquelon country.
class CountrySpm extends WorldCountry {
  /// Creates a instance of [CountrySpm] (Saint Pierre and Miquelon country).
  ///
  /// ISO 3166-1 Alpha-3 code: "SPM", ISO 3166-1 Alpha-2 code: "PM".
  const CountrySpm()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Saint Pierre and Miquelon",
            common: "Saint Pierre and Miquelon",
          ),
          namesNative: const [
            CountryName(
              language: LangFra(),
              official: "Collectivité territoriale de Saint-Pierre-et-Miquelon",
              common: "Saint-Pierre-et-Miquelon",
            ),
          ],
          tld: const [".pm"],
          code: "SPM",
          codeNumeric: "666",
          codeShort: "PM",
          cioc: null,
          independent: false,
          unMember: false,
          currencies: const [FiatEur()],
          idd: const Idd(root: 50, suffixes: [8]),
          altSpellings: const [
            "PM",
            "Collectivité territoriale de Saint-Pierre-et-Miquelon",
          ],
          continent: const Americas(),
          subregion: const NorthAmerica(),
          languages: const [LangFra()],
          translations: spmCountryTranslations,
          latLng: const LatLng(46.83333333, -56.33333333),
          landlocked: false,
          bordersCodes: null,
          areaMetric: 242,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Saint-Pierrais, Miquelonnais",
              male: "Saint-Pierrais, Miquelonnais",
            ),
            Demonyms(
              language: LangFra(),
              female: "Saint-Pierraise, Miquelonaise",
              male: "Saint-Pierrais, Miquelonais",
            ),
          ],
          emoji: "🇵🇲",
          maps: const Maps(
            googleMaps: "bUM8Yc8pA8ghyhmt6",
            openStreetMaps: "relation/3406826",
          ),
          population: 6069,
          gini: null,
          fifa: null,
          car: const Car(sign: "F"),
          timezones: const ["UTC-03:00"],
          hasCoatOfArms: false,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Saint-Pierre"),
            latLng: LatLng(46.77, -56.18),
          ),
          postalCode: const PostalCode(regExpPattern: r"^(97500)$"),
          regionalBlocs: null,
        );
}

/// A class that represents the Serbia country.
class CountrySrb extends WorldCountry {
  /// Creates a instance of [CountrySrb] (Serbia country).
  ///
  /// ISO 3166-1 Alpha-3 code: "SRB", ISO 3166-1 Alpha-2 code: "RS".
  const CountrySrb()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Republic of Serbia",
            common: "Serbia",
          ),
          namesNative: const [
            CountryName(
              language: LangSrp(),
              official: "Република Србија",
              common: "Србија",
            ),
          ],
          tld: const [".rs", ".срб"],
          code: "SRB",
          codeNumeric: "688",
          codeShort: "RS",
          cioc: "SRB",
          independent: true,
          unMember: true,
          currencies: const [FiatRsd()],
          idd: const Idd(root: 3, suffixes: [81]),
          altSpellings: const [
            "RS",
            "Srbija",
            "Republic of Serbia",
            "Република Србија",
            "Republika Srbija",
          ],
          continent: const Europe(),
          subregion: const SouthwestEurope(),
          languages: const [LangSrp()],
          translations: srbCountryTranslations,
          latLng: const LatLng(44, 21),
          landlocked: true,
          bordersCodes: const [
            "Bih",
            "Bgr",
            "Hrv",
            "Hun",
            "Mkd",
            "Mne",
            "Rou",
          ],
          areaMetric: 88361,
          demonyms: const [
            Demonyms(language: LangEng(), female: "Serbian", male: "Serbian"),
            Demonyms(language: LangFra(), female: "Serbe", male: "Serbe"),
          ],
          emoji: "🇷🇸",
          maps: const Maps(
            googleMaps: "2Aqof7aV2Naq8YEK8",
            openStreetMaps: "relation/1741311",
          ),
          population: 6908224,
          gini: const Gini(year: 2017, coefficient: 36.2),
          fifa: "SRB",
          car: const Car(sign: "SRB"),
          timezones: const ["UTC+01:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Belgrade"),
            latLng: LatLng(44.83, 20.5),
          ),
          postalCode:
              const PostalCode(format: "######", regExpPattern: r"^(\d{6})$"),
          regionalBlocs: const [BlocCEFTA()],
        );
}

/// A class that represents the South Sudan country.
class CountrySsd extends WorldCountry {
  /// Creates a instance of [CountrySsd] (South Sudan country).
  ///
  /// ISO 3166-1 Alpha-3 code: "SSD", ISO 3166-1 Alpha-2 code: "SS".
  const CountrySsd()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Republic of South Sudan",
            common: "South Sudan",
          ),
          namesNative: const [
            CountryName(
              language: LangEng(),
              official: "Republic of South Sudan",
              common: "South Sudan",
            ),
          ],
          tld: const [".ss"],
          code: "SSD",
          codeNumeric: "728",
          codeShort: "SS",
          cioc: "SSD",
          independent: true,
          unMember: true,
          currencies: const [FiatSsp()],
          idd: const Idd(root: 2, suffixes: [11]),
          altSpellings: const ["SS"],
          continent: const Africa(),
          subregion: const MiddleAfrica(),
          languages: const [LangEng()],
          translations: ssdCountryTranslations,
          latLng: const LatLng(7, 30),
          landlocked: true,
          bordersCodes: const ["Caf", "Cod", "Eth", "Ken", "Sdn", "Uga"],
          areaMetric: 619745,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "South Sudanese",
              male: "South Sudanese",
            ),
            Demonyms(
              language: LangFra(),
              female: "Sud-Soudanaise",
              male: "Sud-Soudanais",
            ),
          ],
          emoji: "🇸🇸",
          maps: const Maps(
            googleMaps: "Zm1AYCXb9HSNF1P27",
            openStreetMaps: "relation/1656678",
          ),
          population: 11193729,
          gini: const Gini(year: 2016, coefficient: 44.1),
          fifa: "SSD",
          car: const Car(),
          timezones: const ["UTC+03:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.sunday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Juba"),
            latLng: LatLng(4.85, 31.62),
          ),
          postalCode: null,
          regionalBlocs: const [BlocAU()],
        );
}

/// A class that represents the São Tomé and Príncipe country.
class CountryStp extends WorldCountry {
  /// Creates a instance of [CountryStp] (São Tomé and Príncipe country).
  ///
  /// ISO 3166-1 Alpha-3 code: "STP", ISO 3166-1 Alpha-2 code: "ST".
  const CountryStp()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Democratic Republic of São Tomé and Príncipe",
            common: "São Tomé and Príncipe",
          ),
          namesNative: const [
            CountryName(
              language: LangPor(),
              official: "República Democrática do São Tomé e Príncipe",
              common: "São Tomé e Príncipe",
            ),
          ],
          tld: const [".st"],
          code: "STP",
          codeNumeric: "678",
          codeShort: "ST",
          cioc: "STP",
          independent: true,
          unMember: true,
          currencies: const [FiatStn()],
          idd: const Idd(root: 2, suffixes: [39]),
          altSpellings: const [
            "ST",
            "Democratic Republic of São Tomé and Príncipe",
            "Sao Tome and Principe",
            "República Democrática de São Tomé e Príncipe",
          ],
          continent: const Africa(),
          subregion: const MiddleAfrica(),
          languages: const [LangPor()],
          translations: stpCountryTranslations,
          latLng: const LatLng(1, 7),
          landlocked: false,
          bordersCodes: null,
          areaMetric: 964,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Sao Tomean",
              male: "Sao Tomean",
            ),
            Demonyms(
              language: LangFra(),
              female: "Santoméenne",
              male: "Santoméen",
            ),
          ],
          emoji: "🇸🇹",
          maps: const Maps(
            googleMaps: "9EUppm13RtPX9oF46",
            openStreetMaps: "relation/535880",
          ),
          population: 219161,
          gini: const Gini(year: 2017, coefficient: 56.3),
          fifa: "STP",
          car: const Car(sign: "STP"),
          timezones: const ["UTC+00:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("São Tomé"),
            latLng: LatLng(0.34, 6.73),
          ),
          postalCode: null,
          regionalBlocs: const [BlocAU()],
        );
}

/// A class that represents the Suriname country.
class CountrySur extends WorldCountry {
  /// Creates a instance of [CountrySur] (Suriname country).
  ///
  /// ISO 3166-1 Alpha-3 code: "SUR", ISO 3166-1 Alpha-2 code: "SR".
  const CountrySur()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Republic of Suriname",
            common: "Suriname",
          ),
          namesNative: const [
            CountryName(
              language: LangNld(),
              official: "Republiek Suriname",
              common: "Suriname",
            ),
          ],
          tld: const [".sr"],
          code: "SUR",
          codeNumeric: "740",
          codeShort: "SR",
          cioc: "SUR",
          independent: true,
          unMember: true,
          currencies: const [FiatSrd()],
          idd: const Idd(root: 5, suffixes: [97]),
          altSpellings: const [
            "SR",
            "Sarnam",
            "Sranangron",
            "Republic of Suriname",
            "Republiek Suriname",
          ],
          continent: const Americas(),
          subregion: const SouthAmerica(),
          languages: const [LangNld()],
          translations: surCountryTranslations,
          latLng: const LatLng(4, -56),
          landlocked: false,
          bordersCodes: const ["Bra", "Guf", "Guy"],
          areaMetric: 163820,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Surinamer",
              male: "Surinamer",
            ),
            Demonyms(
              language: LangFra(),
              female: "Surinamaise",
              male: "Surinamais",
            ),
          ],
          emoji: "🇸🇷",
          maps: const Maps(
            googleMaps: "iy7TuQLSi4qgoBoG7",
            openStreetMaps: "relation/287082",
          ),
          population: 586634,
          gini: const Gini(year: 1999, coefficient: 57.9),
          fifa: "SUR",
          car: const Car(sign: "SME", isRightSide: false),
          timezones: const ["UTC-03:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Paramaribo"),
            latLng: LatLng(5.83, -55.17),
          ),
          postalCode: null,
          regionalBlocs: const [BlocCARICOM(), BlocUSAN()],
        );
}

/// A class that represents the Slovakia country.
class CountrySvk extends WorldCountry {
  /// Creates a instance of [CountrySvk] (Slovakia country).
  ///
  /// ISO 3166-1 Alpha-3 code: "SVK", ISO 3166-1 Alpha-2 code: "SK".
  const CountrySvk()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Slovak Republic",
            common: "Slovakia",
          ),
          namesNative: const [
            CountryName(
              language: LangSlk(),
              official: "Slovenská republika",
              common: "Slovensko",
            ),
          ],
          tld: const [".sk"],
          code: "SVK",
          codeNumeric: "703",
          codeShort: "SK",
          cioc: "SVK",
          independent: true,
          unMember: true,
          currencies: const [FiatEur()],
          idd: const Idd(root: 4, suffixes: [21]),
          altSpellings: const [
            "SK",
            "Slovak Republic",
            "Slovenská republika",
          ],
          continent: const Europe(),
          subregion: const CentralEurope(),
          languages: const [LangSlk()],
          translations: svkCountryTranslations,
          latLng: const LatLng(48.66666666, 19.5),
          landlocked: true,
          bordersCodes: const ["Aut", "Cze", "Hun", "Pol", "Ukr"],
          areaMetric: 49037,
          demonyms: const [
            Demonyms(language: LangEng(), female: "Slovak", male: "Slovak"),
            Demonyms(
              language: LangFra(),
              female: "Slovaque",
              male: "Slovaque",
            ),
          ],
          emoji: "🇸🇰",
          maps: const Maps(
            googleMaps: "uNSH2wW4bLoZVYJj7",
            openStreetMaps: "relation/14296",
          ),
          population: 5458827,
          gini: const Gini(year: 2018, coefficient: 25),
          fifa: "SVK",
          car: const Car(sign: "SK"),
          timezones: const ["UTC+01:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Bratislava"),
            latLng: LatLng(48.15, 17.12),
          ),
          postalCode: const PostalCode(format: "###  ##"),
          regionalBlocs: const [BlocEU()],
        );
}

/// A class that represents the Slovenia country.
class CountrySvn extends WorldCountry {
  /// Creates a instance of [CountrySvn] (Slovenia country).
  ///
  /// ISO 3166-1 Alpha-3 code: "SVN", ISO 3166-1 Alpha-2 code: "SI".
  const CountrySvn()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Republic of Slovenia",
            common: "Slovenia",
          ),
          namesNative: const [
            CountryName(
              language: LangSlv(),
              official: "Republika Slovenija",
              common: "Slovenija",
            ),
          ],
          tld: const [".si"],
          code: "SVN",
          codeNumeric: "705",
          codeShort: "SI",
          cioc: "SLO",
          independent: true,
          unMember: true,
          currencies: const [FiatEur()],
          idd: const Idd(root: 3, suffixes: [86]),
          altSpellings: const [
            "SI",
            "Republic of Slovenia",
            "Republika Slovenija",
          ],
          continent: const Europe(),
          subregion: const CentralEurope(),
          languages: const [LangSlv()],
          translations: svnCountryTranslations,
          latLng: const LatLng(46.11666666, 14.81666666),
          landlocked: false,
          bordersCodes: const ["Aut", "Hrv", "Ita", "Hun"],
          areaMetric: 20273,
          demonyms: const [
            Demonyms(language: LangEng(), female: "Slovene", male: "Slovene"),
            Demonyms(language: LangFra(), female: "Slovène", male: "Slovène"),
          ],
          emoji: "🇸🇮",
          maps: const Maps(
            googleMaps: "7zgFmswcCJh5L5D49",
            openStreetMaps: "relation/218657",
          ),
          population: 2100126,
          gini: const Gini(year: 2018, coefficient: 24.6),
          fifa: "SVN",
          car: const Car(sign: "SLO"),
          timezones: const ["UTC+01:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Ljubljana"),
            latLng: LatLng(46.05, 14.52),
          ),
          postalCode: const PostalCode(
            format: "SI- ####",
            regExpPattern: r"^(?:SI)*(\d{4})$",
          ),
          regionalBlocs: const [BlocEU()],
        );
}

/// A class that represents the Sweden country.
class CountrySwe extends WorldCountry {
  /// Creates a instance of [CountrySwe] (Sweden country).
  ///
  /// ISO 3166-1 Alpha-3 code: "SWE", ISO 3166-1 Alpha-2 code: "SE".
  const CountrySwe()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Kingdom of Sweden",
            common: "Sweden",
          ),
          namesNative: const [
            CountryName(
              language: LangSwe(),
              official: "Konungariket Sverige",
              common: "Sverige",
            ),
          ],
          tld: const [".se"],
          code: "SWE",
          codeNumeric: "752",
          codeShort: "SE",
          cioc: "SWE",
          independent: true,
          unMember: true,
          currencies: const [FiatSek()],
          idd: const Idd(root: 4, suffixes: [6]),
          altSpellings: const [
            "SE",
            "Kingdom of Sweden",
            "Konungariket Sverige",
          ],
          continent: const Europe(),
          subregion: const NorthernEurope(),
          languages: const [LangSwe()],
          translations: sweCountryTranslations,
          latLng: const LatLng(62, 15),
          landlocked: false,
          bordersCodes: const ["Fin", "Nor"],
          areaMetric: 450295,
          demonyms: const [
            Demonyms(language: LangEng(), female: "Swedish", male: "Swedish"),
            Demonyms(language: LangFra(), female: "Suédoise", male: "Suédois"),
          ],
          emoji: "🇸🇪",
          maps: const Maps(
            googleMaps: "iqygE491ADVgnBW39",
            openStreetMaps: "relation/52822",
          ),
          population: 10353442,
          gini: const Gini(year: 2018, coefficient: 30),
          fifa: "SWE",
          car: const Car(sign: "S"),
          timezones: const ["UTC+01:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Stockholm"),
            latLng: LatLng(59.33, 18.05),
          ),
          postalCode: const PostalCode(
            format: "SE-### ##",
            regExpPattern: r"^(?:SE)*(\d{5})$",
          ),
          regionalBlocs: const [BlocEU()],
        );
}

/// A class that represents the Eswatini country.
class CountrySwz extends WorldCountry {
  /// Creates a instance of [CountrySwz] (Eswatini country).
  ///
  /// ISO 3166-1 Alpha-3 code: "SWZ", ISO 3166-1 Alpha-2 code: "SZ".
  const CountrySwz()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Kingdom of Eswatini",
            common: "Eswatini",
          ),
          namesNative: const [
            CountryName(
              language: LangEng(),
              official: "Kingdom of Eswatini",
              common: "Eswatini",
            ),
            CountryName(
              language: LangSsw(),
              official: "Umbuso weSwatini",
              common: "eSwatini",
            ),
          ],
          tld: const [".sz"],
          code: "SWZ",
          codeNumeric: "748",
          codeShort: "SZ",
          cioc: "SWZ",
          independent: true,
          unMember: true,
          currencies: const [FiatSzl(), FiatZar()],
          idd: const Idd(root: 2, suffixes: [68]),
          altSpellings: const [
            "SZ",
            "Swaziland",
            "weSwatini",
            "Swatini",
            "Ngwane",
            "Kingdom of Eswatini",
            "Umbuso weSwatini",
          ],
          continent: const Africa(),
          subregion: const SouthernAfrica(),
          languages: const [LangEng(), LangSsw()],
          translations: swzCountryTranslations,
          latLng: const LatLng(-26.5, 31.5),
          landlocked: true,
          bordersCodes: const ["Moz", "Zaf"],
          areaMetric: 17364,
          demonyms: const [
            Demonyms(language: LangEng(), female: "Swazi", male: "Swazi"),
            Demonyms(language: LangFra(), female: "Swazie", male: "Swazie"),
          ],
          emoji: "🇸🇿",
          maps: const Maps(
            googleMaps: "cUY79eqQihFSE8hV6",
            openStreetMaps: "relation/88210",
          ),
          population: 1160164,
          gini: const Gini(year: 2016, coefficient: 54.6),
          fifa: "SWZ",
          car: const Car(sign: "SD", isRightSide: false),
          timezones: const ["UTC+02:00"],
          hasCoatOfArms: false,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Mbabane"),
            latLng: LatLng(-26.32, 31.13),
          ),
          postalCode: const PostalCode(
            format: "@###",
            regExpPattern: r"^([A-Z]\d{3})$",
          ),
          regionalBlocs: const [BlocAU()],
        );
}

/// A class that represents the Sint Maarten country.
class CountrySxm extends WorldCountry {
  /// Creates a instance of [CountrySxm] (Sint Maarten country).
  ///
  /// ISO 3166-1 Alpha-3 code: "SXM", ISO 3166-1 Alpha-2 code: "SX".
  const CountrySxm()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Sint Maarten",
            common: "Sint Maarten",
          ),
          namesNative: const [
            CountryName(
              language: LangEng(),
              official: "Sint Maarten",
              common: "Sint Maarten",
            ),
            CountryName(
              language: LangFra(),
              official: "Saint-Martin",
              common: "Saint-Martin",
            ),
            CountryName(
              language: LangNld(),
              official: "Sint Maarten",
              common: "Sint Maarten",
            ),
          ],
          tld: const [".sx"],
          code: "SXM",
          codeNumeric: "534",
          codeShort: "SX",
          cioc: null,
          independent: false,
          unMember: false,
          currencies: const [FiatAng()],
          idd: const Idd(root: 1, suffixes: [721]),
          altSpellings: const ["SX", "Sint Maarten (Dutch part)"],
          continent: const Americas(),
          subregion: const Caribbean(),
          languages: const [LangEng(), LangFra(), LangNld()],
          translations: sxmCountryTranslations,
          latLng: const LatLng(18.033333, -63.05),
          landlocked: false,
          bordersCodes: const ["Maf"],
          areaMetric: 34,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "St. Maartener",
              male: "St. Maartener",
            ),
            Demonyms(
              language: LangFra(),
              female: "Saint-Martinoise",
              male: "Saint-Martinois",
            ),
          ],
          emoji: "🇸🇽",
          maps: const Maps(
            googleMaps: "DjvcESy1a1oGEZuNA",
            openStreetMaps: "relation/1231790",
          ),
          population: 40812,
          gini: null,
          fifa: null,
          car: const Car(sign: "SX"),
          timezones: const ["UTC-04:00"],
          hasCoatOfArms: false,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Philipsburg"),
            latLng: LatLng(18.02, -63.03),
          ),
          postalCode: null,
          regionalBlocs: null,
        );
}

/// A class that represents the Seychelles country.
class CountrySyc extends WorldCountry {
  /// Creates a instance of [CountrySyc] (Seychelles country).
  ///
  /// ISO 3166-1 Alpha-3 code: "SYC", ISO 3166-1 Alpha-2 code: "SC".
  const CountrySyc()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Republic of Seychelles",
            common: "Seychelles",
          ),
          namesNative: const [
            CountryName(
              language: LangEng(),
              official: "Republic of Seychelles",
              common: "Seychelles",
            ),
            CountryName(
              language: LangFra(),
              official: "République des Seychelles",
              common: "Seychelles",
            ),
          ],
          tld: const [".sc"],
          code: "SYC",
          codeNumeric: "690",
          codeShort: "SC",
          cioc: "SEY",
          independent: true,
          unMember: true,
          currencies: const [FiatScr()],
          idd: const Idd(root: 2, suffixes: [48]),
          altSpellings: const [
            "SC",
            "Republic of Seychelles",
            "Repiblik Sesel",
            "République des Seychelles",
          ],
          continent: const Africa(),
          subregion: const EasternAfrica(),
          languages: const [LangEng(), LangFra()],
          translations: sycCountryTranslations,
          latLng: const LatLng(-4.58333333, 55.66666666),
          landlocked: false,
          bordersCodes: null,
          areaMetric: 452,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Seychellois",
              male: "Seychellois",
            ),
            Demonyms(
              language: LangFra(),
              female: "Seychelloise",
              male: "Seychellois",
            ),
          ],
          emoji: "🇸🇨",
          maps: const Maps(
            googleMaps: "aqCcy2TKh5TV5MAX8",
            openStreetMaps: "relation/536765",
          ),
          population: 98462,
          gini: const Gini(year: 2018, coefficient: 32.1),
          fifa: "SEY",
          car: const Car(sign: "SY", isRightSide: false),
          timezones: const ["UTC+04:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Victoria"),
            latLng: LatLng(-4.62, 55.45),
          ),
          postalCode: null,
          regionalBlocs: const [BlocAU()],
        );
}

/// A class that represents the Syria country.
class CountrySyr extends WorldCountry {
  /// Creates a instance of [CountrySyr] (Syria country).
  ///
  /// ISO 3166-1 Alpha-3 code: "SYR", ISO 3166-1 Alpha-2 code: "SY".
  const CountrySyr()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Syrian Arab Republic",
            common: "Syria",
          ),
          namesNative: const [
            CountryName(
              language: LangAra(),
              official: "الجمهورية العربية السورية",
              common: "سوريا",
            ),
          ],
          tld: const [".sy", "سوريا."],
          code: "SYR",
          codeNumeric: "760",
          codeShort: "SY",
          cioc: "SYR",
          independent: true,
          unMember: true,
          currencies: const [FiatSyp()],
          idd: const Idd(root: 9, suffixes: [63]),
          altSpellings: const [
            "SY",
            "Syrian Arab Republic",
            "Al-Jumhūrīyah Al-ʻArabīyah As-Sūrīyah",
          ],
          continent: const Asia(),
          subregion: const WesternAsia(),
          languages: const [LangAra()],
          translations: syrCountryTranslations,
          latLng: const LatLng(35, 38),
          landlocked: false,
          bordersCodes: const ["Irq", "Isr", "Jor", "Lbn", "Tur"],
          areaMetric: 185180,
          demonyms: const [
            Demonyms(language: LangEng(), female: "Syrian", male: "Syrian"),
            Demonyms(language: LangFra(), female: "Syrienne", male: "Syrien"),
          ],
          emoji: "🇸🇾",
          maps: const Maps(
            googleMaps: "Xe3VnFbwdb4nv2SM9",
            openStreetMaps: "relation/184840",
          ),
          population: 17500657,
          gini: const Gini(year: 2003, coefficient: 37.5),
          fifa: "SYR",
          car: const Car(sign: "SYR"),
          timezones: const ["UTC+02:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Damascus"),
            latLng: LatLng(33.5, 36.3),
          ),
          postalCode: null,
          regionalBlocs: const [BlocAL()],
        );
}

/// A class that represents the Turks and Caicos Islands country.
class CountryTca extends WorldCountry {
  /// Creates a instance of [CountryTca] (Turks and Caicos Islands country).
  ///
  /// ISO 3166-1 Alpha-3 code: "TCA", ISO 3166-1 Alpha-2 code: "TC".
  const CountryTca()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Turks and Caicos Islands",
            common: "Turks and Caicos Islands",
          ),
          namesNative: const [
            CountryName(
              language: LangEng(),
              official: "Turks and Caicos Islands",
              common: "Turks and Caicos Islands",
            ),
          ],
          tld: const [".tc"],
          code: "TCA",
          codeNumeric: "796",
          codeShort: "TC",
          cioc: null,
          independent: false,
          unMember: false,
          currencies: const [FiatUsd()],
          idd: const Idd(root: 1, suffixes: [649]),
          altSpellings: const ["TC"],
          continent: const Americas(),
          subregion: const Caribbean(),
          languages: const [LangEng()],
          translations: tcaCountryTranslations,
          latLng: const LatLng(21.75, -71.58333333),
          landlocked: false,
          bordersCodes: null,
          areaMetric: 948,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Turks and Caicos Islander",
              male: "Turks and Caicos Islander",
            ),
          ],
          emoji: "🇹🇨",
          maps: const Maps(
            googleMaps: "R8VUDQfwZiFtvmyn8",
            openStreetMaps: "relation/547479",
          ),
          population: 38718,
          gini: null,
          fifa: "TCA",
          car: const Car(sign: "GB", isRightSide: false),
          timezones: const ["UTC-04:00"],
          hasCoatOfArms: false,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Cockburn Town"),
            latLng: LatLng(21.46, -71.14),
          ),
          postalCode: const PostalCode(
            format: "TKCA 1ZZ",
            regExpPattern: r"^(TKCA 1ZZ)$",
          ),
          regionalBlocs: null,
        );
}

/// A class that represents the Chad country.
class CountryTcd extends WorldCountry {
  /// Creates a instance of [CountryTcd] (Chad country).
  ///
  /// ISO 3166-1 Alpha-3 code: "TCD", ISO 3166-1 Alpha-2 code: "TD".
  const CountryTcd()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Republic of Chad",
            common: "Chad",
          ),
          namesNative: const [
            CountryName(
              language: LangAra(),
              official: "جمهورية تشاد",
              common: "تشاد‎",
            ),
            CountryName(
              language: LangFra(),
              official: "République du Tchad",
              common: "Tchad",
            ),
          ],
          tld: const [".td"],
          code: "TCD",
          codeNumeric: "148",
          codeShort: "TD",
          cioc: "CHA",
          independent: true,
          unMember: true,
          currencies: const [FiatXaf()],
          idd: const Idd(root: 2, suffixes: [35]),
          altSpellings: const [
            "TD",
            "Tchad",
            "Republic of Chad",
            "République du Tchad",
          ],
          continent: const Africa(),
          subregion: const MiddleAfrica(),
          languages: const [LangAra(), LangFra()],
          translations: tcdCountryTranslations,
          latLng: const LatLng(15, 19),
          landlocked: true,
          bordersCodes: const ["Cmr", "Caf", "Lby", "Ner", "Nga", "Sdn"],
          areaMetric: 1284000,
          demonyms: const [
            Demonyms(language: LangEng(), female: "Chadian", male: "Chadian"),
            Demonyms(
              language: LangFra(),
              female: "Tchadienne",
              male: "Tchadien",
            ),
          ],
          emoji: "🇹🇩",
          maps: const Maps(
            googleMaps: "ziUdAZ8skuNfx5Hx7",
            openStreetMaps: "relation/2361304",
          ),
          population: 16425859,
          gini: const Gini(year: 2011, coefficient: 43.3),
          fifa: "CHA",
          car: const Car(sign: "TCH/TD"),
          timezones: const ["UTC+01:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("N'Djamena"),
            latLng: LatLng(12.1, 15.03),
          ),
          postalCode: null,
          regionalBlocs: null,
        );
}

/// A class that represents the Togo country.
class CountryTgo extends WorldCountry {
  /// Creates a instance of [CountryTgo] (Togo country).
  ///
  /// ISO 3166-1 Alpha-3 code: "TGO", ISO 3166-1 Alpha-2 code: "TG".
  const CountryTgo()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Togolese Republic",
            common: "Togo",
          ),
          namesNative: const [
            CountryName(
              language: LangFra(),
              official: "République togolaise",
              common: "Togo",
            ),
          ],
          tld: const [".tg"],
          code: "TGO",
          codeNumeric: "768",
          codeShort: "TG",
          cioc: "TOG",
          independent: true,
          unMember: true,
          currencies: const [FiatXof()],
          idd: const Idd(root: 2, suffixes: [28]),
          altSpellings: const [
            "TG",
            "Togolese",
            "Togolese Republic",
            "République Togolaise",
          ],
          continent: const Africa(),
          subregion: const WesternAfrica(),
          languages: const [LangFra()],
          translations: tgoCountryTranslations,
          latLng: const LatLng(8, 1.16666666),
          landlocked: false,
          bordersCodes: const ["Ben", "Bfa", "Gha"],
          areaMetric: 56785,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Togolese",
              male: "Togolese",
            ),
            Demonyms(
              language: LangFra(),
              female: "Togolaise",
              male: "Togolais",
            ),
          ],
          emoji: "🇹🇬",
          maps: const Maps(
            googleMaps: "jzAa9feXuXPrKVb89",
            openStreetMaps: "relation/192782",
          ),
          population: 8278737,
          gini: const Gini(year: 2015, coefficient: 43.1),
          fifa: "TOG",
          car: const Car(sign: "TG"),
          timezones: const ["UTC+00:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Lomé"),
            latLng: LatLng(6.14, 1.21),
          ),
          postalCode: null,
          regionalBlocs: null,
        );
}

/// A class that represents the Thailand country.
class CountryTha extends WorldCountry {
  /// Creates a instance of [CountryTha] (Thailand country).
  ///
  /// ISO 3166-1 Alpha-3 code: "THA", ISO 3166-1 Alpha-2 code: "TH".
  const CountryTha()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Kingdom of Thailand",
            common: "Thailand",
          ),
          namesNative: const [
            CountryName(
              language: LangTha(),
              official: "ราชอาณาจักรไทย",
              common: "ประเทศไทย",
            ),
          ],
          tld: const [".th", ".ไทย"],
          code: "THA",
          codeNumeric: "764",
          codeShort: "TH",
          cioc: "THA",
          independent: true,
          unMember: true,
          currencies: const [FiatThb()],
          idd: const Idd(root: 6, suffixes: [6]),
          altSpellings: const [
            "TH",
            "Prathet",
            "Thai",
            "Kingdom of Thailand",
            "ราชอาณาจักรไทย",
            "Ratcha Anachak Thai",
          ],
          continent: const Asia(),
          subregion: const SouthEasternAsia(),
          languages: const [LangTha()],
          translations: thaCountryTranslations,
          latLng: const LatLng(15, 100),
          landlocked: false,
          bordersCodes: const ["Mmr", "Khm", "Lao", "Mys"],
          areaMetric: 513120,
          demonyms: const [
            Demonyms(language: LangEng(), female: "Thai", male: "Thai"),
            Demonyms(
              language: LangFra(),
              female: "Thaïlandaise",
              male: "Thaïlandais",
            ),
          ],
          emoji: "🇹🇭",
          maps: const Maps(
            googleMaps: "qeU6uqsfW4nCCwzw9",
            openStreetMaps: "relation/2067731",
          ),
          population: 69799978,
          gini: const Gini(year: 2019, coefficient: 34.9),
          fifa: "THA",
          car: const Car(sign: "T", isRightSide: false),
          timezones: const ["UTC+07:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Bangkok"),
            latLng: LatLng(13.75, 100.52),
          ),
          postalCode: const PostalCode(),
          regionalBlocs: const [BlocAU()],
        );
}

/// A class that represents the Tajikistan country.
class CountryTjk extends WorldCountry {
  /// Creates a instance of [CountryTjk] (Tajikistan country).
  ///
  /// ISO 3166-1 Alpha-3 code: "TJK", ISO 3166-1 Alpha-2 code: "TJ".
  const CountryTjk()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Republic of Tajikistan",
            common: "Tajikistan",
          ),
          namesNative: const [
            CountryName(
              language: LangRus(),
              official: "Республика Таджикистан",
              common: "Таджикистан",
            ),
            CountryName(
              language: LangTgk(),
              official: "Ҷумҳурии Тоҷикистон",
              common: "Тоҷикистон",
            ),
          ],
          tld: const [".tj"],
          code: "TJK",
          codeNumeric: "762",
          codeShort: "TJ",
          cioc: "TJK",
          independent: true,
          unMember: true,
          currencies: const [FiatTjs()],
          idd: const Idd(root: 9, suffixes: [92]),
          altSpellings: const [
            "TJ",
            "Toçikiston",
            "Republic of Tajikistan",
            "Ҷумҳурии Тоҷикистон",
            "Çumhuriyi Toçikiston",
          ],
          continent: const Asia(),
          subregion: const CentralAsia(),
          languages: const [LangRus(), LangTgk()],
          translations: tjkCountryTranslations,
          latLng: const LatLng(39, 71),
          landlocked: true,
          bordersCodes: const ["Afg", "Chn", "Kgz", "Uzb"],
          areaMetric: 143100,
          demonyms: const [
            Demonyms(language: LangEng(), female: "Tadzhik", male: "Tadzhik"),
            Demonyms(language: LangFra(), female: "Tadjike", male: "Tadjike"),
          ],
          emoji: "🇹🇯",
          maps: const Maps(
            googleMaps: "8rQgW88jEXijhVb58",
            openStreetMaps: "relation/214626",
          ),
          population: 9537642,
          gini: const Gini(year: 2015, coefficient: 34),
          fifa: "TJK",
          car: const Car(sign: "TJ"),
          timezones: const ["UTC+05:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Dushanbe"),
            latLng: LatLng(38.55, 68.77),
          ),
          postalCode:
              const PostalCode(format: "######", regExpPattern: r"^(\d{6})$"),
          regionalBlocs: null,
        );
}

/// A class that represents the Tokelau country.
class CountryTkl extends WorldCountry {
  /// Creates a instance of [CountryTkl] (Tokelau country).
  ///
  /// ISO 3166-1 Alpha-3 code: "TKL", ISO 3166-1 Alpha-2 code: "TK".
  const CountryTkl()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Tokelau",
            common: "Tokelau",
          ),
          namesNative: const [
            CountryName(
              language: LangEng(),
              official: "Tokelau",
              common: "Tokelau",
            ),
            CountryName(
              language: LangSmo(),
              official: "Tokelau",
              common: "Tokelau",
            ),
          ],
          tld: const [".tk"],
          code: "TKL",
          codeNumeric: "772",
          codeShort: "TK",
          cioc: null,
          independent: false,
          unMember: false,
          currencies: const [FiatNzd()],
          idd: const Idd(root: 6, suffixes: [90]),
          altSpellings: const ["TK"],
          continent: const Oceania(),
          subregion: const Polynesia(),
          languages: const [LangEng(), LangSmo()],
          translations: tklCountryTranslations,
          latLng: const LatLng(-9, -172),
          landlocked: false,
          bordersCodes: null,
          areaMetric: 12,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Tokelauan",
              male: "Tokelauan",
            ),
          ],
          emoji: "🇹🇰",
          maps: const Maps(
            googleMaps: "Ap5qN8qien6pT9UN6",
            openStreetMaps: "relation/2186600",
          ),
          population: 1411,
          gini: null,
          fifa: null,
          car: const Car(isRightSide: false),
          timezones: const ["UTC+13:00"],
          hasCoatOfArms: false,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Fakaofo"),
            latLng: LatLng(-9.38, -171.22),
          ),
          postalCode: null,
          regionalBlocs: null,
        );
}

/// A class that represents the Turkmenistan country.
class CountryTkm extends WorldCountry {
  /// Creates a instance of [CountryTkm] (Turkmenistan country).
  ///
  /// ISO 3166-1 Alpha-3 code: "TKM", ISO 3166-1 Alpha-2 code: "TM".
  const CountryTkm()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Turkmenistan",
            common: "Turkmenistan",
          ),
          namesNative: const [
            CountryName(
              language: LangRus(),
              official: "Туркменистан",
              common: "Туркмения",
            ),
            CountryName(
              language: LangTuk(),
              official: "Türkmenistan",
              common: "Türkmenistan",
            ),
          ],
          tld: const [".tm"],
          code: "TKM",
          codeNumeric: "795",
          codeShort: "TM",
          cioc: "TKM",
          independent: true,
          unMember: true,
          currencies: const [FiatTmt()],
          idd: const Idd(root: 9, suffixes: [93]),
          altSpellings: const ["TM"],
          continent: const Asia(),
          subregion: const CentralAsia(),
          languages: const [LangRus(), LangTuk()],
          translations: tkmCountryTranslations,
          latLng: const LatLng(40, 60),
          landlocked: true,
          bordersCodes: const ["Afg", "Irn", "Kaz", "Uzb"],
          areaMetric: 488100,
          demonyms: const [
            Demonyms(language: LangEng(), female: "Turkmen", male: "Turkmen"),
            Demonyms(
              language: LangFra(),
              female: "Turkmène",
              male: "Turkmène",
            ),
          ],
          emoji: "🇹🇲",
          maps: const Maps(
            googleMaps: "cgfUcaQHSWKuqeKk9",
            openStreetMaps: "relation/223026",
          ),
          population: 6031187,
          gini: const Gini(year: 1998, coefficient: 40.8),
          fifa: "TKM",
          car: const Car(sign: "TM"),
          timezones: const ["UTC+05:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Ashgabat"),
            latLng: LatLng(37.95, 58.38),
          ),
          postalCode:
              const PostalCode(format: "######", regExpPattern: r"^(\d{6})$"),
          regionalBlocs: null,
        );
}

/// A class that represents the Timor-Leste country.
class CountryTls extends WorldCountry {
  /// Creates a instance of [CountryTls] (Timor-Leste country).
  ///
  /// ISO 3166-1 Alpha-3 code: "TLS", ISO 3166-1 Alpha-2 code: "TL".
  const CountryTls()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Democratic Republic of Timor-Leste",
            common: "Timor-Leste",
          ),
          namesNative: const [
            CountryName(
              language: LangPor(),
              official: "República Democrática de Timor-Leste",
              common: "Timor-Leste",
            ),
          ],
          tld: const [".tl"],
          code: "TLS",
          codeNumeric: "626",
          codeShort: "TL",
          cioc: "TLS",
          independent: true,
          unMember: true,
          currencies: const [FiatUsd()],
          idd: const Idd(root: 6, suffixes: [70]),
          altSpellings: const [
            "TL",
            "East Timor",
            "Democratic Republic of Timor-Leste",
            "República Democrática de Timor-Leste",
            "Repúblika Demokrátika Timór-Leste",
            "Timór Lorosa'e",
            "Timor Lorosae",
          ],
          continent: const Asia(),
          subregion: const SouthEasternAsia(),
          languages: const [LangPor()],
          translations: tlsCountryTranslations,
          latLng: const LatLng(-8.83333333, 125.91666666),
          landlocked: false,
          bordersCodes: const ["Idn"],
          areaMetric: 14874,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "East Timorese",
              male: "East Timorese",
            ),
            Demonyms(
              language: LangFra(),
              female: "Est-timoraise",
              male: "Est-timorais",
            ),
          ],
          emoji: "🇹🇱",
          maps: const Maps(
            googleMaps: "sFqBC9zjgUXPR1iTA",
            openStreetMaps: "relation/305142",
          ),
          population: 1318442,
          gini: const Gini(year: 2014, coefficient: 28.7),
          fifa: "TLS",
          car: const Car(sign: "TL", isRightSide: false),
          timezones: const ["UTC+09:00"],
          hasCoatOfArms: false,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Dili"),
            latLng: LatLng(-8.58, 125.6),
          ),
          postalCode: null,
          regionalBlocs: null,
        );
}

/// A class that represents the Tonga country.
class CountryTon extends WorldCountry {
  /// Creates a instance of [CountryTon] (Tonga country).
  ///
  /// ISO 3166-1 Alpha-3 code: "TON", ISO 3166-1 Alpha-2 code: "TO".
  const CountryTon()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Kingdom of Tonga",
            common: "Tonga",
          ),
          namesNative: const [
            CountryName(
              language: LangEng(),
              official: "Kingdom of Tonga",
              common: "Tonga",
            ),
            CountryName(
              language: LangTon(),
              official: "Kingdom of Tonga",
              common: "Tonga",
            ),
          ],
          tld: const [".to"],
          code: "TON",
          codeNumeric: "776",
          codeShort: "TO",
          cioc: "TGA",
          independent: true,
          unMember: true,
          currencies: const [FiatTop()],
          idd: const Idd(root: 6, suffixes: [76]),
          altSpellings: const ["TO"],
          continent: const Oceania(),
          subregion: const Polynesia(),
          languages: const [LangEng(), LangTon()],
          translations: tonCountryTranslations,
          latLng: const LatLng(-20, -175),
          landlocked: false,
          bordersCodes: null,
          areaMetric: 747,
          demonyms: const [
            Demonyms(language: LangEng(), female: "Tongan", male: "Tongan"),
            Demonyms(
              language: LangFra(),
              female: "Tonguienne",
              male: "Tonguien",
            ),
          ],
          emoji: "🇹🇴",
          maps: const Maps(
            googleMaps: "p5YALBY2QdEzswRo7",
            openStreetMaps: "relation/2186665",
          ),
          population: 105697,
          gini: const Gini(year: 2015, coefficient: 37.6),
          fifa: "TGA",
          car: const Car(sign: "TO", isRightSide: false),
          timezones: const ["UTC+13:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Nuku'alofa"),
            latLng: LatLng(-21.13, -175.2),
          ),
          postalCode: null,
          regionalBlocs: null,
        );
}

/// A class that represents the Trinidad and Tobago country.
class CountryTto extends WorldCountry {
  /// Creates a instance of [CountryTto] (Trinidad and Tobago country).
  ///
  /// ISO 3166-1 Alpha-3 code: "TTO", ISO 3166-1 Alpha-2 code: "TT".
  const CountryTto()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Republic of Trinidad and Tobago",
            common: "Trinidad and Tobago",
          ),
          namesNative: const [
            CountryName(
              language: LangEng(),
              official: "Republic of Trinidad and Tobago",
              common: "Trinidad and Tobago",
            ),
          ],
          tld: const [".tt"],
          code: "TTO",
          codeNumeric: "780",
          codeShort: "TT",
          cioc: "TTO",
          independent: true,
          unMember: true,
          currencies: const [FiatTtd()],
          idd: const Idd(root: 1, suffixes: [868]),
          altSpellings: const ["TT", "Republic of Trinidad and Tobago"],
          continent: const Americas(),
          subregion: const Caribbean(),
          languages: const [LangEng()],
          translations: ttoCountryTranslations,
          latLng: const LatLng(10.6918, -61.2225),
          landlocked: false,
          bordersCodes: null,
          areaMetric: 5130,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Trinidadian",
              male: "Trinidadian",
            ),
            Demonyms(
              language: LangFra(),
              female: "Trinidadienne",
              male: "Trinidadien",
            ),
          ],
          emoji: "🇹🇹",
          maps: const Maps(
            googleMaps: "NrRfDEWoG8FGZqWY7",
            openStreetMaps: "relation/555717",
          ),
          population: 1399491,
          gini: const Gini(year: 1992, coefficient: 40.3),
          fifa: "TRI",
          car: const Car(sign: "TT", isRightSide: false),
          timezones: const ["UTC-04:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Port of Spain"),
            latLng: LatLng(10.65, -61.52),
          ),
          postalCode: null,
          regionalBlocs: const [BlocCARICOM()],
        );
}

/// A class that represents the Tunisia country.
class CountryTun extends WorldCountry {
  /// Creates a instance of [CountryTun] (Tunisia country).
  ///
  /// ISO 3166-1 Alpha-3 code: "TUN", ISO 3166-1 Alpha-2 code: "TN".
  const CountryTun()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Tunisian Republic",
            common: "Tunisia",
          ),
          namesNative: const [
            CountryName(
              language: LangAra(),
              official: "الجمهورية التونسية",
              common: "تونس",
            ),
          ],
          tld: const [".tn"],
          code: "TUN",
          codeNumeric: "788",
          codeShort: "TN",
          cioc: "TUN",
          independent: true,
          unMember: true,
          currencies: const [FiatTnd()],
          idd: const Idd(root: 2, suffixes: [16]),
          altSpellings: const [
            "TN",
            "Republic of Tunisia",
            "al-Jumhūriyyah at-Tūnisiyyah",
          ],
          continent: const Africa(),
          subregion: const NorthernAfrica(),
          languages: const [LangAra()],
          translations: tunCountryTranslations,
          latLng: const LatLng(34, 9),
          landlocked: false,
          bordersCodes: const ["Dza", "Lby"],
          areaMetric: 163610,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Tunisian",
              male: "Tunisian",
            ),
            Demonyms(
              language: LangFra(),
              female: "Tunisienne",
              male: "Tunisien",
            ),
          ],
          emoji: "🇹🇳",
          maps: const Maps(
            googleMaps: "KgUmpZdUuNRaougs8",
            openStreetMaps: "relation/192757",
          ),
          population: 11818618,
          gini: const Gini(year: 2015, coefficient: 32.8),
          fifa: "TUN",
          car: const Car(sign: "TN"),
          timezones: const ["UTC+01:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Tunis"),
            latLng: LatLng(36.8, 10.18),
          ),
          postalCode:
              const PostalCode(format: "####", regExpPattern: r"^(\d{4})$"),
          regionalBlocs: const [BlocAU(), BlocAL()],
        );
}

/// A class that represents the Turkey country.
class CountryTur extends WorldCountry {
  /// Creates a instance of [CountryTur] (Turkey country).
  ///
  /// ISO 3166-1 Alpha-3 code: "TUR", ISO 3166-1 Alpha-2 code: "TR".
  const CountryTur()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Republic of Turkey",
            common: "Turkey",
          ),
          namesNative: const [
            CountryName(
              language: LangTur(),
              official: "Türkiye Cumhuriyeti",
              common: "Türkiye",
            ),
          ],
          tld: const [".tr"],
          code: "TUR",
          codeNumeric: "792",
          codeShort: "TR",
          cioc: "TUR",
          independent: true,
          unMember: true,
          currencies: const [FiatTry()],
          idd: const Idd(root: 9, suffixes: [0]),
          altSpellings: const [
            "TR",
            "Turkiye",
            "Republic of Turkey",
            "Türkiye Cumhuriyeti",
          ],
          continent: const Asia(),
          subregion: const WesternAsia(),
          languages: const [LangTur()],
          translations: turCountryTranslations,
          latLng: const LatLng(39, 35),
          landlocked: false,
          bordersCodes: const [
            "Arm",
            "Aze",
            "Bgr",
            "Geo",
            "Grc",
            "Irn",
            "Irq",
            "Syr",
          ],
          areaMetric: 783562,
          demonyms: const [
            Demonyms(language: LangEng(), female: "Turkish", male: "Turkish"),
            Demonyms(language: LangFra(), female: "Turque", male: "Turc"),
          ],
          emoji: "🇹🇷",
          maps: const Maps(
            googleMaps: "dXFFraiUDfcB6Quk6",
            openStreetMaps: "relation/174737",
          ),
          population: 84339067,
          gini: const Gini(year: 2019, coefficient: 41.9),
          fifa: "TUR",
          car: const Car(sign: "TR"),
          timezones: const ["UTC+03:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Ankara"),
            latLng: LatLng(39.93, 32.87),
          ),
          postalCode: const PostalCode(),
          regionalBlocs: null,
        );
}

/// A class that represents the Tuvalu country.
class CountryTuv extends WorldCountry {
  /// Creates a instance of [CountryTuv] (Tuvalu country).
  ///
  /// ISO 3166-1 Alpha-3 code: "TUV", ISO 3166-1 Alpha-2 code: "TV".
  const CountryTuv()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Tuvalu",
            common: "Tuvalu",
          ),
          namesNative: const [
            CountryName(
              language: LangEng(),
              official: "Tuvalu",
              common: "Tuvalu",
            ),
          ],
          tld: const [".tv"],
          code: "TUV",
          codeNumeric: "798",
          codeShort: "TV",
          cioc: "TUV",
          independent: true,
          unMember: true,
          currencies: const [FiatAud()],
          idd: const Idd(root: 6, suffixes: [88]),
          altSpellings: const ["TV"],
          continent: const Oceania(),
          subregion: const Polynesia(),
          languages: const [LangEng()],
          translations: tuvCountryTranslations,
          latLng: const LatLng(-8, 178),
          landlocked: false,
          bordersCodes: null,
          areaMetric: 26,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Tuvaluan",
              male: "Tuvaluan",
            ),
            Demonyms(
              language: LangFra(),
              female: "Tuvaluane",
              male: "Tuvaluan",
            ),
          ],
          emoji: "🇹🇻",
          maps: const Maps(
            googleMaps: "LbuUxtkgm1dfN1Pn6",
            openStreetMaps: "relation/2177266",
          ),
          population: 11792,
          gini: const Gini(year: 2010, coefficient: 39.1),
          fifa: null,
          car: const Car(sign: "TUV", isRightSide: false),
          timezones: const ["UTC+12:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Funafuti"),
            latLng: LatLng(-8.52, 179.22),
          ),
          postalCode: null,
          regionalBlocs: null,
        );
}

/// A class that represents the Taiwan country.
class CountryTwn extends WorldCountry {
  /// Creates a instance of [CountryTwn] (Taiwan country).
  ///
  /// ISO 3166-1 Alpha-3 code: "TWN", ISO 3166-1 Alpha-2 code: "TW".
  const CountryTwn()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Republic of China (Taiwan)",
            common: "Taiwan",
          ),
          namesNative: const [
            CountryName(language: LangZho(), official: "中華民國", common: "台灣"),
          ],
          tld: const [".tw", ".台灣", ".台湾"],
          code: "TWN",
          codeNumeric: "158",
          codeShort: "TW",
          cioc: "TPE",
          independent: false,
          unMember: false,
          currencies: const [FiatTwd()],
          idd: const Idd(root: 8, suffixes: [86]),
          altSpellings: const [
            "TW",
            "Táiwān",
            "Republic of China",
            "中華民國",
            "Zhōnghuá Mínguó",
            "Chinese Taipei",
          ],
          continent: const Asia(),
          subregion: const EasternAsia(),
          languages: const [LangZho()],
          translations: twnCountryTranslations,
          latLng: const LatLng(23.5, 121),
          landlocked: false,
          bordersCodes: null,
          areaMetric: 36193,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Taiwanese",
              male: "Taiwanese",
            ),
            Demonyms(
              language: LangFra(),
              female: "Taïwanaise",
              male: "Taïwanais",
            ),
          ],
          emoji: "🇹🇼",
          maps: const Maps(
            googleMaps: "HgMKFQjNadF3Wa6B6",
            openStreetMaps: "relation/449220",
          ),
          population: 23503349,
          gini: null,
          fifa: "TPE",
          car: const Car(sign: "RC"),
          timezones: const ["UTC+08:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Taipei"),
            latLng: LatLng(25.03, 121.52),
          ),
          postalCode: const PostalCode(),
          regionalBlocs: null,
        );
}

/// A class that represents the Tanzania country.
class CountryTza extends WorldCountry {
  /// Creates a instance of [CountryTza] (Tanzania country).
  ///
  /// ISO 3166-1 Alpha-3 code: "TZA", ISO 3166-1 Alpha-2 code: "TZ".
  const CountryTza()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "United Republic of Tanzania",
            common: "Tanzania",
          ),
          namesNative: const [
            CountryName(
              language: LangEng(),
              official: "United Republic of Tanzania",
              common: "Tanzania",
            ),
            CountryName(
              language: LangSwa(),
              official: "Jamhuri ya Muungano wa Tanzania",
              common: "Tanzania",
            ),
          ],
          tld: const [".tz"],
          code: "TZA",
          codeNumeric: "834",
          codeShort: "TZ",
          cioc: "TAN",
          independent: true,
          unMember: true,
          currencies: const [FiatTzs()],
          idd: const Idd(root: 2, suffixes: [55]),
          altSpellings: const [
            "TZ",
            "Tanzania, United Republic of",
            "United Republic of Tanzania",
            "Jamhuri ya Muungano wa Tanzania",
          ],
          continent: const Africa(),
          subregion: const EasternAfrica(),
          languages: const [LangEng(), LangSwa()],
          translations: tzaCountryTranslations,
          latLng: const LatLng(-6, 35),
          landlocked: false,
          bordersCodes: const [
            "Bdi",
            "Cod",
            "Ken",
            "Mwi",
            "Moz",
            "Rwa",
            "Uga",
            "Zmb",
          ],
          areaMetric: 945087,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Tanzanian",
              male: "Tanzanian",
            ),
            Demonyms(
              language: LangFra(),
              female: "Tanzanienne",
              male: "Tanzanien",
            ),
          ],
          emoji: "🇹🇿",
          maps: const Maps(
            googleMaps: "NWYMqZYXte4zGZ2Q8",
            openStreetMaps: "relation/195270",
          ),
          population: 59734213,
          gini: const Gini(year: 2017, coefficient: 40.5),
          fifa: "TAN",
          car: const Car(sign: "EAT", isRightSide: false),
          timezones: const ["UTC+03:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Dodoma"),
            latLng: LatLng(-6.16, 35.75),
          ),
          postalCode: null,
          regionalBlocs: const [BlocAU()],
        );
}

/// A class that represents the Uganda country.
class CountryUga extends WorldCountry {
  /// Creates a instance of [CountryUga] (Uganda country).
  ///
  /// ISO 3166-1 Alpha-3 code: "UGA", ISO 3166-1 Alpha-2 code: "UG".
  const CountryUga()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Republic of Uganda",
            common: "Uganda",
          ),
          namesNative: const [
            CountryName(
              language: LangEng(),
              official: "Republic of Uganda",
              common: "Uganda",
            ),
            CountryName(
              language: LangSwa(),
              official: "Republic of Uganda",
              common: "Uganda",
            ),
          ],
          tld: const [".ug"],
          code: "UGA",
          codeNumeric: "800",
          codeShort: "UG",
          cioc: "UGA",
          independent: true,
          unMember: true,
          currencies: const [FiatUgx()],
          idd: const Idd(root: 2, suffixes: [56]),
          altSpellings: const [
            "UG",
            "Republic of Uganda",
            "Jamhuri ya Uganda",
          ],
          continent: const Africa(),
          subregion: const EasternAfrica(),
          languages: const [LangEng(), LangSwa()],
          translations: ugaCountryTranslations,
          latLng: const LatLng(1, 32),
          landlocked: true,
          bordersCodes: const ["Cod", "Ken", "Rwa", "Ssd", "Tza"],
          areaMetric: 241550,
          demonyms: const [
            Demonyms(language: LangEng(), female: "Ugandan", male: "Ugandan"),
            Demonyms(
              language: LangFra(),
              female: "Ougandaise",
              male: "Ougandais",
            ),
          ],
          emoji: "🇺🇬",
          maps: const Maps(
            googleMaps: "Y7812hFiGa8LD9N68",
            openStreetMaps: "relation/192796",
          ),
          population: 45741000,
          gini: const Gini(year: 2016, coefficient: 42.8),
          fifa: "UGA",
          car: const Car(sign: "EAU", isRightSide: false),
          timezones: const ["UTC+03:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Kampala"),
            latLng: LatLng(0.32, 32.55),
          ),
          postalCode: null,
          regionalBlocs: const [BlocAU()],
        );
}

/// A class that represents the Ukraine country.
class CountryUkr extends WorldCountry {
  /// Creates a instance of [CountryUkr] (Ukraine country).
  ///
  /// ISO 3166-1 Alpha-3 code: "UKR", ISO 3166-1 Alpha-2 code: "UA".
  const CountryUkr()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Ukraine",
            common: "Ukraine",
          ),
          namesNative: const [
            CountryName(
              language: LangUkr(),
              official: "Україна",
              common: "Україна",
            ),
          ],
          tld: const [".ua", ".укр"],
          code: "UKR",
          codeNumeric: "804",
          codeShort: "UA",
          cioc: "UKR",
          independent: true,
          unMember: true,
          currencies: const [FiatUah()],
          idd: const Idd(root: 3, suffixes: [80]),
          altSpellings: const ["UA", "Ukrayina", "Украина"],
          continent: const Europe(),
          subregion: const EasternEurope(),
          languages: const [LangUkr()],
          translations: ukrCountryTranslations,
          latLng: const LatLng(49, 32),
          landlocked: false,
          bordersCodes: const [
            "Blr",
            "Hun",
            "Mda",
            "Pol",
            "Rou",
            "Rus",
            "Svk",
          ],
          areaMetric: 603500,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Ukrainian",
              male: "Ukrainian",
            ),
            Demonyms(
              language: LangFra(),
              female: "Ukrainienne",
              male: "Ukrainien",
            ),
          ],
          emoji: "🇺🇦",
          maps: const Maps(
            googleMaps: "DvgJMiPJ7aozKFZv7",
            openStreetMaps: "relation/60199",
          ),
          population: 44134693,
          gini: const Gini(year: 2019, coefficient: 26.6),
          fifa: "UKR",
          car: const Car(sign: "UA"),
          timezones: const ["UTC+02:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Kyiv"),
            latLng: LatLng(50.43, 30.52),
          ),
          postalCode: const PostalCode(),
          regionalBlocs: null,
        );
}

/// A class that represents the United States Minor Outlying Islands country.
class CountryUmi extends WorldCountry {
  /// Creates a instance of [CountryUmi] (United States Minor Outlying Islands country).
  ///
  /// ISO 3166-1 Alpha-3 code: "UMI", ISO 3166-1 Alpha-2 code: "UM".
  const CountryUmi()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "United States Minor Outlying Islands",
            common: "United States Minor Outlying Islands",
          ),
          namesNative: const [
            CountryName(
              language: LangEng(),
              official: "United States Minor Outlying Islands",
              common: "United States Minor Outlying Islands",
            ),
          ],
          tld: const [".us"],
          code: "UMI",
          codeNumeric: "581",
          codeShort: "UM",
          cioc: null,
          independent: false,
          unMember: false,
          currencies: const [FiatUsd()],
          idd: const Idd(root: 2, suffixes: [68]),
          altSpellings: const ["UM"],
          continent: const Americas(),
          subregion: const NorthAmerica(),
          languages: const [LangEng()],
          translations: umiCountryTranslations,
          latLng: const LatLng(19.3, 166.633333),
          landlocked: false,
          bordersCodes: null,
          areaMetric: 34.2,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "American Islander",
              male: "American Islander",
            ),
          ],
          emoji: "🇺🇲",
          maps: const Maps(
            googleMaps: "hZKnrzgeK69dDyPF8",
            openStreetMaps: "relation/6430384",
          ),
          population: 300,
          gini: null,
          fifa: null,
          car: const Car(),
          timezones: const ["UTC-11:00", "UTC-10:00", "UTC+12:00"],
          hasCoatOfArms: false,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Washington DC"),
            latLng: LatLng(38.9072, 77.0369),
          ),
          postalCode: null,
          regionalBlocs: null,
        );
}

/// A class that represents the Uruguay country.
class CountryUry extends WorldCountry {
  /// Creates a instance of [CountryUry] (Uruguay country).
  ///
  /// ISO 3166-1 Alpha-3 code: "URY", ISO 3166-1 Alpha-2 code: "UY".
  const CountryUry()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Oriental Republic of Uruguay",
            common: "Uruguay",
          ),
          namesNative: const [
            CountryName(
              language: LangSpa(),
              official: "República Oriental del Uruguay",
              common: "Uruguay",
            ),
          ],
          tld: const [".uy"],
          code: "URY",
          codeNumeric: "858",
          codeShort: "UY",
          cioc: "URU",
          independent: true,
          unMember: true,
          currencies: const [FiatUyu()],
          idd: const Idd(root: 5, suffixes: [98]),
          altSpellings: const [
            "UY",
            "Oriental Republic of Uruguay",
            "República Oriental del Uruguay",
          ],
          continent: const Americas(),
          subregion: const SouthAmerica(),
          languages: const [LangSpa()],
          translations: uryCountryTranslations,
          latLng: const LatLng(-33, -56),
          landlocked: false,
          bordersCodes: const ["Arg", "Bra"],
          areaMetric: 181034,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Uruguayan",
              male: "Uruguayan",
            ),
            Demonyms(
              language: LangFra(),
              female: "Uruguayenne",
              male: "Uruguayen",
            ),
          ],
          emoji: "🇺🇾",
          maps: const Maps(
            googleMaps: "tiQ9Baekb1jQtDSD9",
            openStreetMaps: "relation/287072",
          ),
          population: 3473727,
          gini: const Gini(year: 2019, coefficient: 39.7),
          fifa: "URU",
          car: const Car(sign: "ROU"),
          timezones: const ["UTC-03:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Montevideo"),
            latLng: LatLng(-34.85, -56.17),
          ),
          postalCode: const PostalCode(),
          regionalBlocs: const [BlocUSAN()],
        );
}

/// A class that represents the United States country.
class CountryUsa extends WorldCountry {
  /// Creates a instance of [CountryUsa] (United States country).
  ///
  /// ISO 3166-1 Alpha-3 code: "USA", ISO 3166-1 Alpha-2 code: "US".
  const CountryUsa()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "United States of America",
            common: "United States",
          ),
          namesNative: const [
            CountryName(
              language: LangEng(),
              official: "United States of America",
              common: "United States",
            ),
          ],
          tld: const [".us"],
          code: "USA",
          codeNumeric: "840",
          codeShort: "US",
          cioc: "USA",
          independent: true,
          unMember: true,
          currencies: const [FiatUsd()],
          idd: const Idd(
            root: 1,
            suffixes: [
              201,
              202,
              203,
              205,
              206,
              207,
              208,
              209,
              210,
              212,
              213,
              214,
              215,
              216,
              217,
              218,
              219,
              220,
              224,
              225,
              227,
              228,
              229,
              231,
              234,
              239,
              240,
              248,
              251,
              252,
              253,
              254,
              256,
              260,
              262,
              267,
              269,
              270,
              272,
              274,
              276,
              281,
              283,
              301,
              302,
              303,
              304,
              305,
              307,
              308,
              309,
              310,
              312,
              313,
              314,
              315,
              316,
              317,
              318,
              319,
              320,
              321,
              323,
              325,
              327,
              330,
              331,
              334,
              336,
              337,
              339,
              346,
              347,
              351,
              352,
              360,
              361,
              364,
              380,
              385,
              386,
              401,
              402,
              404,
              405,
              406,
              407,
              408,
              409,
              410,
              412,
              413,
              414,
              415,
              417,
              419,
              423,
              424,
              425,
              430,
              432,
              434,
              435,
              440,
              442,
              443,
              447,
              458,
              463,
              464,
              469,
              470,
              475,
              478,
              479,
              480,
              484,
              501,
              502,
              503,
              504,
              505,
              507,
              508,
              509,
              510,
              512,
              513,
              515,
              516,
              517,
              518,
              520,
              530,
              531,
              534,
              539,
              540,
              541,
              551,
              559,
              561,
              562,
              563,
              564,
              567,
              570,
              571,
              573,
              574,
              575,
              580,
              585,
              586,
              601,
              602,
              603,
              605,
              606,
              607,
              608,
              609,
              610,
              612,
              614,
              615,
              616,
              617,
              618,
              619,
              620,
              623,
              626,
              628,
              629,
              630,
              631,
              636,
              641,
              646,
              650,
              651,
              657,
              660,
              661,
              662,
              667,
              669,
              678,
              681,
              682,
              701,
              702,
              703,
              704,
              706,
              707,
              708,
              712,
              713,
              714,
              715,
              716,
              717,
              718,
              719,
              720,
              724,
              725,
              727,
              730,
              731,
              732,
              734,
              737,
              740,
              743,
              747,
              754,
              757,
              760,
              762,
              763,
              765,
              769,
              770,
              772,
              773,
              774,
              775,
              779,
              781,
              785,
              786,
              801,
              802,
              803,
              804,
              805,
              806,
              808,
              810,
              812,
              813,
              814,
              815,
              816,
              817,
              818,
              828,
              830,
              831,
              832,
              843,
              845,
              847,
              848,
              850,
              854,
              856,
              857,
              858,
              859,
              860,
              862,
              863,
              864,
              865,
              870,
              872,
              878,
              901,
              903,
              904,
              906,
              907,
              908,
              909,
              910,
              912,
              913,
              914,
              915,
              916,
              917,
              918,
              919,
              920,
              925,
              928,
              929,
              930,
              931,
              934,
              936,
              937,
              938,
              940,
              941,
              947,
              949,
              951,
              952,
              954,
              956,
              959,
              970,
              971,
              972,
              973,
              975,
              978,
              979,
              980,
              984,
              985,
              989,
            ],
          ),
          altSpellings: const ["US", "USA", "United States of America"],
          continent: const Americas(),
          subregion: const NorthAmerica(),
          languages: const [LangEng()],
          translations: usaCountryTranslations,
          latLng: const LatLng(38, -97),
          landlocked: false,
          bordersCodes: const ["Can", "Mex"],
          areaMetric: 9372610,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "American",
              male: "American",
            ),
            Demonyms(
              language: LangFra(),
              female: "Américaine",
              male: "Américain",
            ),
          ],
          emoji: "🇺🇸",
          maps: const Maps(
            googleMaps: "e8M246zY4BSjkjAv6",
            openStreetMaps: "relation/148838#map=2/20.6/-85.8",
          ),
          population: 329484123,
          gini: const Gini(year: 2018, coefficient: 41.4),
          fifa: "USA",
          car: const Car(sign: "USA"),
          timezones: const [
            "UTC-12:00",
            "UTC-11:00",
            "UTC-10:00",
            "UTC-09:00",
            "UTC-08:00",
            "UTC-07:00",
            "UTC-06:00",
            "UTC-05:00",
            "UTC-04:00",
            "UTC+10:00",
            "UTC+12:00",
          ],
          hasCoatOfArms: true,
          startOfWeek: Weekday.sunday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Washington, D.C."),
            latLng: LatLng(38.89, -77.05),
          ),
          postalCode: const PostalCode(
            format: "#####-####",
            regExpPattern: r"^\d{5}(-\d{4})?$",
          ),
          regionalBlocs: const [BlocNAFTA()],
        );
}

/// A class that represents the Uzbekistan country.
class CountryUzb extends WorldCountry {
  /// Creates a instance of [CountryUzb] (Uzbekistan country).
  ///
  /// ISO 3166-1 Alpha-3 code: "UZB", ISO 3166-1 Alpha-2 code: "UZ".
  const CountryUzb()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Republic of Uzbekistan",
            common: "Uzbekistan",
          ),
          namesNative: const [
            CountryName(
              language: LangRus(),
              official: "Республика Узбекистан",
              common: "Узбекистан",
            ),
            CountryName(
              language: LangUzb(),
              official: "O'zbekiston Respublikasi",
              common: "O‘zbekiston",
            ),
          ],
          tld: const [".uz"],
          code: "UZB",
          codeNumeric: "860",
          codeShort: "UZ",
          cioc: "UZB",
          independent: true,
          unMember: true,
          currencies: const [FiatUzs()],
          idd: const Idd(root: 9, suffixes: [98]),
          altSpellings: const [
            "UZ",
            "Republic of Uzbekistan",
            "O‘zbekiston Respublikasi",
            "Ўзбекистон Республикаси",
          ],
          continent: const Asia(),
          subregion: const CentralAsia(),
          languages: const [LangRus(), LangUzb()],
          translations: uzbCountryTranslations,
          latLng: const LatLng(41, 64),
          landlocked: true,
          bordersCodes: const ["Afg", "Kaz", "Kgz", "Tjk", "Tkm"],
          areaMetric: 447400,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Uzbekistani",
              male: "Uzbekistani",
            ),
            Demonyms(language: LangFra(), female: "Ouzbèke", male: "Ouzbèke"),
          ],
          emoji: "🇺🇿",
          maps: const Maps(
            googleMaps: "AJpo6MjMx23qSWCz8",
            openStreetMaps: "relation/196240",
          ),
          population: 34232050,
          gini: const Gini(year: 2003, coefficient: 35.3),
          fifa: "UZB",
          car: const Car(sign: "UZ"),
          timezones: const ["UTC+05:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Tashkent"),
            latLng: LatLng(41.32, 69.25),
          ),
          postalCode:
              const PostalCode(format: "######", regExpPattern: r"^(\d{6})$"),
          regionalBlocs: null,
        );
}

/// A class that represents the Vatican City country.
class CountryVat extends WorldCountry {
  /// Creates a instance of [CountryVat] (Vatican City country).
  ///
  /// ISO 3166-1 Alpha-3 code: "VAT", ISO 3166-1 Alpha-2 code: "VA".
  const CountryVat()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Vatican City State",
            common: "Vatican City",
          ),
          namesNative: const [
            CountryName(
              language: LangIta(),
              official: "Stato della Città del Vaticano",
              common: "Vaticano",
            ),
            CountryName(
              language: LangLat(),
              official: "Status Civitatis Vaticanæ",
              common: "Vaticanæ",
            ),
          ],
          tld: const [".va"],
          code: "VAT",
          codeNumeric: "336",
          codeShort: "VA",
          cioc: null,
          independent: true,
          unMember: false,
          currencies: const [FiatEur()],
          idd: const Idd(root: 3, suffixes: [79]),
          altSpellings: const [
            "VA",
            "Holy See (Vatican City State)",
            "Vatican City State",
            "Stato della Città del Vaticano",
          ],
          continent: const Europe(),
          subregion: const SouthernEurope(),
          languages: const [LangIta(), LangLat()],
          translations: vatCountryTranslations,
          latLng: const LatLng(41.9, 12.45),
          landlocked: true,
          bordersCodes: const ["Ita"],
          areaMetric: 0.44,
          demonyms: const [
            Demonyms(language: LangEng(), female: "Vatican", male: "Vatican"),
            Demonyms(language: LangFra(), female: "Vaticane", male: "Vatican"),
          ],
          emoji: "🇻🇦",
          maps: const Maps(
            googleMaps: "DTKvw5Bd1QZaDZmE8",
            openStreetMaps: "relation/36989",
          ),
          population: 451,
          gini: null,
          fifa: null,
          car: const Car(sign: "V"),
          timezones: const ["UTC+01:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Vatican City"),
            latLng: LatLng(41.9, 12.45),
          ),
          postalCode: null,
          regionalBlocs: null,
        );
}

/// A class that represents the Saint Vincent and the Grenadines country.
class CountryVct extends WorldCountry {
  /// Creates a instance of [CountryVct] (Saint Vincent and the Grenadines country).
  ///
  /// ISO 3166-1 Alpha-3 code: "VCT", ISO 3166-1 Alpha-2 code: "VC".
  const CountryVct()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Saint Vincent and the Grenadines",
            common: "Saint Vincent and the Grenadines",
          ),
          namesNative: const [
            CountryName(
              language: LangEng(),
              official: "Saint Vincent and the Grenadines",
              common: "Saint Vincent and the Grenadines",
            ),
          ],
          tld: const [".vc"],
          code: "VCT",
          codeNumeric: "670",
          codeShort: "VC",
          cioc: "VIN",
          independent: true,
          unMember: true,
          currencies: const [FiatXcd()],
          idd: const Idd(root: 1, suffixes: [784]),
          altSpellings: const ["VC"],
          continent: const Americas(),
          subregion: const Caribbean(),
          languages: const [LangEng()],
          translations: vctCountryTranslations,
          latLng: const LatLng(13.25, -61.2),
          landlocked: false,
          bordersCodes: null,
          areaMetric: 389,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Saint Vincentian",
              male: "Saint Vincentian",
            ),
            Demonyms(
              language: LangFra(),
              female: "Vincentaise",
              male: "Vincentais",
            ),
          ],
          emoji: "🇻🇨",
          maps: const Maps(
            googleMaps: "wMbnMqjG37FMnrwf7",
            openStreetMaps: "relation/550725",
          ),
          population: 110947,
          gini: null,
          fifa: "VIN",
          car: const Car(sign: "WV", isRightSide: false),
          timezones: const ["UTC-04:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Kingstown"),
            latLng: LatLng(13.13, -61.22),
          ),
          postalCode: null,
          regionalBlocs: const [BlocCARICOM()],
        );
}

/// A class that represents the Venezuela country.
class CountryVen extends WorldCountry {
  /// Creates a instance of [CountryVen] (Venezuela country).
  ///
  /// ISO 3166-1 Alpha-3 code: "VEN", ISO 3166-1 Alpha-2 code: "VE".
  const CountryVen()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Bolivarian Republic of Venezuela",
            common: "Venezuela",
          ),
          namesNative: const [
            CountryName(
              language: LangSpa(),
              official: "República Bolivariana de Venezuela",
              common: "Venezuela",
            ),
          ],
          tld: const [".ve"],
          code: "VEN",
          codeNumeric: "862",
          codeShort: "VE",
          cioc: "VEN",
          independent: true,
          unMember: true,
          currencies: const [FiatVes()],
          idd: const Idd(root: 5, suffixes: [8]),
          altSpellings: const [
            "VE",
            "Bolivarian Republic of Venezuela",
            "Venezuela, Bolivarian Republic of",
            "República Bolivariana de Venezuela",
          ],
          continent: const Americas(),
          subregion: const SouthAmerica(),
          languages: const [LangSpa()],
          translations: venCountryTranslations,
          latLng: const LatLng(8, -66),
          landlocked: false,
          bordersCodes: const ["Bra", "Col", "Guy"],
          areaMetric: 916445,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Venezuelan",
              male: "Venezuelan",
            ),
            Demonyms(
              language: LangFra(),
              female: "Vénézuélienne",
              male: "Vénézuélien",
            ),
          ],
          emoji: "🇻🇪",
          maps: const Maps(
            googleMaps: "KLCwDN8sec7z2kse9",
            openStreetMaps: "relation/272644",
          ),
          population: 28435943,
          gini: const Gini(year: 2006, coefficient: 44.8),
          fifa: "VEN",
          car: const Car(sign: "YV"),
          timezones: const ["UTC-04:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Caracas"),
            latLng: LatLng(10.48, -66.87),
          ),
          postalCode:
              const PostalCode(format: "####", regExpPattern: r"^(\d{4})$"),
          regionalBlocs: const [BlocUSAN()],
        );
}

/// A class that represents the British Virgin Islands country.
class CountryVgb extends WorldCountry {
  /// Creates a instance of [CountryVgb] (British Virgin Islands country).
  ///
  /// ISO 3166-1 Alpha-3 code: "VGB", ISO 3166-1 Alpha-2 code: "VG".
  const CountryVgb()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Virgin Islands",
            common: "British Virgin Islands",
          ),
          namesNative: const [
            CountryName(
              language: LangEng(),
              official: "Virgin Islands",
              common: "British Virgin Islands",
            ),
          ],
          tld: const [".vg"],
          code: "VGB",
          codeNumeric: "092",
          codeShort: "VG",
          cioc: "IVB",
          independent: false,
          unMember: false,
          currencies: const [FiatUsd()],
          idd: const Idd(root: 1, suffixes: [284]),
          altSpellings: const ["VG", "Virgin Islands, British"],
          continent: const Americas(),
          subregion: const Caribbean(),
          languages: const [LangEng()],
          translations: vgbCountryTranslations,
          latLng: const LatLng(18.431383, -64.62305),
          landlocked: false,
          bordersCodes: null,
          areaMetric: 151,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Virgin Islander",
              male: "Virgin Islander",
            ),
          ],
          emoji: "🇻🇬",
          maps: const Maps(
            googleMaps: "49C9cSesNVAR9DQk8",
            openStreetMaps: "relation/285454",
          ),
          population: 30237,
          gini: null,
          fifa: "VGB",
          car: const Car(sign: "BVI", isRightSide: false),
          timezones: const ["UTC-04:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Road Town"),
            latLng: LatLng(18.42, -64.62),
          ),
          postalCode: null,
          regionalBlocs: null,
        );
}

/// A class that represents the United States Virgin Islands country.
class CountryVir extends WorldCountry {
  /// Creates a instance of [CountryVir] (United States Virgin Islands country).
  ///
  /// ISO 3166-1 Alpha-3 code: "VIR", ISO 3166-1 Alpha-2 code: "VI".
  const CountryVir()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Virgin Islands of the United States",
            common: "United States Virgin Islands",
          ),
          namesNative: const [
            CountryName(
              language: LangEng(),
              official: "Virgin Islands of the United States",
              common: "United States Virgin Islands",
            ),
          ],
          tld: const [".vi"],
          code: "VIR",
          codeNumeric: "850",
          codeShort: "VI",
          cioc: "ISV",
          independent: false,
          unMember: false,
          currencies: const [FiatUsd()],
          idd: const Idd(root: 1, suffixes: [340]),
          altSpellings: const ["VI", "Virgin Islands, U.S."],
          continent: const Americas(),
          subregion: const Caribbean(),
          languages: const [LangEng()],
          translations: virCountryTranslations,
          latLng: const LatLng(18.35, -64.933333),
          landlocked: false,
          bordersCodes: null,
          areaMetric: 347,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Virgin Islander",
              male: "Virgin Islander",
            ),
          ],
          emoji: "🇻🇮",
          maps: const Maps(
            googleMaps: "mBfreywj8dor6q4m9",
            openStreetMaps: "relation/286898",
          ),
          population: 106290,
          gini: null,
          fifa: "VIR",
          car: const Car(sign: "USA"),
          timezones: const ["UTC-04:00"],
          hasCoatOfArms: false,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Charlotte Amalie"),
            latLng: LatLng(18.35, -64.93),
          ),
          postalCode: null,
          regionalBlocs: null,
        );
}

/// A class that represents the Vietnam country.
class CountryVnm extends WorldCountry {
  /// Creates a instance of [CountryVnm] (Vietnam country).
  ///
  /// ISO 3166-1 Alpha-3 code: "VNM", ISO 3166-1 Alpha-2 code: "VN".
  const CountryVnm()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Socialist Republic of Vietnam",
            common: "Vietnam",
          ),
          namesNative: const [
            CountryName(
              language: LangVie(),
              official: "Cộng hòa xã hội chủ nghĩa Việt Nam",
              common: "Việt Nam",
            ),
          ],
          tld: const [".vn"],
          code: "VNM",
          codeNumeric: "704",
          codeShort: "VN",
          cioc: "VIE",
          independent: true,
          unMember: true,
          currencies: const [FiatVnd()],
          idd: const Idd(root: 8, suffixes: [4]),
          altSpellings: const [
            "VN",
            "Socialist Republic of Vietnam",
            "Cộng hòa Xã hội chủ nghĩa Việt Nam",
            "Viet Nam",
          ],
          continent: const Asia(),
          subregion: const SouthEasternAsia(),
          languages: const [LangVie()],
          translations: vnmCountryTranslations,
          latLng: const LatLng(16.16666666, 107.83333333),
          landlocked: false,
          bordersCodes: const ["Khm", "Chn", "Lao"],
          areaMetric: 331212,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Vietnamese",
              male: "Vietnamese",
            ),
            Demonyms(
              language: LangFra(),
              female: "Vietnamienne",
              male: "Vietnamien",
            ),
          ],
          emoji: "🇻🇳",
          maps: const Maps(
            googleMaps: "PCpVt9WzdJ9A9nEZ9",
            openStreetMaps: "relation/49915",
          ),
          population: 97338583,
          gini: const Gini(year: 2018, coefficient: 35.7),
          fifa: "VIE",
          car: const Car(sign: "VN"),
          timezones: const ["UTC+07:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Hanoi"),
            latLng: LatLng(21.03, 105.85),
          ),
          postalCode:
              const PostalCode(format: "######", regExpPattern: r"^(\d{6})$"),
          regionalBlocs: const [BlocASEAN()],
        );
}

/// A class that represents the Vanuatu country.
class CountryVut extends WorldCountry {
  /// Creates a instance of [CountryVut] (Vanuatu country).
  ///
  /// ISO 3166-1 Alpha-3 code: "VUT", ISO 3166-1 Alpha-2 code: "VU".
  const CountryVut()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Republic of Vanuatu",
            common: "Vanuatu",
          ),
          namesNative: const [
            CountryName(
              language: LangBis(),
              official: "Ripablik blong Vanuatu",
              common: "Vanuatu",
            ),
            CountryName(
              language: LangEng(),
              official: "Republic of Vanuatu",
              common: "Vanuatu",
            ),
            CountryName(
              language: LangFra(),
              official: "République de Vanuatu",
              common: "Vanuatu",
            ),
          ],
          tld: const [".vu"],
          code: "VUT",
          codeNumeric: "548",
          codeShort: "VU",
          cioc: "VAN",
          independent: true,
          unMember: true,
          currencies: const [FiatVuv()],
          idd: const Idd(root: 6, suffixes: [78]),
          altSpellings: const [
            "VU",
            "Republic of Vanuatu",
            "Ripablik blong Vanuatu",
            "République de Vanuatu",
          ],
          continent: const Oceania(),
          subregion: const Melanesia(),
          languages: const [LangBis(), LangEng(), LangFra()],
          translations: vutCountryTranslations,
          latLng: const LatLng(-16, 167),
          landlocked: false,
          bordersCodes: null,
          areaMetric: 12189,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Ni-Vanuatu",
              male: "Ni-Vanuatu",
            ),
            Demonyms(
              language: LangFra(),
              female: "Vanuatuane",
              male: "Vanuatuan",
            ),
          ],
          emoji: "🇻🇺",
          maps: const Maps(
            googleMaps: "hwAjehcT7VfvP5zJ8",
            openStreetMaps: "relation/2177246",
          ),
          population: 307150,
          gini: const Gini(year: 2010, coefficient: 37.6),
          fifa: "VAN",
          car: const Car(sign: "VU"),
          timezones: const ["UTC+11:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Port Vila"),
            latLng: LatLng(-17.73, 168.32),
          ),
          postalCode: null,
          regionalBlocs: null,
        );
}

/// A class that represents the Wallis and Futuna country.
class CountryWlf extends WorldCountry {
  /// Creates a instance of [CountryWlf] (Wallis and Futuna country).
  ///
  /// ISO 3166-1 Alpha-3 code: "WLF", ISO 3166-1 Alpha-2 code: "WF".
  const CountryWlf()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Territory of the Wallis and Futuna Islands",
            common: "Wallis and Futuna",
          ),
          namesNative: const [
            CountryName(
              language: LangFra(),
              official: "Territoire des îles Wallis et Futuna",
              common: "Wallis et Futuna",
            ),
          ],
          tld: const [".wf"],
          code: "WLF",
          codeNumeric: "876",
          codeShort: "WF",
          cioc: null,
          independent: false,
          unMember: false,
          currencies: const [FiatXpf()],
          idd: const Idd(root: 6, suffixes: [81]),
          altSpellings: const [
            "WF",
            "Territory of the Wallis and Futuna Islands",
            "Territoire des îles Wallis et Futuna",
          ],
          continent: const Oceania(),
          subregion: const Polynesia(),
          languages: const [LangFra()],
          translations: wlfCountryTranslations,
          latLng: const LatLng(-13.3, -176.2),
          landlocked: false,
          bordersCodes: null,
          areaMetric: 142,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Wallis and Futuna Islander",
              male: "Wallis and Futuna Islander",
            ),
          ],
          emoji: "🇼🇫",
          maps: const Maps(
            googleMaps: "CzVqK74QYtbHv65r5",
            openStreetMaps: "relation/3412448",
          ),
          population: 11750,
          gini: null,
          fifa: null,
          car: const Car(sign: "F"),
          timezones: const ["UTC+12:00"],
          hasCoatOfArms: false,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Mata-Utu"),
            latLng: LatLng(-13.95, -171.93),
          ),
          postalCode: const PostalCode(regExpPattern: r"^(986\d{2})$"),
          regionalBlocs: null,
        );
}

/// A class that represents the Samoa country.
class CountryWsm extends WorldCountry {
  /// Creates a instance of [CountryWsm] (Samoa country).
  ///
  /// ISO 3166-1 Alpha-3 code: "WSM", ISO 3166-1 Alpha-2 code: "WS".
  const CountryWsm()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Independent State of Samoa",
            common: "Samoa",
          ),
          namesNative: const [
            CountryName(
              language: LangEng(),
              official: "Independent State of Samoa",
              common: "Samoa",
            ),
            CountryName(
              language: LangSmo(),
              official: "Malo Saʻoloto Tutoʻatasi o Sāmoa",
              common: "Sāmoa",
            ),
          ],
          tld: const [".ws"],
          code: "WSM",
          codeNumeric: "882",
          codeShort: "WS",
          cioc: "SAM",
          independent: true,
          unMember: true,
          currencies: const [FiatWst()],
          idd: const Idd(root: 6, suffixes: [85]),
          altSpellings: const [
            "WS",
            "Independent State of Samoa",
            "Malo Saʻoloto Tutoʻatasi o Sāmoa",
          ],
          continent: const Oceania(),
          subregion: const Polynesia(),
          languages: const [LangEng(), LangSmo()],
          translations: wsmCountryTranslations,
          latLng: const LatLng(-13.58333333, -172.33333333),
          landlocked: false,
          bordersCodes: null,
          areaMetric: 2842,
          demonyms: const [
            Demonyms(language: LangEng(), female: "Samoan", male: "Samoan"),
            Demonyms(language: LangFra(), female: "Samoane", male: "Samoan"),
          ],
          emoji: "🇼🇸",
          maps: const Maps(
            googleMaps: "CFC9fEFP9cfkYUBF9",
            openStreetMaps: "relation/1872673",
          ),
          population: 198410,
          gini: const Gini(year: 2013, coefficient: 38.7),
          fifa: "SAM",
          car: const Car(sign: "WS", isRightSide: false),
          timezones: const ["UTC+13:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Apia"),
            latLng: LatLng(-13.82, -171.77),
          ),
          postalCode: null,
          regionalBlocs: null,
        );
}

/// A class that represents the Yemen country.
class CountryYem extends WorldCountry {
  /// Creates a instance of [CountryYem] (Yemen country).
  ///
  /// ISO 3166-1 Alpha-3 code: "YEM", ISO 3166-1 Alpha-2 code: "YE".
  const CountryYem()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Republic of Yemen",
            common: "Yemen",
          ),
          namesNative: const [
            CountryName(
              language: LangAra(),
              official: "الجمهورية اليمنية",
              common: "اليَمَن",
            ),
          ],
          tld: const [".ye"],
          code: "YEM",
          codeNumeric: "887",
          codeShort: "YE",
          cioc: "YEM",
          independent: true,
          unMember: true,
          currencies: const [FiatYer()],
          idd: const Idd(root: 9, suffixes: [67]),
          altSpellings: const [
            "YE",
            "Yemeni Republic",
            "al-Jumhūriyyah al-Yamaniyyah",
          ],
          continent: const Asia(),
          subregion: const WesternAsia(),
          languages: const [LangAra()],
          translations: yemCountryTranslations,
          latLng: const LatLng(15, 48),
          landlocked: false,
          bordersCodes: const ["Omn", "Sau"],
          areaMetric: 527968,
          demonyms: const [
            Demonyms(language: LangEng(), female: "Yemeni", male: "Yemeni"),
            Demonyms(
              language: LangFra(),
              female: "Yéménite",
              male: "Yéménite",
            ),
          ],
          emoji: "🇾🇪",
          maps: const Maps(
            googleMaps: "WCmE76HKcLideQQw7",
            openStreetMaps: "relation/305092",
          ),
          population: 29825968,
          gini: const Gini(year: 2014, coefficient: 36.7),
          fifa: "YEM",
          car: const Car(sign: "YAR"),
          timezones: const ["UTC+03:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.sunday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Sana'a"),
            latLng: LatLng(15.37, 44.19),
          ),
          postalCode: null,
          regionalBlocs: const [BlocAL()],
        );
}

/// A class that represents the South Africa country.
class CountryZaf extends WorldCountry {
  /// Creates a instance of [CountryZaf] (South Africa country).
  ///
  /// ISO 3166-1 Alpha-3 code: "ZAF", ISO 3166-1 Alpha-2 code: "ZA".
  const CountryZaf()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Republic of South Africa",
            common: "South Africa",
          ),
          namesNative: const [
            CountryName(
              language: LangAfr(),
              official: "Republiek van Suid-Afrika",
              common: "South Africa",
            ),
            CountryName(
              language: LangEng(),
              official: "Republic of South Africa",
              common: "South Africa",
            ),
            CountryName(
              language: LangNbl(),
              official: "IRiphabliki yeSewula Afrika",
              common: "Sewula Afrika",
            ),
            CountryName(
              language: LangSot(),
              official: "Rephaboliki ya Afrika Borwa",
              common: "Afrika Borwa",
            ),
            CountryName(
              language: LangSsw(),
              official: "IRiphabhulikhi yeNingizimu Afrika",
              common: "Ningizimu Afrika",
            ),
            CountryName(
              language: LangTsn(),
              official: "Rephaboliki ya Aforika Borwa",
              common: "Aforika Borwa",
            ),
            CountryName(
              language: LangTso(),
              official: "Riphabliki ra Afrika Dzonga",
              common: "Afrika Dzonga",
            ),
            CountryName(
              language: LangVen(),
              official: "Riphabuḽiki ya Afurika Tshipembe",
              common: "Afurika Tshipembe",
            ),
            CountryName(
              language: LangXho(),
              official: "IRiphabliki yaseMzantsi Afrika",
              common: "Mzantsi Afrika",
            ),
            CountryName(
              language: LangZul(),
              official: "IRiphabliki yaseNingizimu Afrika",
              common: "Ningizimu Afrika",
            ),
          ],
          tld: const [".za"],
          code: "ZAF",
          codeNumeric: "710",
          codeShort: "ZA",
          cioc: "RSA",
          independent: true,
          unMember: true,
          currencies: const [FiatZar()],
          idd: const Idd(root: 2, suffixes: [7]),
          altSpellings: const [
            "ZA",
            "RSA",
            "Suid-Afrika",
            "Republic of South Africa",
          ],
          continent: const Africa(),
          subregion: const SouthernAfrica(),
          languages: const [
            LangAfr(),
            LangEng(),
            LangNbl(),
            LangSot(),
            LangSsw(),
            LangTsn(),
            LangTso(),
            LangVen(),
            LangXho(),
            LangZul(),
          ],
          translations: zafCountryTranslations,
          latLng: const LatLng(-29, 24),
          landlocked: false,
          bordersCodes: const ["Bwa", "Lso", "Moz", "Nam", "Swz", "Zwe"],
          areaMetric: 1221037,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "South African",
              male: "South African",
            ),
            Demonyms(
              language: LangFra(),
              female: "Sud-africaine",
              male: "Sud-africain",
            ),
          ],
          emoji: "🇿🇦",
          maps: const Maps(
            googleMaps: "CLCZ1R8Uz1KpYhRv6",
            openStreetMaps: "relation/87565",
          ),
          population: 59308690,
          gini: const Gini(year: 2014, coefficient: 63),
          fifa: "RSA",
          car: const Car(sign: "ZA", isRightSide: false),
          timezones: const ["UTC+02:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital(
              "Pretoria",
              deJure: "Bloemfontein",
              third: "Cape Town",
            ),
            latLng: LatLng(-25.7, 28.22),
          ),
          postalCode:
              const PostalCode(format: "####", regExpPattern: r"^(\d{4})$"),
          regionalBlocs: const [BlocAU()],
        );
}

/// A class that represents the Zambia country.
class CountryZmb extends WorldCountry {
  /// Creates a instance of [CountryZmb] (Zambia country).
  ///
  /// ISO 3166-1 Alpha-3 code: "ZMB", ISO 3166-1 Alpha-2 code: "ZM".
  const CountryZmb()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Republic of Zambia",
            common: "Zambia",
          ),
          namesNative: const [
            CountryName(
              language: LangEng(),
              official: "Republic of Zambia",
              common: "Zambia",
            ),
          ],
          tld: const [".zm"],
          code: "ZMB",
          codeNumeric: "894",
          codeShort: "ZM",
          cioc: "ZAM",
          independent: true,
          unMember: true,
          currencies: const [FiatZmw()],
          idd: const Idd(root: 2, suffixes: [60]),
          altSpellings: const ["ZM", "Republic of Zambia"],
          continent: const Africa(),
          subregion: const EasternAfrica(),
          languages: const [LangEng()],
          translations: zmbCountryTranslations,
          latLng: const LatLng(-15, 30),
          landlocked: true,
          bordersCodes: const [
            "Ago",
            "Bwa",
            "Cod",
            "Mwi",
            "Moz",
            "Nam",
            "Tza",
            "Zwe",
          ],
          areaMetric: 752612,
          demonyms: const [
            Demonyms(language: LangEng(), female: "Zambian", male: "Zambian"),
            Demonyms(
              language: LangFra(),
              female: "Zambienne",
              male: "Zambien",
            ),
          ],
          emoji: "🇿🇲",
          maps: const Maps(
            googleMaps: "mweBcqvW8TppZW6q9",
            openStreetMaps: "relation/195271",
          ),
          population: 18383956,
          gini: const Gini(year: 2015, coefficient: 57.1),
          fifa: "ZAM",
          car: const Car(sign: "RNR", isRightSide: false),
          timezones: const ["UTC+02:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Lusaka"),
            latLng: LatLng(-15.42, 28.28),
          ),
          postalCode: const PostalCode(),
          regionalBlocs: const [BlocAU()],
        );
}

/// A class that represents the Zimbabwe country.
class CountryZwe extends WorldCountry {
  /// Creates a instance of [CountryZwe] (Zimbabwe country).
  ///
  /// ISO 3166-1 Alpha-3 code: "ZWE", ISO 3166-1 Alpha-2 code: "ZW".
  const CountryZwe()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Republic of Zimbabwe",
            common: "Zimbabwe",
          ),
          namesNative: const [
            CountryName(
              language: LangEng(),
              official: "Republic of Zimbabwe",
              common: "Zimbabwe",
            ),
            CountryName(
              language: LangTsn(),
              official: "Republic of Zimbabwe",
              common: "Zimbabwe",
            ),
            CountryName(
              language: LangTso(),
              official: "Republic of Zimbabwe",
              common: "Zimbabwe",
            ),
            CountryName(
              language: LangVen(),
              official: "Republic of Zimbabwe",
              common: "Zimbabwe",
            ),
            CountryName(
              language: LangXho(),
              official: "Republic of Zimbabwe",
              common: "Zimbabwe",
            ),
          ],
          tld: const [".zw"],
          code: "ZWE",
          codeNumeric: "716",
          codeShort: "ZW",
          cioc: "ZIM",
          independent: true,
          unMember: true,
          currencies: const [FiatGbp(), FiatZwl()],
          idd: const Idd(root: 2, suffixes: [63]),
          altSpellings: const ["ZW", "Republic of Zimbabwe"],
          continent: const Africa(),
          subregion: const SouthernAfrica(),
          languages: const [
            LangEng(),
            LangNde(),
            LangNya(),
            LangSna(),
            LangSot(),
            LangTsn(),
            LangTso(),
            LangVen(),
            LangXho(),
          ],
          translations: zweCountryTranslations,
          latLng: const LatLng(-20, 30),
          landlocked: true,
          bordersCodes: const ["Bwa", "Moz", "Zaf", "Tur"],
          areaMetric: 390757,
          demonyms: const [
            Demonyms(
              language: LangEng(),
              female: "Zimbabwean",
              male: "Zimbabwean",
            ),
            Demonyms(
              language: LangFra(),
              female: "Zimbabwéenne",
              male: "Zimbabwéen",
            ),
          ],
          emoji: "🇿🇼",
          maps: const Maps(
            googleMaps: "M26BqdwQctqxXS65A",
            openStreetMaps: "relation/195272",
          ),
          population: 14862927,
          gini: const Gini(year: 2019, coefficient: 50.3),
          fifa: "ZIM",
          car: const Car(sign: "ZW", isRightSide: false),
          timezones: const ["UTC+02:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Harare"),
            latLng: LatLng(-17.82, 31.03),
          ),
          postalCode: null,
          regionalBlocs: const [BlocAU()],
        );
}
