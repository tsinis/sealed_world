class PhpConverter {
  const PhpConverter();

  static const format = "php";

  static Map<String, String> extractL10nFromLists(String phpFileContent) {
    final translations = <String, String>{};
    final regex = RegExp(r"'(\w+)'\s*=>\s*\[\s*'\1',\s*'([^']+)'");
    // Regular expression to match and remove text within brackets.
    final cleanupRegex = RegExp(r"\s+\(.*?\)$");

    final matches = regex.allMatches(phpFileContent);

    for (final match in matches) {
      final code = match.group(1)?.toUpperCase(); // Code.
      var translation = match.group(2); // Translation.

      if (code != null && translation != null) {
        // Remove any trailing brackets with their content.
        translation = translation.replaceAll(cleanupRegex, "");
        translations[code] = translation.trim();
      }
    }

    return translations;
  }

  static Map<String, String> extractL10nFromSimpleMap(String phpFileContent) {
    final translations = <String, String>{};
    final regex = RegExp(r"'(\w+)'\s*=>\s*'([^']+)'");

    final matches = regex.allMatches(phpFileContent);

    for (final match in matches) {
      final code = match.group(1); // Code.
      final l10n = match.group(2); // Translation.

      if (code != null && l10n != null) translations[code] = l10n.trim();
    }

    return translations;
  }
}
