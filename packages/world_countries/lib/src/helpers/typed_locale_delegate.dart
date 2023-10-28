import "package:flutter/widgets.dart";
import "package:sealed_countries/sealed_countries.dart";

import "../extensions/locale_extension.dart";
import "../models/locale/typed_locale.dart";
import "../models/typedefs.dart";

class TypedLocaleDelegate implements LocalizationsDelegate<TypedLocale?> {
  const TypedLocaleDelegate({this.fallbackLanguage, this.localeMapResolution});

  final NaturalLanguage? fallbackLanguage;
  final Iterable<LocaleEntry>? localeMapResolution;

  @override
  bool isSupported(Locale locale) => _toTypedLocale(locale) != null;

  @override
  Future<TypedLocale?> load(Locale locale) async {
    assert(
      isSupported(locale),
      """Unsupported locale: $locale, consider adding `localeMapResolution` and/or `fallbackLanguage`""",
    );

    return _toTypedLocale(locale);
  }

  @override
  bool shouldReload(TypedLocaleDelegate old) => false;

  @override
  String toString() =>
      """TypedLocaleDelegate(fallbackLanguage: $fallbackLanguage, localeMapResolution: $localeMapResolution)""";

  @override
  Type get type => TypedLocale;

  TypedLocale? _maybeResolutionLocale(Locale locale) =>
      Map<Locale, TypedLocale>.fromEntries(localeMapResolution ?? [])[locale];

  TypedLocale? _toTypedLocale(Locale locale) =>
      _maybeResolutionLocale(locale) ??
      locale.maybeToTypedLocale(fallbackLanguage);

  static TypedLocale? maybeOf(BuildContext context) =>
      Localizations.of<TypedLocale?>(context, TypedLocale);
}
