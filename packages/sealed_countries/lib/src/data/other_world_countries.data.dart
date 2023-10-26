// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

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
import "../model/country/submodels/weekday.dart";
import "geo/continental_sections.data.dart";
import "geo/continents.data.dart";
import "regional_bloc/regional_bloc.data.dart";

/// A class that represents the Kosovo country.
class CountryUnk extends WorldCountry {
  /// Creates a instance of [CountryUnk] (Kosovo country).
  ///
  /// ISO 3166-1 Alpha-3 code: "UNK", ISO 3166-1 Alpha-2 code: "XK".
  const CountryUnk()
      : super(
          name: const CountryName(
            language: LangEng(),
            official: "Republic of Kosovo",
            common: "Kosovo",
          ),
          namesNative: const [
            CountryName(
              language: LangSqi(),
              official: "Republika e Kosovës",
              common: "Kosova",
            ),
            CountryName(
              language: LangSrp(),
              official: "Република Косово",
              common: "Косово",
            ),
          ],
          tld: const [],
          code: "UNK",
          codeNumeric: "",
          codeShort: "XK",
          cioc: "KOS",
          independent: true,
          unMember: false,
          currencies: const [FiatEur()],
          idd: const Idd(root: 3, suffixes: [83]),
          altSpellings: const ["XK", "Република Косово"],
          continent: const Europe(),
          subregion: const SouthwestEurope(),
          languages: const [LangSrp(), LangSqi()],
          translations: unkCountryTranslations,
          latLng: const LatLng(42.666667, 21.166667),
          landlocked: true,
          bordersCodes: const ["Alb", "Mkd", "Mne", "Srb"],
          areaMetric: 10908,
          demonyms: const [
            Demonyms(language: LangEng(), female: "Kosovar", male: "Kosovar"),
            Demonyms(language: LangFra(), female: "Kosovare", male: "Kosovar"),
          ],
          emoji: "🇽🇰",
          maps: const Maps(
            googleMaps: "CSC4Yc8SWPgburuD9",
            openStreetMaps: "relation/2088990",
          ),
          population: 1775378,
          gini: const Gini(year: 2017, coefficient: 29),
          fifa: "KVX",
          car: const Car(sign: "CS"),
          timezones: const ["UTC+01:00"],
          hasCoatOfArms: true,
          startOfWeek: Weekday.monday,
          capitalInfo: const CapitalInfo(
            capital: Capital("Pristina"),
            latLng: LatLng(42.67, 21.17),
          ),
          postalCode: null,
          regionalBlocs: const [BlocCEFTA()],
        );
}
