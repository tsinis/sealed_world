// ignore_for_file: avoid_print, prefer-match-file-name

import "package:l10n_currencies/l10n_currencies.dart";
import "package:sealed_currencies/sealed_currencies.dart";

void main() {
  print(FiatCurrency.listExtended.length); // Prints: "171".

  final serbianDinar = FiatCurrency.fromCode("RSD");
  print(serbianDinar.name); // Prints: "Serbian Dinar".

  final maybeEuro = FiatCurrency.maybeFromValue(
    "Euro",
    where: (currency) => currency.namesNative.first,
  );
  print(maybeEuro == const FiatEur()); // Prints: true.
  print(maybeEuro?.toString(short: false));
  /*
  Prints: "FiatCurrency(code: "EUR", name: "Euro", decimalMark: ",",
  thousandsSeparator: ".", symbol: r"€", htmlEntity: "€", codeNumeric: "978",
  namesNative: ["Euro"], priority: 2, smallestDenomination: 1, subunit: "Cent",
  subunitToUnit: 100, unitFirst: true,)".
  */

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

/// Creates a instance of the custom currency with permissive constructor.
class _FiatCustom extends FiatCurrency {
  // ignore: deprecated_member_use_from_same_package, it's TODO!
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
