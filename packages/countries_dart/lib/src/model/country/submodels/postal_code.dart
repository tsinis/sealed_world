class PostalCode {
  const PostalCode({
    this.format = "#####",
    this.regExpPattern = r"^(\\d{5})$",
  });

  final String format;
  final String regExpPattern;

  @override
  String toString() =>
      "PostalCode(format: $format, regExpPattern: $regExpPattern)";

  RegExp validator({
    bool multiLine = false,
    bool caseSensitive = true,
    bool unicode = false,
    bool dotAll = false,
  }) =>
      RegExp(
        regExpPattern,
        multiLine: multiLine,
        caseSensitive: caseSensitive,
        unicode: unicode,
        dotAll: dotAll,
      );
}
