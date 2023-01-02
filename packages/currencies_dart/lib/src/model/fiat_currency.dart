part of "currency.dart";

class FiatCurrency extends Currency {
  const FiatCurrency({
    required String code,
    required super.name,
    required this.isoNumeric,
    this.alternateSymbols,
    this.disambiguateSymbol,
    this.htmlEntity,
    this.priority = 100,
    this.smallestDenomination = 1,
    this.subunit,
    this.subunitToUnit = 100,
    super.symbol,
    this.unitFirst = false,
    super.decimalMark = ".",
    super.thousandsSeparator = ",",
  }) : super(code);

  factory FiatCurrency.fromMap(Map<String, Object?> data) => FiatCurrency(
        code: data["code"]! as String,
        name: data["name"]! as String,
        isoNumeric: data["iso_numeric"] as String?,
        alternateSymbols: data["alternate_symbols"] as List<String>?, // TODO!
        disambiguateSymbol: data["disambiguate_symbol"] as String?,
        htmlEntity: data["html_entity"] as String?,
        priority: data["priority"]! as int,
        smallestDenomination: data["smallest_denomination"]! as int,
        subunit: data["subunit"] as String?,
        subunitToUnit: data["subunit_to_unit"]! as int,
        symbol: data["symbol"] as String?,
        unitFirst: data["unit_first"]! as bool,
        decimalMark: data["decimal_mark"]! as String,
        thousandsSeparator: data["thousands_separator"]! as String,
      );

  /// `dart:convert`
  ///
  /// Parses the string, returns the resulting Json object as [FiatCurrency].
  factory FiatCurrency.fromJson(String data) =>
      FiatCurrency.fromMap(json.decode(data) as Map<String, Object?>);

  final String? isoNumeric;

  final List<String>? alternateSymbols;
  final String? disambiguateSymbol;
  final String? htmlEntity;
  final int priority;
  final int smallestDenomination;
  final String? subunit;
  final int subunitToUnit;
  final bool unitFirst;

  @override
  String toString() =>
      """FiatCurrency(code: $code, priority: $priority, name: $name, symbol: $symbol, disambiguateSymbol: $disambiguateSymbol, alternateSymbols: $alternateSymbols, subunit: $subunit, subunitToUnit: $subunitToUnit, unitFirst: $unitFirst, htmlEntity: $htmlEntity, decimalMark: $decimalMark, thousandsSeparator: $thousandsSeparator, isoNumeric: $isoNumeric, smallestDenomination: $smallestDenomination)""";

  @override
  Map<String, Object?> toMap() => {
        "code": code,
        "priority": priority,
        "name": name,
        "symbol": symbol,
        "disambiguate_symbol": disambiguateSymbol,
        "alternate_symbols": alternateSymbols,
        "subunit": subunit,
        "subunit_to_unit": subunitToUnit,
        "unit_first": unitFirst,
        "html_entity": htmlEntity,
        "decimal_mark": decimalMark,
        "thousands_separator": thousandsSeparator,
        "iso_numeric": isoNumeric,
        "smallest_denomination": smallestDenomination,
      };

  String get isoCode => code;
  String get unit => symbol ?? code;

  // TODO: Extend for decimalMark and thousandsSeparator.
  String format(num value) => unitFirst ? "$unit $value" : "$value $unit";
}
