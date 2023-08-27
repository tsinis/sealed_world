extension StringExtension on String? {
  String? get toBeginningOfSentenceCase {
    final word = this ?? "";
    if (word.isEmpty) return this;

    // ignore: avoid-substring, no emojis here.
    return "${word[0].toUpperCase()}${word.substring(1)}";
  }
}
