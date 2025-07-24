// ignore_for_file: avoid-referencing-subclasses, those are static constants.

part of "../currency.dart";

/// A class representing fiat currency.
///
/// This class extends the general [Currency] class and adds additional
/// properties specific to fiat currencies.
class FiatCurrency extends Currency
    implements
        IsoTranslated<TranslatedName, String, BasicLocale>,
        JsonEncodable<FiatCurrency>,
        Comparable<FiatCurrency> {
  /// {@template currency_constructor}
  /// Creates a new instance of [FiatCurrency].
  ///
  /// The [code], [name], [namesNative], [translations] and [codeNumeric]
  /// parameters are required. The [priority] parameter defaults to 100, and
  /// the [smallestDenomination] parameter defaults to 1.
  ///
  /// The [alternateSymbols], [disambiguateSymbol], [htmlEntity], [subunit],
  /// [subunitToUnit], and [unitFirst] parameters are optional.
  ///
  /// The [symbol], [decimalMark], and [thousandsSeparator] parameters are
  /// inherited from the [Currency] class and are also optional.
  /// {@endtemplate}
  /// Throws an [AssertionError] if [code] is not exactly 3 characters long,
  /// [codeNumeric] is not exactly 3 characters long, [namesNative] is empty,
  /// [htmlEntity] is empty, [subunit] is empty, [alternateSymbols] is empty, or
  /// [smallestDenomination] is negative.
  const FiatCurrency({
    /// The international 3-numeric non-empty letter code as defined by the ISO
    /// 4217 standard.
    required super.code,
    required super.name,
    required this.namesNative,
    required this.codeNumeric,
    this.alternateSymbols,
    this.disambiguateSymbol,
    this.htmlEntity,
    this.priority = 100,
    this.smallestDenomination = 1,
    this.subunit,
    this.subunitToUnit = 100,
    this.unitFirst = false,
    super.symbol,
    super.decimalMark = dot,
    super.thousandsSeparator = ",",
    List<TranslatedName>? translations,
  }) : assert(
         code.length == IsoStandardized.codeLength,
         """`code` should be exactly ${IsoStandardized.codeLength} characters long!""",
       ),
       assert(
         codeNumeric.length == IsoStandardized.codeLength,
         """`codeNumeric` should be exactly ${IsoStandardized.codeLength} characters long!""",
       ),
       assert(
         namesNative != const <String>[],
         "`namesNative` should not be empty!",
       ),
       assert(
         htmlEntity == null || htmlEntity.length > 0,
         "`htmlEntity` should not be empty!",
       ),
       assert(
         subunit == null || subunit.length > 0,
         "`subunit` should not be empty!",
       ),
       assert(
         alternateSymbols != const <String>[],
         "`alternateSymbols` should not be empty!",
       ),
       assert(
         smallestDenomination >= 0,
         "`smallestDenomination` should not be negative!",
       ),
       _translations = translations;

  /// {@macro permissive_constructor}
  /// {@macro currency_constructor}
  const FiatCurrency.permissive({
    required super.code,
    required super.name,
    this.namesNative = const [],
    this.codeNumeric = "",
    this.alternateSymbols,
    this.disambiguateSymbol,
    this.htmlEntity,
    this.priority = 100,
    this.smallestDenomination = 1,
    this.subunit,
    this.subunitToUnit = 100,
    this.unitFirst = false,
    super.symbol,
    super.decimalMark = dot,
    super.thousandsSeparator = ",",
    List<TranslatedName>? translations,
  }) : _translations = translations;

  /// Returns a [FiatCurrency] instance from an letter ISO 4217 code.
  ///
  /// The [code] parameter is required and should be an object representing
  /// the three-letter ISO 4217 code for the currency.
  /// {@macro any_code_object}
  /// The optional [currencies] parameter can be used to specify a list of
  /// [FiatCurrency] objects to search through.
  /// {@macro optional_instances_array_parameter}
  /// This method returns the [FiatCurrency] instance
  /// that corresponds to the given code, or throws a [StateError] if no such
  /// instance exists.
  factory FiatCurrency.fromCode(
    Object code, [
    Iterable<FiatCurrency>? currencies,
  ]) => currencies == null
      ? codeMap.findByCodeOrThrow(code)
      : currencies.firstIsoWhereCode(IsoObject(code).toUpperCaseCode());

  /// Returns a [FiatCurrency] instance from an numeric ISO 4217 code.
  ///
  /// The [codeNumeric] parameter is required and should be an object
  /// representing the three-letter numeric ISO 4217 code for the currency.
  /// {@macro any_code_object}
  /// The optional [currencies] parameter can be used to specify a list of
  /// [FiatCurrency] objects to search through.
  /// {@macro optional_instances_array_parameter}
  /// This method returns the
  /// [FiatCurrency] instance that corresponds to the given code, or throws a
  /// [StateError] if no such instance exists.
  factory FiatCurrency.fromCodeNumeric(
    Object codeNumeric, [
    Iterable<FiatCurrency>? currencies,
  ]) => currencies == null
      ? codeNumericMap.findByCodeOrThrow(codeNumeric)
      : currencies.firstIsoWhereCodeOther(
          IsoObject(codeNumeric).toUpperCaseCode(),
        );

  /// Returns a [FiatCurrency] instance from a currency name.
  ///
  /// The [name] parameter is required and should be an object non-empty string
  /// representing the name of the currency.
  /// {@macro any_code_object}
  /// The optional [currencies] parameter can be used to specify a list of
  /// [FiatCurrency] objects to search through.
  /// {@macro optional_instances_array_parameter}
  /// This method returns the
  /// [FiatCurrency] instance that corresponds to the given name, or throws a
  /// [StateError] if no such instance exists.
  factory FiatCurrency.fromName(
    Object name, [
    Iterable<FiatCurrency> currencies = listExtended,
    // ignore: avoid-non-empty-constructor-bodies, more clear for factory methods.
  ]) {
    final upperCaseName = IsoObject.maybe(name)?.toUpperCaseCode();

    return currencies.firstIsoWhere(
      (currency) => currency.name.toUpperCase() == upperCaseName,
    );
  }

  /// Returns an instance of the [FiatCurrency] class from any valid
  /// ISO 4217 code.
  ///
  /// The [code] parameter is required and should be an object representing the
  /// ISO 4217 code for the currency.
  /// {@macro any_code_object}
  /// The optional [currencies] parameter can be used to specify a list of
  /// [FiatCurrency] objects to search through.
  /// {@macro optional_instances_array_parameter}
  /// This method returns the [FiatCurrency] instance that corresponds to the
  /// given code, or throws a [StateError] if no such instance exists.
  ///
  /// Example:
  /// ```dart
  /// final currency = FiatCurrency.fromAnyCode("eur");
  /// ```
  ///
  /// In the above example, the  factory method is called with the
  /// code "eur". It uses the `maybeMapIsoCode` method to determine the
  /// appropriate mapping for the code. If the code is numeric, it calls the
  /// `fromCodeNumeric` factory method to create a [FiatCurrency] instance.
  /// Otherwise, it calls the `fromCode` factory method to create a
  /// [FiatCurrency] instance. The resulting [FiatCurrency] instance is assigned
  /// to the [code] variable.
  factory FiatCurrency.fromAnyCode(
    Object code, [
    Iterable<FiatCurrency>? currencies,
  ]) => currencies == null
      ? map.findByCodeOrThrow(code)
      : IsoObject(code).toUpperCaseCode().maybeMapIsoCode(
          orElse: (regular) => FiatCurrency.fromCode(regular, currencies),
          numeric: (numeric) =>
              FiatCurrency.fromCodeNumeric(numeric, currencies),
          minLength: IsoStandardized.codeLength,
        );

  /// Alternative symbols for this currency or `null` if no such symbols exists.
  final List<String>? alternateSymbols;

  /// Alternative currency used if symbol is ambiguous, or `null` if no such
  /// symbol exists.
  final String? disambiguateSymbol;

  /// The HTML entity for the currency symbol, or `null` if no such entity
  /// exists.
  final String? htmlEntity;

  /// The international 3-numeric non-empty numeric code as defined by the ISO
  /// 4217 standard.
  final String codeNumeric;

  /// The native names of the currency in different locales.
  @override
  final List<String> namesNative;

  /// A numerical value that can be used to sort/group any currency list.
  final int priority;

  /// Smallest amount of cash possible (in the subunit of this currency).
  final int smallestDenomination;

  /// The name of the fractional monetary unit, or `null` if no such name
  /// exists.
  final String? subunit;

  /// The proportion between the unit and the subunit.
  final int subunitToUnit;

  /// Should the currency symbol precede the amount, or should it come after?
  final bool unitFirst;

  /// Default decimal separator for most currencies.
  static const dot = ".";

  /// The international 3-numeric non-empty numeric code as defined by the ISO
  /// 4217 standard.
  @override
  String get codeOther => codeNumeric;

  @override
  String get internationalName => name;

  @override
  List<TranslatedName> get translations =>
      _translations ?? l10n.translatedNames({this});

  @override
  LocalizationDelegate get l10n =>
      LocalizationDelegate(mapper: () => CurrenciesLocaleMapper().localize);

  /// Returns a string representation of this instance.
  @override
  String toString({bool short = true}) => short
      ? super.toString()
      : 'FiatCurrency(code: "$code", name: "$name", '
            'decimalMark: "$decimalMark", '
            'thousandsSeparator: "$thousandsSeparator", '
            '${symbol == null ? '' : 'symbol: r"$symbol", '}'
            '''${alternateSymbols == null ? '' : 'alternateSymbols: ${jsonEncode(alternateSymbols)}, '}'''
            '''${disambiguateSymbol == null ? '' : 'disambiguateSymbol: r"$disambiguateSymbol", '}'''
            '${htmlEntity == null ? '' : 'htmlEntity: r"$htmlEntity", '}'
            'codeNumeric: "$codeNumeric", '
            "namesNative: ${jsonEncode(namesNative)}, "
            "priority: $priority, smallestDenomination: $smallestDenomination, "
            '${subunit == null ? '' : 'subunit: "$subunit", '}'
            "subunitToUnit: $subunitToUnit, unitFirst: $unitFirst,)";

  @override
  String toJson({JsonCodec codec = const JsonCodec()}) => codec.encode(toMap());

  @override
  int compareTo(FiatCurrency other) => code.compareTo(other.code);

  /// Returns a [FiatCurrency] object whose [code] or the value returned by
  /// [where] matches the specified [value], or `null` if no such object exists
  /// in the specified [currencies] list.
  ///
  /// The [value] parameter is required and should be of type `T`. If [where] is
  /// not `null`, this method uses the result of calling [where] with each
  /// [FiatCurrency] object in [currencies] to determine whether the object's
  /// [code] matches [value]. If [where] is `null`, this method simply compares
  /// each [FiatCurrency]'s [code] to [value].
  ///
  /// The optional [currencies] parameter specifies the list of [FiatCurrency]
  /// objects to search (defaults to [FiatCurrency.listExtended]).
  ///
  /// Example usage:
  ///
  /// ```dart
  /// final euro = FiatCurrency.maybeFromValue(
  ///   "Euro",
  ///   where: (currency) => currency.namesNative.first,
  /// );
  /// print(euro); // Prints: "Currency(code: "EUR")".
  /// ```
  static FiatCurrency? maybeFromValue<T extends Object>(
    T value, {
    T? Function(FiatCurrency currency)? where,
    Iterable<FiatCurrency> currencies = listExtended,
  }) {
    currencies.assertNotEmpty();

    for (final currency in currencies) {
      final expectedValue = where?.call(currency) ?? currency.code;
      if (expectedValue == value) return currency;
    }

    return null;
  }

  /// Returns a [FiatCurrency] instance that corresponds to the given code, or
  /// `null` if no such instance exists.
  ///
  /// The [code] parameter is required and represent the ISO 4217 currency code.
  /// {@macro any_code_object}
  /// The optional [currencies] parameter can be used to specify a list of
  /// [FiatCurrency] objects to search through.
  /// {@macro optional_instances_array_parameter}
  ///  This method returns the
  /// [FiatCurrency] instance that corresponds to the given value, or `null` if
  /// no such instance exists.
  ///
  /// Example:
  /// ```dart
  /// FiatCurrency? fiat = FiatCurrency.maybeFromAnyCode(CurrencyEnum.eur.name);
  /// print(fiat != null) // Prints: true.
  /// ```
  ///
  /// In the above example, the `maybeFromAnyCode` method is called with the
  /// value "eur". It uses the `maybeMapIsoCode` method to determine the
  /// appropriate mapping for the value. If the value is numeric, it compares it
  /// with the `codeNumeric` property of each [FiatCurrency] instance.
  /// Otherwise, it compares it with the uppercase version of the [code]
  /// property of each [FiatCurrency] instance. The resulting [FiatCurrency]
  /// instance is assigned to the `currency` variable.
  static FiatCurrency? maybeFromAnyCode(
    Object? code, [
    Iterable<FiatCurrency>? currencies,
  ]) => currencies == null
      ? map.maybeFindByCode(code)
      : IsoObject.maybe(code)?.toUpperCaseCode().maybeMapIsoCode(
          orElse: (regular) => maybeFromCode(regular, currencies),
          numeric: (numeric) => maybeFromCodeNumeric(numeric, currencies),
          minLength: IsoStandardized.codeLength,
        );

  /// Returns a [FiatCurrency] instance from an letter ISO 4217 code, or
  /// `null` if no such instance exists.
  ///
  /// The [code] parameter is required and should be an object representing
  /// the three-letter ISO 4217 code for the currency.
  /// {@macro any_code_object}
  /// The optional [currencies] parameter can be used to specify a list of
  /// [FiatCurrency] objects to search through.
  /// {@macro optional_instances_array_parameter}
  /// This method returns the [FiatCurrency] instance
  /// that corresponds to the given code, or `null` if no such
  /// instance exists.
  static FiatCurrency? maybeFromCode(
    Object? code, [
    Iterable<FiatCurrency>? currencies,
  ]) {
    if (currencies == null) return codeMap.maybeFindByCode(code);
    final string = IsoObject.maybe(code)?.toUpperCaseCode().maybeToValidIsoCode(
      exactLength: IsoStandardized.codeLength,
    );

    return currencies.firstIsoWhereCodeOrNull(string);
  }

  /// Returns a [FiatCurrency] instance from an numeric ISO 4217 code, or
  /// `null` if no such instance exists.
  ///
  /// The [codeNumeric] parameter is required and should be an object
  /// representing the three-letter numeric ISO 4217 code for the currency.
  /// {@macro any_code_object}
  /// The optional [currencies] parameter can be used to specify a list of
  /// [FiatCurrency] objects to search through.
  /// {@macro optional_instances_array_parameter}
  /// This method returns the [FiatCurrency] instance that corresponds to the
  /// given code, or `null` if no such instance exists.
  static FiatCurrency? maybeFromCodeNumeric(
    Object? codeNumeric, [
    Iterable<FiatCurrency>? currencies,
  ]) {
    if (currencies == null) return codeNumericMap.maybeFindByCode(codeNumeric);

    final string = IsoObject.maybe(codeNumeric)
        ?.toUpperCaseCode()
        .maybeToValidIsoCode(exactLength: IsoStandardized.codeLength);

    return currencies.firstIsoWhereCodeOtherOrNull(string);
  }

  /// The general standard ISO code for currencies, defined as ISO 4217.
  static const standardGeneralName = "4217";

  /// The standard ISO code name for currencies, defined as ISO 4217 Alpha.
  static const standardCodeName = "$standardGeneralName Alpha";

  /// The standard numeric ISO code name for currencies, defined as
  /// ISO 4217 Numeric.
  static const standardCodeNumericName = "$standardGeneralName Numeric";

  /// A tree-shakable constant map containing 3-letter currency (ISO 4217 Alpha)
  /// codes and their associated [FiatCurrency] objects, for a O(1) access time.
  ///
  /// Example usage:
  ///
  /// ```dart
  /// FiatCurrency.codeMap['USD']; // FiatUsd().
  /// ```
  static const codeMap = UpperCaseIsoMap<FiatCurrency>(fiatCurrencyCodeMap);

  /// A tree-shakable constant map containing 3-digit numeric currency
  /// (ISO 4217 Numeric) codes and their associated [FiatCurrency] objects,
  /// for a O(1) access time.
  ///
  /// Example usage:
  ///
  /// ```dart
  /// FiatCurrency.codeNumericMap[840.toString()]; // FiatUsd().
  /// ```
  static const codeNumericMap = UpperCaseIsoMap<FiatCurrency>(
    fiatCurrencyCodeOtherMap,
  );

  /// A tree-shakable combined map of [codeMap] and [codeNumericMap], providing
  /// a unified view of currency codes (ISO 4217) and their [FiatCurrency
  /// objects, for a O(1) access time.
  ///
  /// Example usage:
  ///
  /// ```dart
  /// FiatCurrency.map['usd']; // FiatUsd().
  /// ```
  static const map = UpperCaseIsoMap<FiatCurrency>({
    ...fiatCurrencyCodeMap,
    ...fiatCurrencyCodeOtherMap,
  });

  /// A list of the regular currencies currently supported by the [FiatCurrency]
  /// class. For a full list with non-regular currencies please
  /// use [listExtended].
  // ignore: avoid-explicit-type-declaration, vs specify_nonobvious_property_types.
  static const List<FiatCurrency> list = fiatCurrencyList;

  /// A list of special purpose fiat currencies (currencies that are
  /// not being used in the regular transactional currencies list).
  ///
  /// This list contains instances of various [FiatCurrency] subclasses
  /// that represent special purpose fiat currencies.
  static const specialPurposeList = <FiatCurrency>[
    FiatXag(),
    FiatXau(),
    FiatXba(),
    FiatXbb(),
    FiatXbc(),
    FiatXbd(),
    FiatXdr(),
    FiatXpd(),
    FiatXpt(),
    FiatXts(),
  ];

  /// A list of all currencies currently supported by the
  /// [FiatCurrency] class. This is combination of [FiatCurrency.list]
  /// plus all currencies from the [FiatCurrency.specialPurposeList].
  static const listExtended = <FiatCurrency>[...list, ...specialPurposeList];

  final List<TranslatedName>? _translations;
}
