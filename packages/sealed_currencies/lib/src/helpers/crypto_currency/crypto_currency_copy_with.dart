import "../../model/currency/submodels/crypto_currency.dart";

/// Extension on [CryptoCurrency] that provides a `copyWith` method for
/// creating a new instance of [CryptoCurrency] with updated properties.
extension CryptoCurrencyCopyWith<T extends CryptoCurrency> on T {
  /// {@macro copy_with_method}
  ///
  /// Example usage:
  ///
  /// ```dart
  /// import "package:sealed_currencies/sealed_currencies.dart";
  ///
  /// void main() {
  ///   const bitcoin = CryptoCurrency(code: "BTC", name: "Bitcoin");
  ///   final customBtc = bitcoin.copyWith(name: "Custom Bitcoin");
  ///   assert(customBtc.name == "Custom Bitcoin");
  /// }
  /// ```
  CryptoCurrency copyWith({
    String? code,
    String? name,
    DateTime? dateAdded,
    String? decimalMark,
    bool? isFork,
    bool? isMinable,
    String? proofType,
    String? symbol,
    String? thousandsSeparator,
  }) => CryptoCurrency(
    code: code ?? this.code,
    name: name ?? this.name,
    dateAdded: dateAdded ?? this.dateAdded,
    decimalMark: decimalMark ?? this.decimalMark,
    isFork: isFork ?? this.isFork,
    isMinable: isMinable ?? this.isMinable,
    proofType: (proofType?.isEmpty ?? false)
        ? null
        : (proofType ?? this.proofType),
    symbol: (symbol?.isEmpty ?? false) ? null : (symbol ?? this.symbol),
    thousandsSeparator: thousandsSeparator ?? this.thousandsSeparator,
  );
}
