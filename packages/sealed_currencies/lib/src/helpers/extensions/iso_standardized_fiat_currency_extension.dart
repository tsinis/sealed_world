import "package:sealed_languages/sealed_languages.dart";

import "../../model/currency/currency.dart";

/// Extension on [IsoStandardized] objects that provides type checking
/// functionality for fiat currencies.
///
/// This extension allows for easy identification of whether an
/// [IsoStandardized] instance is a [FiatCurrency].
@Deprecated("Please use is check instead.")
extension IsoStandardizedFiatCurrencyExtension on IsoStandardized? {
  /// Returns `true` if this object is an instance of [FiatCurrency].
  ///
  /// This getter can be used to check if an [IsoStandardized] object
  /// represents a fiat currency.
  @Deprecated("Please use `is FiatCurrency` check instead.")
  bool get isFiatCurrency => this is FiatCurrency;
}
