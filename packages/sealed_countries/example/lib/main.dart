// ignore_for_file: avoid_print, avoid-non-ascii-symbols, prefer-match-file-name
import "package:sealed_countries/sealed_countries.dart";

void main() {
  print(WorldCountry.list.length); // Prints: "250".

  final mexico = WorldCountry.fromCode("MEX");
  print(mexico.name.common); // Prints: "Mexico".

  final europeanCountries = WorldCountry.list.where(
    (country) => country.continent is Europe,
  );
  print(europeanCountries); // Prints a list of European countries.

  final europeanUnion = RegionalBloc.fromAcronym("EU");
  final europeButNotEU = europeanCountries.where(
    (country) => !(country.regionalBlocs?.contains(europeanUnion) ?? false),
  );

  print(europeButNotEU.length); // Prints 23 count of non-EU European countries.

  /// Prints all the countries in the world with their phone code.
  for (final country in WorldCountry.list) {
    print(
      "${country.name.common} code: ${country.idd.phoneCode()}",
    );
  }

  for (final country in WorldCountry.list) {
    print(
      """${country.name.common} translated to Slovak language: ${country.translation(const LangSlk()).name}""",
    );
  }

  print(const _CountryCustom().name.common); // Prints "Custom".
}

/// Creates a instance of the custom country with permissive constructor.
class _CountryCustom extends WorldCountry {
  const _CountryCustom()
      : super.permissive(
          name: const CountryName(
            language: LangEng(),
            official: "Republic of Custom",
            common: "Custom",
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
          codeNumeric: "   ",
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
          translations: const [],
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
