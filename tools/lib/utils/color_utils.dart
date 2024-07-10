// ignore_for_file: format-comment, avoid_print

import "package:pure_dart_ui/pure_dart_ui.dart";

/// Actually my code from flutter_colorpicker + SVG content parser.
class ColorUtils {
  const ColorUtils(this._colors, this._tag);

  static const svgFormat = "svg";

  /// [RegExp] pattern for validation complete HEX color [String], allows only:
  ///
  /// * exactly 6 or 8 digits in HEX format,
  /// * only Latin A-F characters, case insensitive,
  /// * and integer numbers 0,1,2,3,4,5,6,7,8,9,
  /// * with optional hash (`#`) symbol at the beginning (not calculated in
  ///   length).
  ///
  /// ```dart
  /// final RegExp hexCompleteValidator = RegExp(kCompleteValidHexPattern);
  /// if (hexCompleteValidator.hasMatch(hex)) print('$hex is valid HEX color');
  /// ```
  /// Reference: https://en.wikipedia.org/wiki/Web_colors#Hex_triplet
  static const kCompleteValidHexPattern =
      r"^#?([0-9a-fA-F]{3}|[0-9a-fA-F]{6}|[0-9a-fA-F]{8})$";

  final List<Color?> _colors;
  final String _tag;

  static const _namedColors = {
    "red": Color(0xFFff0000),
    "gray": Color(0xFF808080),
    "green": Color(0xFF008000),
    "gold": Color(0xFFffd700),
    "maroon": Color(0xFF800000),
    "olive": Color(0xFF808000),
    "purple": Color(0xFF800080),
  };

  Set<Color> extractColorsFromSvg(String svgContent) {
    final fillPattern =
        RegExp('fill\\s*=\\s*["\']?([^"\']*)["\']?', caseSensitive: false);
    final strokePattern =
        RegExp('stroke\\s*=\\s*["\']?([^"\']*)["\']?', caseSensitive: false);

    final fills = fillPattern.allMatches(svgContent);
    final strokes = strokePattern.allMatches(svgContent);

    // print("Fills: ${fills.length}, Strokes: ${strokes.length}");
    for (final match in fills) _colorFromHex(match.group(1));
    for (final match in strokes) _colorFromHex(match.group(1));

    return Set.unmodifiable(_colors.nonNulls);
  }

  void _colorFromHex(String? color) {
    if (color == null || color == "none" || color.startsWith("url(#")) return;
    var result = colorFromHex(color);
    result ??= _namedColors[color.toLowerCase()];
    if (result == null) print("$_tag Warning: Unsupported color format $color");
    _colors.add(result);
  }

