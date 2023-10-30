import "package:sealed_languages/sealed_languages.dart";

import "../data/fiat_currencies.data.dart";
import "../helpers/fiat_currency/fiat_currency_json.dart";

part "submodels/crypto_currency.dart";
part "submodels/fiat_currency.dart";
part "submodels/fiat_currency.g.dart";

/// A class representing a currency. This is an abstract class and should not be
/// instantiated directly.
///
/// The `code`, `decimalMark`, `name`, and `thousandsSeparator` parameters are
/// required. The `symbol` parameter is optional.
///
/// This class provides common properties for currencies, such as the `code`,
/// `name`, `symbol`, `decimalMark`, and `thousandsSeparator`. It also provides
/// a `toString` method that can be used to print the contents of a `Currency`
/// instance.
///
/// This class is extended by the [FiatCurrency] and [CryptoCurrency] classes,
/// which provide additional properties specific to fiat and crypto currencies,
/// respectively.
///
/// The `code` parameter should not be empty. The `name` parameter should not be
/// empty. The `symbol` parameter should not be empty if it is provided.
sealed class Currency implements Named<String> {
  /// Creates a new instance of [Currency].
  ///
  /// The `code`, `decimalMark`, `name`, and `thousandsSeparator` parameters are
  /// required. The `symbol` parameter is optional.
  ///
  /// Throws an `AssertionError` if `code` is empty, `name` is empty, or
  /// `symbol` is empty (if provided).
  const Currency({
    required this.code,
    required this.decimalMark,
    required this.name,
    required this.thousandsSeparator,
    this.symbol,
  })  : assert(code.length > 0, "`code` should not be empty!"),
        assert(name.length > 0, "`name` should not be empty!"),
        assert(
          symbol == null || symbol.length > 0,
          "`symbol` should not be empty!",
        );

  /// The standardized code for the currency.
  ///
  /// This field is typically a three-letter code that uniquely identifies the
  /// currency.
  final String code;

  /// The decimal mark, or character used to separate the whole unit from the
  /// subunit.
  final String decimalMark;

  /// The name of the currency.
  @override
  final String name;

  /// The character used to separate thousands grouping of the whole unit.
  final String thousandsSeparator;

  /// The currency symbol.
  final String? symbol;

  /// Returns a string representation of the currency.
  ///
  /// The `short` parameter determines whether to print only the `code` or to
  /// print the full details of the currency. By default, only the `code` is
  /// printed.
  @override
  String toString({bool short = true}) => short
      ? 'Currency(code: "$code")'
      : '''Currency(code: "$code", name: "$name", symbol: ${symbol == null ? symbol : '"$symbol"'}, decimalMark: "$decimalMark", thousandsSeparator: "$thousandsSeparator")''';
}
