part of "../currency.dart";

/// A class representing a cryptocurrency.
///
/// This class extends the [Currency] class and adds additional properties
/// specific to cryptocurrencies.
class CryptoCurrency extends Currency {
  /// Creates a new instance of [CryptoCurrency].
  ///
  /// The `code` and `name` parameters are required. The `decimalMark` and
  /// `thousandsSeparator` parameters default to "." and "," respectively.
  ///
  /// The `symbol` parameter is optional.
  ///
  /// The `isMinable` and `isFork` parameters are optional and default to false.
  ///
  /// The `proofType` and `dateAdded` parameters are optional.
  ///
  /// Throws an `AssertionError` if `proofType` is empty.
  const CryptoCurrency({
    required super.code,
    required super.name,
    super.decimalMark = ".",
    super.thousandsSeparator = ",",
    super.symbol,
    this.isMinable = false,
    this.isFork = false,
    this.proofType,
    this.dateAdded,
  }) : assert(
          proofType == null || proofType.length > 0,
          "`proofType` should not be empty!",
        );

  /// Indicates whether this cryptocurrency can be mined.
  final bool isMinable;

  /// Indicates whether this cryptocurrency is a fork of another cryptocurrency.
  final bool isFork;

  /// The proof type of this cryptocurrency (if applicable).
  final String? proofType;

  /// The date this cryptocurrency was added (if known).
  final DateTime? dateAdded;

  /// Returns a string representation of the cryptocurrency.
  ///
  /// The `short` parameter determines whether to print only the `code` or to
  /// print the full details of the cryptocurrency. By default, only the `code`
  /// is printed.
  @override
  String toString({bool short = true}) => short
      ? super.toString()
      : '''$CryptoCurrency(code: "$code", name: "$name", decimalMark: "$decimalMark", thousandsSeparator: "$thousandsSeparator", symbol: ${symbol == null ? symbol : '"$symbol"'}, isMinable: $isMinable, isFork: $isFork, proofType: ${proofType == null ? proofType : '"$proofType"'}, dateAdded: $dateAdded)''';
}