  /// Try to convert text input or any [String] to valid [Color]. The [String]
  /// must be provided in one of those formats:
  ///
  /// * RGB
  /// * #RGB
  /// * RRGGBB
  /// * #RRGGBB
  /// * AARRGGBB
  /// * #AARRGGBB
  ///
  /// Where: A stands for Alpha, R for Red, G for Green, and B for blue color.
  /// It will only accept 3/6/8 long HEXs with an optional hash (`#`) at the
  /// beginning. Allowed characters are Latin A-F case insensitive and numbers
  /// 0-9. Optional [enableAlpha] can be provided (it's `true` by default). If
  /// it's set to `false` transparency information (alpha channel) will be
  /// removed.
  /// ```dart
  /// /// // Valid 3 digit HEXs:
  /// colorFromHex('abc') == Color(0xffaabbcc)
  /// colorFromHex('ABc') == Color(0xffaabbcc)
  /// colorFromHex('ABC') == Color(0xffaabbcc)
  /// colorFromHex('#Abc') == Color(0xffaabbcc)
  /// colorFromHex('#abc') == Color(0xffaabbcc)
  /// colorFromHex('#ABC') == Color(0xffaabbcc)
  /// // Valid 6 digit HEXs:
  /// colorFromHex('aabbcc') == Color(0xffaabbcc)
  /// colorFromHex('AABbcc') == Color(0xffaabbcc)
  /// colorFromHex('AABBCC') == Color(0xffaabbcc)
  /// colorFromHex('#AABbcc') == Color(0xffaabbcc)
  /// colorFromHex('#aabbcc') == Color(0xffaabbcc)
  /// colorFromHex('#AABBCC') == Color(0xffaabbcc)
  /// // Valid 8 digit HEXs:
  /// colorFromHex('ffaabbcc') == Color(0xffaabbcc)
  /// colorFromHex('ffAABbcc') == Color(0xffaabbcc)
  /// colorFromHex('ffAABBCC') == Color(0xffaabbcc)
  /// colorFromHex('ffaabbcc', enableAlpha: true) == Color(0xffaabbcc)
  /// colorFromHex('FFAAbbcc', enableAlpha: true) == Color(0xffaabbcc)
  /// colorFromHex('ffAABBCC', enableAlpha: true) == Color(0xffaabbcc)
  /// colorFromHex('FFaabbcc', enableAlpha: true) == Color(0xffaabbcc)
  /// colorFromHex('#ffaabbcc') == Color(0xffaabbcc)
  /// colorFromHex('#ffAABbcc') == Color(0xffaabbcc)
  /// colorFromHex('#FFAABBCC') == Color(0xffaabbcc)
  /// colorFromHex('#ffaabbcc', enableAlpha: true) == Color(0xffaabbcc)
  /// colorFromHex('#FFAAbbcc', enableAlpha: true) == Color(0xffaabbcc)
  /// colorFromHex('#ffAABBCC', enableAlpha: true) == Color(0xffaabbcc)
  /// colorFromHex('#FFaabbcc', enableAlpha: true) == Color(0xffaabbcc)
  /// // Invalid HEXs:
  /// colorFromHex('bc') == null // length 2
  /// colorFromHex('aabbc') == null // length 5
  /// colorFromHex('#ffaabbccd') == null // length 9 (+#)
  /// colorFromHex('aabbcx') == null // x character
  /// colorFromHex('#aabbвв') == null // в non-latin character
  /// colorFromHex('') == null // empty
  /// ```
  /// Reference: https://en.wikipedia.org/wiki/Web_colors#Hex_triplet
  Color? colorFromHex(String inputString, {bool enableAlpha = true}) {
    // Registers validator for exactly 6 or 8 digits long HEX (with optional #).
    final hexValidator = RegExp(kCompleteValidHexPattern);
    // Validating input, if it does not match — it's not proper HEX.
    if (!hexValidator.hasMatch(inputString)) return null;
    // Remove optional hash if exists and convert HEX to UPPER CASE.
    var hexToParse = inputString.replaceFirst("#", "").toUpperCase();
    // It may allow HEX with transparency information even if alpha is disabled,
    if (!enableAlpha && hexToParse.length == 8) {
      // but it will replace this info with 100% non-transparent value (FF).
      // ignore: avoid-substring, it's a util.
      hexToParse = "FF${hexToParse.substring(2)}";
    }
    // HEX may be provided in 3-digits format, let's just duplicate each letter.
    if (hexToParse.length == 3) {
      hexToParse = hexToParse.split("").expand((i) => [i * 2]).join();
    }
    // We will need 8 digits to parse the color, let's add missing digits.
    if (hexToParse.length == 6) hexToParse = "FF$hexToParse";
    // HEX must be valid now, but as a precaution, it will just try to parse it.
    final intColorValue = int.tryParse(hexToParse, radix: 16);
    // If for some reason HEX is not valid — abort the operation return nothing.
    if (intColorValue == null) return null;
    // Register output color for the last step.
    final color = Color(intColorValue);

    // final lol = Color.fromARGB(255, 255, 255, 255);

    // Decide to return color with transparency information or not.
    return enableAlpha ? color : color.withAlpha(255);
  }
}
