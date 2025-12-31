// ignore_for_file: prefer-correct-identifier-length, avoid-type-casts

import "package:sealed_currencies/sealed_currencies.dart";

import "../../model/country/country.dart";
import "../../model/country/submodels/country_name.dart";
import "../../model/country/submodels/demonyms.dart";
import "../../model/country/submodels/weekday.dart";
import "../../model/geo/submodels/continent.dart";
import "../../model/geo/submodels/subregion.dart";
import "../../model/regional_bloc/regional_bloc.dart";
import "../extensions/country_submodels/capital_info_extension.dart";
import "../extensions/country_submodels/car_extension.dart";
import "../extensions/country_submodels/country_name_extension.dart";
import "../extensions/country_submodels/demonyms_extension.dart";
import "../extensions/country_submodels/gini_extension.dart";
import "../extensions/country_submodels/idd_extension.dart";
import "../extensions/country_submodels/lat_lng_extension.dart";
import "../extensions/country_submodels/maps_extension.dart";
import "../extensions/country_submodels/postal_code_extension.dart";
import "world_country_copy_with.dart";

/// Extension on [WorldCountry] that provides methods for converting
/// [WorldCountry] objects to and from JSON maps.
extension WorldCountryJson on WorldCountry {
  /// {@macro to_map_method}
  JsonObjectMap toMap() => {
    "altSpellings": altSpellings,
    "areaMetric": areaMetric,
    "bordersCodes": ?bordersCodes,
    "capitalInfo": ?capitalInfo?.toMap(),
    "car": car.toMap(),
    "cioc": ?cioc,
    "code": code,
    "codeNumeric": codeNumeric,
    "codeShort": codeShort,
    "continent": continent.name,
    "currencies": ?currencies?.toIsoList(),
    "demonyms": demonyms.map((d) => d.toMap()).toList(growable: false),
    "emoji": emoji,
    "fifa": ?fifa,
    "gini": ?gini?.toMap(),
    "hasCoatOfArms": hasCoatOfArms,
    "idd": idd.toMap(),
    "independent": independent,
    "landlocked": landlocked,
    "languages": languages.toIsoList(),
    "latLng": latLng.toMap(),
    "maps": maps.toMap(),
    "name": name.toMap(),
    "namesNative": namesNative.map((nn) => nn.toMap()).toList(growable: false),
    "population": population,
    "postalCode": ?postalCode?.toMap(),
    "regionalBlocs": ?regionalBlocs
        ?.map((rb) => rb.acronym)
        .toList(growable: false),
    "startOfWeek": startOfWeek.toMap(),
    "subregion": ?subregion?.name,
    "timezones": timezones,
    "tld": tld,
    "unMember": unMember,
  };

  /// {@macro from_map_method}
  // ignore: avoid-long-functions, very rich object.
  static WorldCountry fromMap(JsonMap map) {
    final code = map["code"]?.toString().trim() ?? "";
    final codeShort = map["codeShort"]?.toString().trim() ?? "";
    final codeNumeric = map["codeNumeric"]?.toString().trim() ?? "";
    if (code.isEmpty && codeNumeric.isEmpty && codeShort.isEmpty) {
      throw ArgumentError(
        "The `code` (or at least `codeShort`/`codeNumeric`) must be provided!",
      );
    }

    return CountryCustom(
      code: code,
      codeNumeric: codeNumeric,
      codeShort: codeShort,
    ).copyWith(
      name: CountryNameExtension.fromMap(map["name"]),
      altSpellings: List<String>.unmodifiable(map["altSpellings"]),
      areaMetric: map["areaMetric"] as double?,
      continent: Continent.maybeFromValue(map["continent"]),
      emoji: map["emoji"]?.toString(),
      idd: IddExtension.fromMap(map["idd"]),
      languages: map["languages"] is List<Object?>
          ? (map["languages"] as List<Object?>)
                .fromIsoList(NaturalLanguage.fromCode)
                .toList(growable: false)
          : null,
      latLng: LatLngExtension.fromMap(map["latLng"]),
      maps: MapsExtension.fromMap(map["maps"]),
      namesNative: List<CountryName>.unmodifiable(
        (map["namesNative"]).map((n) => CountryNameExtension.fromMap(n)),
      ),
      population: map["population"] as int?,
      timezones: List<String>.unmodifiable(map["timezones"]),
      tld: List<String>.unmodifiable(map["tld"]),
      demonyms: List<Demonyms>.unmodifiable(
        (map["demonyms"]).map((d) => DemonymsExtension.fromMap(d)),
      ),
      currencies: map["currencies"] is List<Object?>
          ? (map["currencies"] as List<Object?>)
                .fromIsoList(FiatCurrency.fromCode)
                .toList(growable: false)
          : null,
      capitalInfo: map["capitalInfo"] == null
          ? null
          : CapitalInfoExtension.fromMap(map["capitalInfo"]),
      car: CarExtension.fromMap(map["car"]),
      cioc: map["cioc"]?.toString(),
      fifa: map["fifa"]?.toString(),
      gini: map["gini"] == null ? null : GiniExtension.fromMap(map["gini"]),
      hasCoatOfArms: map["hasCoatOfArms"] as bool?,
      independent: map["independent"] as bool?,
      landlocked: map["landlocked"] as bool?,
      postalCode: map["postalCode"] == null
          ? null
          : PostalCodeExtension.fromMap(map["postalCode"]),
      bordersCodes: map["bordersCodes"] is List
          ? List<String>.unmodifiable(map["bordersCodes"])
          : null,
      startOfWeek: Weekday.fromMap(map["startOfWeek"]),
      subregion: map["subregion"] is String?
          ? SubRegion.maybeFromValue(map["subregion"]?.toString())
          : null,
      unMember: map["unMember"] as bool?,
      regionalBlocs: map["regionalBlocs"] is List<Object>
          ? List<RegionalBloc>.from(
              (map["regionalBlocs"] as List<Object>).map(
                (rb) => RegionalBloc.fromAcronym("$rb"),
              ),
            )
          : null,
    );
  }
}
