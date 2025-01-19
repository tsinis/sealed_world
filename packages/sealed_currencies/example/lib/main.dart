// ignore_for_file: avoid_print, prefer-match-file-name

import "package:l10n_currencies/l10n_currencies.dart";
import "package:sealed_currencies/sealed_currencies.dart";

void main() {
  print(FiatCurrency.listExtended.length); // Prints: "169".

  final serbianDinar = FiatCurrency.fromCode("RSD");
  print(serbianDinar.name); // Prints: "Serbian Dinar".

  final maybeEuro = FiatCurrency.maybeFromValue(
    "Euro",
    where: (currency) => currency.namesNative.first,
  );
  print(maybeEuro.isEur); // Prints: true.
  print(maybeEuro?.toString(short: false));
  /*
  Prints: "FiatCurrency(code: "EUR", name: "Euro", decimalMark: ",",
  thousandsSeparator: ".", symbol: r"€", htmlEntity: "€", codeNumeric: "978",
  namesNative: ["Euro"], priority: 2, smallestDenomination: 1, subunit: "Cent",
  subunitToUnit: 100, unitFirst: true,)".
  */

  print(isVikingKrone(const FiatNok())); // Prints: true.
  print(isVikingKrone(serbianDinar)); // Prints: null.
  print(isVikingKrone(const FiatCzk())); // Prints: false.

  FiatCurrency.list
      .where((currency) => currency.symbol?.contains("kr") ?? false)
      .forEach(print);
  // Prints:
  // Currency(code: DKK)
  // Currency(code: ISK)
  // Currency(code: NOK)
  // Currency(code: SEK).

  serbianDinar.toJson(); // Converts currency to a valid JSON.

  /// Translations:
  // Prints German translations of all available regular currencies.
  final germanNames = FiatCurrency.list.commonNamesMap(
    options: const LocaleMappingOptions(mainLocale: BasicLocale(LangDeu())),
  );

  print(
    """Fully translated to German: ${germanNames.length == FiatCurrency.list.length}""",
  ); // Prints: "Fully translated to German: true".
  for (final deuTranslation in germanNames.entries) {
    print("German name of ${deuTranslation.key.name}: ${deuTranslation.value}");
  }

  print(
    serbianDinar.maybeCommonNameFor(const BasicLocale(LangPol())),
  ); // Prints Polish name of RSD: "dinar serbski".

  const customFiat = _FiatCustom();

  print(customFiat.name); // Prints "Custom".
  print(
    customFiat.commonNameFor(const BasicLocale(LangEng())),
  ); // Prints "Custom currency".
}

/// [Currency] is a sealed class, it means
/// this `whenOrNull` can be used same way as switch:
/// ```dart
/// switch (currency) {
///  case FiatDkk():
///  case FiatIsk():
///  case FiatNok():
///  case FiatSek():
///    return true;
///  case FiatCzk():
///    return false;
///  default:
///    return null;
///}
/// ```
// ignore: prefer-static-class, just for example.
bool? isVikingKrone(FiatCurrency currency) => currency.whenOrNull(
      fiatCzk: () => false,
      fiatDkk: () => true,
      fiatIsk: () => true,
      fiatNok: () => true,
      fiatSek: () => true,
    );

/// Creates a instance of the custom currency with permissive constructor.
class _FiatCustom extends FiatCurrency {
  const _FiatCustom() : super.permissive(code: "123", name: "Custom");

  @override
  LocalizationDelegate get l10n => super.l10n.copyWith(
        mapper: () => CurrenciesLocaleMapper(
          other: {
            /// From the `l10n_currencies` package.
            "en": IsoLocaleMapper(
              other: {code: "$name currency", "$code+": "$name rich name"},
            ),
          },
        ).localize,
      );
}
