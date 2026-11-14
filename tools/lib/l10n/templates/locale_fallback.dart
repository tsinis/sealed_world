/// Resolves which locale keys to look up for a requested locale, and in which
/// order: the most specific key comes first.
abstract final class LocaleFallback {
  /// Parents that differ from dropping the last subtag.
  ///
  /// Based on the CLDR `parentLocales` of the bundled regional locales, plus
  /// the legacy language codes still reported by older Android and JVM
  /// platforms, and the `fil` -> `tl` alias (bundled data uses `tl`).
  ///
  /// The mapper generator (`tools/lib/l10n`) follows it too, so that the
  /// define of a bundled locale keeps the bundled locales it falls back to.
  static const parents = {
    "fil": "tl",
    "in": "id",
    "iw": "he",
    "ji": "yi",
    "nb": "no",
    "nn": "no",
    "pa_PK": "pa_Arab",
    "pt_AO": "pt_PT",
    "pt_CH": "pt_PT",
    "pt_CV": "pt_PT",
    "pt_FR": "pt_PT",
    "pt_GQ": "pt_PT",
    "pt_GW": "pt_PT",
    "pt_LU": "pt_PT",
    "pt_MO": "pt_PT",
    "pt_MZ": "pt_PT",
    "pt_ST": "pt_PT",
    "pt_TL": "pt_PT",
    "uz_AF": "uz_Arab",
    "zh_HK": "zh_Hant",
    "zh_Hant_HK": "zh_HK",
    "zh_Hant_MO": "zh_HK",
    "zh_MO": "zh_HK",
    "zh_TW": "zh_Hant",
  };

  static final _suffix = RegExp("[.@]");
  static final _separator = RegExp("[-_]+");
  static final _language = RegExp(r"^(?:[a-z]{2,3}|[a-z]{5,8})$");
  static final _script = RegExp(r"^[A-Za-z]{4}$");
  static final _region = RegExp(r"^(?:[A-Za-z]{2}|\d{3})$");

  /// Returns the locale keys to look up for [locale], most specific first.
  ///
  /// 1. The [locale] exactly as given, so custom locale keys match first.
  /// 2. Its normalized form: `-` becomes `_`, POSIX suffixes (`.UTF-8`,
  ///    `@euro`), surrounding spaces and repeated separators are dropped, the
  ///    language is lowercase, the script is title case and the region is
  ///    uppercase (`zh-hant-tw` -> `zh_Hant_TW`).
  ///    Subtags after the region (variants, extensions) are dropped too.
  /// 3. If [useLanguageFallback] is `true`, its parent locales: a CLDR parent
  ///    or alias if there is one, otherwise the locale without its last
  ///    subtag (`zh_Hant_TW` -> `zh_Hant` -> `zh`, `zh_HK` -> `zh_Hant`).
  ///    A script locale falls back to its language even if the language is
  ///    written in another script (`pa_Arab` -> `pa`, `zh_Hant` -> `zh`),
  ///    unlike in CLDR, where such locales fall back to the `root`. The mapper
  ///    returns the names of both, script locale first: so the first name of
  ///    an ISO code is the language's one (in its own script) only where the
  ///    script locale has none, and it comes before any fallback locale name.
  ///
  /// A locale whose language subtag is not valid only matches as given.
  static Set<String> chain(String locale, {bool useLanguageFallback = true}) {
    final keys = {locale};
    final normalized = _normalize(locale);
    if (normalized == null) return keys;

    keys.add(normalized);
    if (!useLanguageFallback) return keys;

    String? parent = _parentOf(normalized);
    while (parent != null && keys.add(parent)) {
      parent = _parentOf(parent);
    }

    return keys;
  }

  static String? _normalize(String locale) {
    final subtags = locale.trim().split(_suffix).first.split(_separator);
    final language = subtags.first.toLowerCase();
    if (!_language.hasMatch(language)) return null;

    final buffer = StringBuffer(language);
    int index = 1;
    if (index < subtags.length && _script.hasMatch(subtags[index])) {
      final script = subtags[index].toLowerCase();
      buffer
        ..write("_")
        ..write(script.replaceRange(0, 1, script[0].toUpperCase()));
      index += 1;
    }
    if (index < subtags.length && _region.hasMatch(subtags[index])) {
      buffer
        ..write("_")
        ..write(subtags[index].toUpperCase());
    }

    return buffer.toString();
  }

  static String? _parentOf(String locale) {
    final parent = parents[locale];
    if (parent != null) return parent;
    final subtags = locale.split("_");
    if (subtags.length == 1) return null;

    return (subtags..removeLast()).join("_");
  }
}
