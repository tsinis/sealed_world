import "dart:ui";

// ignore: depend_on_referenced_packages, to match original code.
import "package:collection/collection.dart";
import "package:world_countries/world_countries.dart";

import "../../model/constants.dart";
import "../../model/parsed_data.dart";
import "../../model/world_data.dart";
import "../../routing/parsed_route.dart";

class RouteParseUtils {
  const RouteParseUtils({
    this.fallbackCountry = const CountrySrb(),
    this.fallbackCurrency = const FiatEur(),
  });

  final WorldCountry fallbackCountry;
  final FiatCurrency fallbackCurrency;

  ParsedData parseRoute(ParsedRoute route) {
    final code = route.parameters[Constants.code]?.toUpperCase() ?? "";
    if (code.isEmpty) return _returnWithoutCode(route.pathTemplate);
    if (route.pathTemplate == WorldData.country.pathTemplate) {
      final country = _maybeData(
        code,
        onCode: WorldCountry.maybeFromAnyCode,
        orElse: () => WorldCountry.maybeFromValue(
          code,
          where: (cnt) => cnt.name.common.toUpperCase(),
        ),
      );

      return _returnFromCountryData(country, data: WorldData.country);
    } else if (route.pathTemplate == WorldData.currency.pathTemplate) {
      final currency = _maybeData(
        code,
        onCode: FiatCurrency.maybeFromAnyCode,
        orElse: () => FiatCurrency.maybeFromValue(
          code,
          where: (cur) => cur.name.toUpperCase(),
        ),
      );

      return _returnFromCurrencyData(currency);
    } else if (route.pathTemplate == WorldData.language.pathTemplate) {
      final language = _maybeData(
        code,
        onCode: NaturalLanguage.maybeFromAnyCode,
        orElse: () => NaturalLanguage.maybeFromValue(
          code,
          where: (lang) => lang.name.toUpperCase(),
        ),
      );

      return _returnFromLanguageData(language);
    }

    return _returnFromCountryData(null);
  }

  static T? _maybeData<T extends IsoStandardized>(
    String code, {
    required T? Function(String code) onCode,
    required T? Function() orElse,
  }) =>
      code.length < Script.codeLength ? onCode(code) : orElse();

  ParsedData _returnFromCountryData(
    WorldCountry? maybeCountry, {
    FiatCurrency? maybeCurrency,
    NaturalLanguage? maybeLanguage,
    WorldData? data,
  }) {
    final country = maybeCountry ??
        PlatformDispatcher.instance.locale.maybeCountry ??
        fallbackCountry;

    return ParsedData(
      country: country,
      currency: maybeCurrency ?? country.currencies?.first ?? fallbackCurrency,
      language: maybeLanguage ?? country.languages.first,
      value: data ?? WorldData.values.first,
    );
  }

  ParsedData _returnFromCurrencyData(FiatCurrency? maybeCurrency) {
    if (maybeCurrency == null) return _returnFromCountryData(null);

    final maybeCountry = WorldCountry.list.firstWhereOrNull(
      (country) => country.currencies?.contains(maybeCurrency) ?? false,
    );

    return _returnFromCountryData(
      maybeCountry,
      maybeCurrency: maybeCurrency,
      data: WorldData.currency,
    );
  }

  ParsedData _returnFromLanguageData(NaturalLanguage? maybeLanguage) {
    if (maybeLanguage == null) return _returnFromCountryData(null);

    final maybeCountry = WorldCountry.list.firstWhereOrNull(
      (country) => country.languages.contains(maybeLanguage),
    );

    return _returnFromCountryData(
      maybeCountry,
      maybeLanguage: maybeLanguage,
      data: WorldData.language,
    );
  }

  ParsedData _returnWithoutCode(String pathTemplate) {
    WorldData? data;
    if (pathTemplate == WorldData.currency.path) data = WorldData.currency;
    if (pathTemplate == WorldData.language.path) data = WorldData.language;

    return _returnFromCountryData(null, data: data);
  }
}
