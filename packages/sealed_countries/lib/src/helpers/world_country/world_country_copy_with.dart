import "package:sealed_currencies/sealed_currencies.dart";

import "../../model/country/country.dart";
import "../../model/country/submodels/capital_info.dart";
import "../../model/country/submodels/car.dart";
import "../../model/country/submodels/country_name.dart";
import "../../model/country/submodels/demonyms.dart";
import "../../model/country/submodels/gini.dart";
import "../../model/country/submodels/idd.dart";
import "../../model/country/submodels/lat_lng.dart";
import "../../model/country/submodels/maps.dart";
import "../../model/country/submodels/postal_code.dart";
import "../../model/country/submodels/weekday.dart";
import "../../model/geo/region.dart";
import "../../model/geo/submodels/continent.dart";
import "../../model/regional_bloc/world_bloc.dart";
import "../../model/translated_name.dart";

extension WorldCountryCopyWith on WorldCountry {
  WorldCountry copyWith({
    CountryName? name,
    List<CountryName>? namesNative,
    List<String>? tld,
    String? code,
    String? codeNumeric,
    String? codeShort,
    String? cioc,
    bool? independent,
    bool? unMember,
    List<FiatCurrency>? currencies,
    Idd? idd,
    List<String>? altSpellings,
    Continent? continent,
    SubRegion? subregion,
    List<NaturalLanguage>? languages,
    Iterable<TranslatedName>? translations,
    LatLng? latLng,
    bool? landlocked,
    List<String>? bordersCodes,
    double? areaMetric,
    List<Demonyms>? demonyms,
    String? emoji,
    Maps? maps,
    int? population,
    Gini? gini,
    String? fifa,
    Car? car,
    List<String>? timezones,
    bool? hasCoatOfArms,
    Weekday? startOfWeek,
    CapitalInfo? capitalInfo,
    PostalCode? postalCode,
    List<RegionalBloc>? regionalBlocs,
  }) =>
      WorldCountry(
        name: name ?? this.name,
        altSpellings: altSpellings ?? this.altSpellings,
        areaMetric: areaMetric ?? this.areaMetric,
        code: code ?? this.code,
        codeNumeric: codeNumeric ?? this.codeNumeric,
        codeShort: codeShort ?? this.codeShort,
        continent: continent ?? this.continent,
        emoji: emoji ?? this.emoji,
        idd: idd ?? this.idd,
        languages: languages ?? this.languages,
        latLng: latLng ?? this.latLng,
        maps: maps ?? this.maps,
        namesNative: namesNative ?? this.namesNative,
        population: population ?? this.population,
        timezones: timezones ?? this.timezones,
        tld: tld ?? this.tld,
        translations: translations ?? this.translations,
        demonyms: demonyms ?? this.demonyms,
        currencies: currencies ?? this.currencies,
        capitalInfo: capitalInfo ?? this.capitalInfo,
        car: car ?? this.car,
        cioc: cioc ?? this.cioc,
        fifa: fifa ?? this.fifa,
        gini: gini ?? this.gini,
        hasCoatOfArms: hasCoatOfArms ?? this.hasCoatOfArms,
        independent: independent ?? this.independent,
        landlocked: landlocked ?? this.landlocked,
        postalCode: postalCode ?? this.postalCode,
        bordersCodes: bordersCodes ?? this.bordersCodes,
        startOfWeek: startOfWeek ?? this.startOfWeek,
        subregion: subregion ?? this.subregion,
        unMember: unMember ?? this.unMember,
        regionalBlocs: regionalBlocs ?? this.regionalBlocs,
      );
}
