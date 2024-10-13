abstract final class PhpConverter {
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
      String? translationMatch = match.group(2); // Translation.

      if (code != null && translationMatch != null) {
        // Remove any trailing brackets with their content.
        translationMatch = translationMatch.replaceAll(cleanupRegex, "");
        translations[code] = translationMatch.trim();
      }
    }

    return translations;
  }

  static Map<String, String> extractL10nFromSimpleMap(
    String phpFileContent, [
    String? startFrom,
  ]) {
    final translations = <String, String>{};

    int startIndex = 0;
    if (startFrom != null) {
      startIndex = phpFileContent.indexOf(startFrom);
      if (startIndex == -1) return translations;
    }

    // ignore: avoid-substring, only use the substring from 'startFrom'.
    final contentToMatch = phpFileContent.substring(startIndex);

    final regex = RegExp(r"'(\w+)'\s*=>\s*'([^']+)'");
    final matches = regex.allMatches(contentToMatch);

    for (final match in matches) {
      final code = match.group(1); // Code.
      final l10n = match.group(2); // Translation.

      if (code != null && l10n != null) translations[code] = l10n.trim();
    }

    return translations;
  }
}
