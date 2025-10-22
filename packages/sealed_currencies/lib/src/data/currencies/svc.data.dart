// ignore_for_file: deprecated_member_use_from_same_package, it's TODO!

part of "../../model/currency/currency.dart";

extension type const _SvcFactory._(FiatSvc _) implements FiatSvc {
  const _SvcFactory() : this._(const FiatSvc._());
}

/// A class that represents the the Salvadoran Colón currency.
@Deprecated("Use `FiatUsd()` instead")
class FiatSvc extends FiatCurrency {
  /// {@template sealed_world.currency_svc_constructor}
  /// Creates a instance of [FiatSvc] (Salvadoran Colón currency).
  ///
  /// ISO 4217 Alpha code: `SVC`, ISO 4217 Numeric code: `222`.
  /// {@endtemplate}
  @Deprecated("Use `FiatUsd()` instead")
  const factory FiatSvc() = _SvcFactory;

  const FiatSvc._()
    : super(
        code: "SVC",
        name: "Salvadoran Colón",
        symbol: "₡",
        alternateSymbols: const ["¢"],
        htmlEntity: "&#x20A1;",
        codeNumeric: "222",
        namesNative: const ["Colón salvadoreño"],
        subunit: "Centavo",
        unitFirst: true,
      );
}
