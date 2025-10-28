// ignore_for_file: deprecated_member_use_from_same_package, it's TODO!

part of "../../model/currency/currency.dart";

extension type const _BgnFactory._(FiatBgn _) implements FiatBgn {
  const _BgnFactory() : this._(const FiatBgn._());
}

/// A class that represents the Bulgarian Lev currency.
@Deprecated("Use `FiatEur()` instead (From 2026)")
class FiatBgn extends FiatCurrency {
  /// {@template sealed_world.currency_bgn_constructor}
  /// Creates a instance of [FiatBgn] (Bulgarian Lev currency).
  ///
  /// ISO 4217 Alpha code: `BGN`, ISO 4217 Numeric code: `975`.
  /// {@endtemplate}
  @Deprecated("Use `FiatEur()` instead (From 2026)")
  const factory FiatBgn() = _BgnFactory;

  const FiatBgn._()
    : super(
        code: "BGN",
        name: "Bulgarian Lev",
        symbol: "лв.",
        alternateSymbols: const ["lev", "leva", "лев", "лева"],
        codeNumeric: "975",
        namesNative: const ["Български лев"],
        subunit: "Stotinka",
      );
}
