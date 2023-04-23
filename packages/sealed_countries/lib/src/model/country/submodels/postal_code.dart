final class PostalCode {
  const PostalCode({this.format = "#####", this.regExpPattern = r"^(\\d{5})$"});

  final String format;
  final String regExpPattern;

  @override
  String toString() =>
      "PostalCode(format: $format, regExpPattern: $regExpPattern)";

  @override
  bool operator ==(covariant PostalCode other) {
    if (identical(this, other)) return true;

    return other.format == format && other.regExpPattern == regExpPattern;
  }

  @override
  int get hashCode => format.hashCode ^ regExpPattern.hashCode;
}
