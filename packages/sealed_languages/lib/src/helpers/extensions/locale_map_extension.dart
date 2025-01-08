import "dart:collection";

import "../../interfaces/basic_locale_parser.dart";
import "../../model/translated_name.dart";
import "../../typedefs/typedefs.dart";
import "../utils/locale_parser.dart";
import "basic_locale_extension.dart";

extension LocaleMapExtension on UnmodifiableMapView<IsoLocaleKey, String> {
  List<TranslatedName> toTranslatedNames({
    required String altSymbol,
    BasicLocaleParser parser = const LocaleParser(),
  }) =>
      List.unmodifiable(
        entries
            .map((entry) => _maybeToTranslatedName(entry, altSymbol, parser))
            .nonNulls,
      );

  TranslatedName? _maybeToTranslatedName(
    MapEntry<IsoLocaleKey, String> entry,
    String altSymbol,
    BasicLocaleParser parser,
  ) {
    final isoCode = entry.key.isoCode;
    if (isoCode.endsWith(altSymbol)) return null;

    final locale = entry.key.locale;
    final basicLocale = parser.parse(locale);
    if (basicLocale == null) return null;

    final fullName = this[(isoCode: isoCode + altSymbol, locale: locale)];

    return basicLocale.toTranslatedName(entry.value, fullName: fullName);
  }
}
