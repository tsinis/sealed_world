import "dart:ui";

class ColorsProperties {
  const ColorsProperties(this.color, {this.ratio = 1})
      : assert(ratio >= 0, "Ratio must be greater than or equal to zero.");

  ColorsProperties.fromIntColor(int bitColor, {this.ratio = 1})
      : assert(ratio >= 0, "Ratio must be greater than or equal to zero."),
        color = Color(bitColor);

  final Color color;
  final int ratio;

  @override
  String toString() => "ColorsProperties($color, ratio: $ratio)";
}
