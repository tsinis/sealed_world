part of "../currency.dart";

/// A class representing fiat currency.
///
/// This class extends the general [Currency] class and adds additional
/// properties specific to fiat currencies.
class FiatCurrency extends Currency
    implements
        IsoStandardized<String>,
        JsonEncodable<FiatCurrency>,
        Translated<TranslatedName> {
  /// Creates a new instance of [FiatCurrency].
  ///
  /// The `code`, `name`, `namesNative`, and `codeNumeric` parameters are
  /// required. The `priority` parameter defaults to 100, and the
  /// `smallestDenomination` parameter defaults to 1.
  ///
  /// The `alternateSymbols`, `disambiguateSymbol`, `htmlEntity`, `subunit`,
  /// `subunitToUnit`, and `unitFirst` parameters are optional.
  ///
  /// The `symbol`, `decimalMark`, and `thousandsSeparator` parameters are
  /// inherited from the [Currency] class and are also optional.
  ///
  /// Throws an `AssertionError` if `code` is not exactly 3 characters long,
  /// `codeNumeric` is not exactly 3 characters long, `namesNative` is empty,
  /// `htmlEntity` is empty, `subunit` is empty, `alternateSymbols` is empty, or
  /// `smallestDenomination` is negative.
  const FiatCurrency({
    /// The international 3-numeric non-empty letter code as defined by the ISO
    /// 4217 standard.
    required super.code,
    required super.name,
    required this.namesNative,
    required this.codeNumeric,
    required this.translations,
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
  })  : assert(
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
        assert(
          translations != const <TranslatedName>[],
          "`translations` should not be empty!",
        );

  /// Returns a [FiatCurrency] instance from an letter ISO 4217 code.
  ///
  /// The [code] parameter is required and should be a three-letter string
  /// representing the letter ISO 4217 code for the currency. The optional
  /// [currencies] parameter can be used to specify a list of [FiatCurrency]
  /// objects to search through. This method returns the [FiatCurrency] instance
  /// that corresponds to the given code, or throws a [StateError] if no such
  /// instance exists.
  factory FiatCurrency.fromCode(
    String code, [
    Iterable<FiatCurrency> currencies = list,
  ]) {
    assert(currencies.isNotEmpty, "`currencies` should not be empty!");

    return currencies
        .firstWhere((currency) => currency.code == code.trim().toUpperCase());
  }

  /// Returns a [FiatCurrency] instance from an numeric ISO 4217 code.
  ///
  /// The [codeNumeric] parameter is required and should be a three-letter
  /// string representing the numeric ISO 4217 code for the currency.The
  /// optional [currencies] parameter can be used to specify a list of
  /// [FiatCurrency] objects to search through. This method returns the
  /// [FiatCurrency] instance that corresponds to the given code, or throws a
  /// [StateError] if no such instance exists.
  factory FiatCurrency.fromCodeNumeric(
    String codeNumeric, [
    Iterable<FiatCurrency> currencies = list,
  ]) {
    assert(currencies.isNotEmpty, "`currencies` should not be empty!");

    return currencies.firstWhere(
      (currency) => currency.codeNumeric == codeNumeric.trim(),
    );
  }

  /// Returns a [FiatCurrency] instance from a currency name.
  ///
  /// The [name] parameter is required and should be a non-empty string
  /// representing the name of the currency. The optional
  /// [currencies] parameter can be used to specify a list of [FiatCurrency]
  /// objects to search through. This method returns the
  /// [FiatCurrency] instance that corresponds to the given name, or throws a
  /// [StateError] if no such instance exists.
  factory FiatCurrency.fromName(
    String name, [
    Iterable<FiatCurrency> currencies = list,
  ]) {
    assert(currencies.isNotEmpty, "`currencies` should not be empty!");

    return currencies.firstWhere(
      (currency) => currency.name.toUpperCase() == name.trim().toUpperCase(),
    );
  }

  /// Returns an instance of the [FiatCurrency] class from any valid
  /// ISO 4217 code.
  ///
  /// The [code] parameter is required and should be a string representing the
  /// ISO 4217 code for the currency. The optional [currencies] parameter can be
  /// used to specify a list of [FiatCurrency] objects to search through.
  /// This method returns the [FiatCurrency] instance that corresponds to the
  /// given code, or throws a [StateError] if no such instance exists.
  ///
  /// Example:
  /// ```dart
  /// final currency = FiatCurrency.fromAnyCode("eur");
  /// ```
  ///
  /// In the above example, the `fromAnyCode` factory method is called with the
  /// code "eur". It uses the `maybeMapIsoCode` method to determine the
  /// appropriate mapping for the code. If the code is numeric, it calls the
  /// `fromCodeNumeric` factory method to create a [FiatCurrency] instance.
  /// Otherwise, it calls the `fromCode` factory method to create a
  /// [FiatCurrency] instance. The resulting [FiatCurrency] instance is assigned
  /// to the `code` variable.
  factory FiatCurrency.fromAnyCode(
    String code, [
    Iterable<FiatCurrency> currencies = list,
  ]) =>
      code.maybeMapIsoCode(
        orElse: (_) => FiatCurrency.fromCode(code, currencies),
        numeric: (_) => FiatCurrency.fromCodeNumeric(code, currencies),
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

  @override
  final List<TranslatedName> translations;

  /// Default decimal separator for most currencies.
  static const dot = ".";

  @override
  String? get codeOther => codeNumeric;

  /// Returns a string representation of this instance.
  @override
  String toString({bool short = true}) => short
      ? super.toString()
      : '''FiatCurrency(code: "$code", name: "$name", decimalMark: "$decimalMark", thousandsSeparator: "$thousandsSeparator", symbol: ${symbol == null ? symbol : 'r"$symbol"'}, alternateSymbols: ${alternateSymbols == null ? alternateSymbols : jsonEncode(alternateSymbols)}, disambiguateSymbol: ${disambiguateSymbol == null ? disambiguateSymbol : 'r"$disambiguateSymbol"'}, htmlEntity: ${htmlEntity == null ? htmlEntity : 'r"$htmlEntity"'}, codeNumeric: "$codeNumeric", namesNative: ${jsonEncode(namesNative)}, priority: $priority, smallestDenomination: $smallestDenomination, subunit: ${subunit == null ? subunit : '"$subunit"'}, subunitToUnit: $subunitToUnit, unitFirst: $unitFirst, translations: ${code.toLowerCase()}CurrencyTranslations)''';

  @override
  String toJson({JsonCodec codec = const JsonCodec()}) => codec.encode(toMap());

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
  /// objects to search (defaults to [FiatCurrency.list]).
  ///
  /// Example usage:
  ///
  /// ```dart
  /// final euro = FiatCurrency.maybeFromValue(
  ///   "Euro",
  ///   where: (currency) => currency.namesNative.first,
  /// );
  /// print(euro); // Prints: "Currency(code: EUR)".
  /// ```
  static FiatCurrency? maybeFromValue<T extends Object>(
    T value, {
    T? Function(FiatCurrency currency)? where,
    Iterable<FiatCurrency> currencies = list,
  }) {
    assert(currencies.isNotEmpty, "`currencies` should not be empty!");
    for (final currency in currencies) {
      final expectedValue = where?.call(currency) ?? currency.code;
      if (expectedValue == value) return currency;
    }

    return null;
  }

  /// Returns a [FiatCurrency] instance that corresponds to the given value, or
  /// `null` if no such instance exists.
  ///
  /// The [code] parameter is required and represents the value to match
  /// against. The optional [currencies] parameter can be used to specify a list
  /// of [FiatCurrency] objects to search through. This method returns the
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
  /// Otherwise, it compares it with the uppercase version of the `code`
  /// property of each [FiatCurrency] instance. The resulting [FiatCurrency]
  /// instance is assigned to the `currency` variable.
  static FiatCurrency? maybeFromAnyCode(
    String? code, [
    Iterable<FiatCurrency> currencies = list,
  ]) {
    assert(currencies.isNotEmpty, "`currencies` should not be empty!");
    final trimmedCode = code?.trim().toUpperCase();
    if (trimmedCode?.isEmpty ?? true) return null;

    for (final currency in currencies) {
      final expectedValue = trimmedCode?.maybeMapIsoCode(
        orElse: (_) => currency.code,
        numeric: (_) => currency.codeNumeric,
      );
      if (expectedValue == trimmedCode) return currency;
    }

    return null;
  }

  /// A list of all regular the currencies currently supported by the
  /// [FiatCurrency] class. This is subset of [FiatCurrency.list] that excludes
  /// all currencies from the [FiatCurrency.specialPurposeList].
  static List<FiatCurrency> get regularList => List.unmodifiable(
        FiatCurrency.list.where(
          (currency) => !FiatCurrency.specialPurposeList.contains(currency),
        ),
      );

  /// A list of all the currencies currently
  /// supported by the [FiatCurrency] class.
  static const list = [
    FiatAed(),
    FiatAfn(),
    FiatAll(),
    FiatAmd(),
    FiatAng(),
    FiatAoa(),
    FiatArs(),
    FiatAud(),
    FiatAwg(),
    FiatAzn(),
    FiatBam(),
    FiatBbd(),
    FiatBdt(),
    FiatBgn(),
    FiatBhd(),
    FiatBif(),
    FiatBmd(),
    FiatBnd(),
    FiatBob(),
    FiatBrl(),
    FiatBsd(),
    FiatBtn(),
    FiatBwp(),
    FiatByn(),
    FiatBzd(),
    FiatCad(),
    FiatCdf(),
    FiatChf(),
    FiatClf(),
    FiatClp(),
    FiatCny(),
    FiatCop(),
    FiatCrc(),
    FiatCuc(),
    FiatCup(),
    FiatCve(),
    FiatCzk(),
    FiatDjf(),
    FiatDkk(),
    FiatDop(),
    FiatDzd(),
    FiatEgp(),
    FiatErn(),
    FiatEtb(),
    FiatEur(),
    FiatFjd(),
    FiatFkp(),
    FiatGbp(),
    FiatGel(),
    FiatGhs(),
    FiatGip(),
    FiatGmd(),
    FiatGnf(),
    FiatGtq(),
    FiatGyd(),
    FiatHkd(),
    FiatHnl(),
    FiatHrk(),
    FiatHtg(),
    FiatHuf(),
    FiatIdr(),
    FiatIls(),
    FiatInr(),
    FiatIqd(),
    FiatIrr(),
    FiatIsk(),
    FiatJmd(),
    FiatJod(),
    FiatJpy(),
    FiatKes(),
    FiatKgs(),
    FiatKhr(),
    FiatKmf(),
    FiatKpw(),
    FiatKrw(),
    FiatKwd(),
    FiatKyd(),
    FiatKzt(),
    FiatLak(),
    FiatLbp(),
    FiatLkr(),
    FiatLrd(),
    FiatLsl(),
    FiatLyd(),
    FiatMad(),
    FiatMdl(),
    FiatMga(),
    FiatMkd(),
    FiatMmk(),
    FiatMnt(),
    FiatMop(),
    FiatMru(),
    FiatMur(),
    FiatMvr(),
    FiatMwk(),
    FiatMxn(),
    FiatMyr(),
    FiatMzn(),
    FiatNad(),
    FiatNgn(),
    FiatNio(),
    FiatNok(),
    FiatNpr(),
    FiatNzd(),
    FiatOmr(),
    FiatPab(),
    FiatPen(),
    FiatPgk(),
    FiatPhp(),
    FiatPkr(),
    FiatPln(),
    FiatPyg(),
    FiatQar(),
    FiatRon(),
    FiatRsd(),
    FiatRub(),
    FiatRwf(),
    FiatSar(),
    FiatSbd(),
    FiatScr(),
    FiatSdg(),
    FiatSek(),
    FiatSgd(),
    FiatShp(),
    FiatSle(),
    FiatSll(),
    FiatSos(),
    FiatSrd(),
    FiatSsp(),
    FiatStn(),
    FiatSvc(),
    FiatSyp(),
    FiatSzl(),
    FiatThb(),
    FiatTjs(),
    FiatTmt(),
    FiatTnd(),
    FiatTop(),
    FiatTry(),
    FiatTtd(),
    FiatTwd(),
    FiatTzs(),
    FiatUah(),
    FiatUgx(),
    FiatUsd(),
    FiatUyu(),
    FiatUzs(),
    FiatVes(),
    FiatVnd(),
    FiatVuv(),
    FiatWst(),
    FiatXaf(),
    FiatXag(),
    FiatXau(),
    FiatXba(),
    FiatXbb(),
    FiatXbc(),
    FiatXbd(),
    FiatXcd(),
    FiatXdr(),
    FiatXof(),
    FiatXpd(),
    FiatXpf(),
    FiatXpt(),
    FiatXts(),
    FiatYer(),
    FiatZar(),
    FiatZmw(),
    FiatZwl(),
  ];

  /// A list of special purpose fiat currencies (currencies that are
  /// not being used in the regular transactional currencies list).
  ///
  /// This list contains instances of various `FiatCurrency` subclasses
  /// that represent special purpose fiat currencies.
  static const specialPurposeList = [
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
}
