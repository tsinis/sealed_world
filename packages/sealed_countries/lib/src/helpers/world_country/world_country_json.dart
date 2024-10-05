// ignore_for_file: prefer-correct-identifier-length

import "package:sealed_currencies/sealed_currencies.dart";

import "../../model/country/country.dart";
import "../../model/country/submodels/country_name.dart";
import "../../model/country/submodels/demonyms.dart";
import "../../model/country/submodels/weekday.dart";
import "../../model/geo/submodels/continent.dart";
import "../../model/regional_bloc/world_bloc.dart";
import "../extensions/country_submodels/capital_info_extension.dart";
import "../extensions/country_submodels/car_extension.dart";
import "../extensions/country_submodels/country_name_extension.dart";
import "../extensions/country_submodels/demonyms_extension.dart";
import "../extensions/country_submodels/gini_extension.dart";
import "../extensions/country_submodels/idd_extension.dart";
import "../extensions/country_submodels/lat_lng_extension.dart";
import "../extensions/country_submodels/maps_extension.dart";
import "../extensions/country_submodels/postal_code_extension.dart";

/// Extension on [WorldCountry] that provides methods for converting
/// [WorldCountry] objects to and from JSON maps.
extension WorldCountryJson on WorldCountry {
  /// {@macro to_map_method}
  JsonObjectMap toMap() => {
        "name": name.toMap(),
        "namesNative":
            namesNative.map((nn) => nn.toMap()).toList(growable: false),
        "tld": tld,
        "code": code,
        "codeNumeric": codeNumeric,
        "codeShort": codeShort,
        "cioc": cioc,
        "independent": independent,
        "unMember": unMember,
        "currencies": currencies?.toIsoList(),
        "idd": idd.toMap(),
        "altSpellings": altSpellings,
        "continent": continent.name,
        "subregion": subregion?.name,
        "languages": languages.toIsoList(),
        "translations":
            translations.map((t) => t.toMap()).toList(growable: false),
        "latLng": latLng.toMap(),
        "landlocked": landlocked,
        "bordersCodes": bordersCodes,
        "areaMetric": areaMetric,
        "demonyms": demonyms.map((d) => d.toMap()).toList(growable: false),
        "emoji": emoji,
        "maps": maps.toMap(),
        "population": population,
        "gini": gini?.toMap(),
        "fifa": fifa,
        "car": car.toMap(),
        "timezones": timezones,
        "hasCoatOfArms": hasCoatOfArms,
        "startOfWeek": startOfWeek.toMap(),
        "capitalInfo": capitalInfo?.toMap(),
        "postalCode": postalCode?.toMap(),
        "regionalBlocs":
            regionalBlocs?.map((rb) => rb.acronym).toList(growable: false),
      };

  /// {@macro from_map_method}
  // ignore: long-method, class is quite big.
  static WorldCountry fromMap(JsonMap map) => WorldCountry(
        name: CountryNameExtension.fromMap(map["name"] as JsonMap),
        altSpellings: List<String>.unmodifiable(map["altSpellings"] as List),
        areaMetric: map["areaMetric"] as double,
        code: map["code"] as String,
        codeNumeric: map["codeNumeric"] as String,
        codeShort: map["codeShort"] as String,
        continent: Continent.fromName(map["continent"] as String),
        emoji: map["emoji"] as String,
        idd: IddExtension.fromMap(map["idd"] as JsonMap),
        languages: (map["languages"] as List<Object?>)
            .fromIsoList(NaturalLanguage.fromCode)
            .toList(growable: false),
        latLng: LatLngExtension.fromMap(map["latLng"] as JsonMap),
        maps: MapsExtension.fromMap(map["maps"] as JsonMap),
        namesNative: List<CountryName>.unmodifiable(
          (map["namesNative"] as List)
              .map((n) => CountryNameExtension.fromMap(n as JsonMap)),
        ),
        population: map["population"] as int,
        timezones: List<String>.unmodifiable(map["timezones"] as List),
        tld: List<String>.unmodifiable(map["tld"] as List),
        translations: List<TranslatedName>.unmodifiable(
          (map["translations"] as List)
              .map((l10n) => TranslatedNameExtension.fromMap(l10n as JsonMap)),
        ),
        demonyms: List<Demonyms>.unmodifiable(
          (map["demonyms"] as List)
              .map((d) => DemonymsExtension.fromMap(d as JsonMap)),
        ),
        currencies: map["currencies"] is List
            ? (map["currencies"] as List<Object?>)
                .fromIsoList(FiatCurrency.fromCode)
                .toList(growable: false)
            : null,
        capitalInfo: map["capitalInfo"] != null
            ? CapitalInfoExtension.fromMap(map["capitalInfo"] as JsonMap)
            : null,
        car: CarExtension.fromMap(map["car"] as JsonMap),
        cioc: map["cioc"] as String?,
        fifa: map["fifa"] as String?,
        gini: map["gini"] != null
            ? GiniExtension.fromMap(map["gini"] as JsonMap)
            : null,
        hasCoatOfArms: map["hasCoatOfArms"] as bool,
        independent: map["independent"] as bool,
        landlocked: map["landlocked"] as bool,
        postalCode: map["postalCode"] != null
            ? PostalCodeExtension.fromMap(map["postalCode"] as JsonMap)
            : null,
        bordersCodes: map["bordersCodes"] is List
            ? List<String>.unmodifiable(map["bordersCodes"] as List)
            : null,
        startOfWeek: Weekday.fromMap(map["startOfWeek"] as JsonMap),
        subregion: map["subregion"] is String
            ? Continent.maybeFromValue(map["subregion"] as String)
            : null,
        unMember: map["unMember"] as bool,
        regionalBlocs: map["regionalBlocs"] is List
            ? List<RegionalBloc>.from(
                (map["regionalBlocs"] as List)
                    .map((rb) => RegionalBloc.fromAcronym("$rb")),
              )
            : null,
      );
}
