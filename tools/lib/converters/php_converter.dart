class PhpConverter {
  const PhpConverter();

  static const format = "php";

  static Map<String, String> extractL10nFomLists(String phpFileContent) {
    final translations = <String, String>{};
    final regex = RegExp(r"'(\w+)'\s*=>\s*\[\s*'\1',\s*'([^']+)'");
    // Regular expression to match and remove text within brackets.
    final cleanupRegex = RegExp(r"\s+\(.*?\)$");

    final matches = regex.allMatches(phpFileContent);

    for (final match in matches) {
      final code = match.group(1)?.toUpperCase(); // Currency code.
      var translation = match.group(2); // Translation.

      if (code != null && translation != null) {
        // Remove any trailing brackets with their content.
        translation = translation.replaceAll(cleanupRegex, "");
        translations[code] = translation.trim();
      }
    }

    return translations;
  }
}
