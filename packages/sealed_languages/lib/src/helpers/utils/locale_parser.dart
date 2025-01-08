import "../../interfaces/basic_locale_parser.dart";
import "../../model/core/basic_locale.dart";
import "../../model/language/language.dart";
import "../../model/script/writing_system.dart";

class LocaleParser extends BasicLocaleParser<BasicLocale> {
  const LocaleParser({super.languages, super.scripts});

  @override
  BasicLocale toLocale(
    NaturalLanguage language,
    Script? script,
    String? countryCode,
  ) =>
      BasicLocale(language, script: script, countryCode: countryCode);
}
