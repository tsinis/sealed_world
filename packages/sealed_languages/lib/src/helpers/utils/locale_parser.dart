import "../../model/core/basic_locale.dart";
import "../../model/language/language.dart";
import "../../model/script/writing_system.dart";

class LocaleParser {
  const LocaleParser({this.languages, this.scripts});

  final Iterable<NaturalLanguage>? languages;
  final Iterable<Script>? scripts;

  static const unicodeLocale =
      r"^(\p{L}{2})(?:[_\s-]+(?:(\p{L}{4})|(\p{L}{2}))?)?(?:[_\s-]+(\p{L}{2}))?$";

  RegExp get pattern =>
      RegExp(unicodeLocale, caseSensitive: false, unicode: true);

  BasicLocale? parse(Object? locale) {
    final match = pattern.firstMatch(locale?.toString().trim() ?? "");
    final lang = NaturalLanguage.maybeFromCodeShort(match?.group(1), languages);
    if (lang == null || match == null) return null;

    final maybeScriptCode = match.group(2);
    final maybeCountryCode = match.group(3) ?? match.group(4);

    return BasicLocale(
      lang,
      script: Script.maybeFromCode(maybeScriptCode, scripts),
      countryCode: maybeCountryCode?.toUpperCase(),
    );
  }
}
