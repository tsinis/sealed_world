// ignore_for_file: avoid_print, avoid-non-ascii-symbols
import "package:cli/utils/color_utils.dart";
import "package:cli/utils/io_utils.dart";
import "package:cli/utils/json_utils.dart";
import "package:pure_dart_ui/pure_dart_ui.dart";
import "package:sealed_countries/sealed_countries.dart";

/// Usage: `dart run :colors_extractor`.
Future<void> main() async {
  final io = IoUtils();
  var i = 0;
  final buffer = StringBuffer("""
import "colors_extractor.dart";
import "package:pure_dart_ui/pure_dart_ui.dart";
import "package:sealed_countries/sealed_countries.dart";

const map = {
  """);
  io
    ..forFileInDirectory(
      Directory(join(JsonUtils.defaultDataDirPath, "flags")),
      format: ColorUtils.svgFormat,
      withFile: (file, name) {
        if (name.length > 2) return;
        // ignore: avoid-substring, no emoji here.
        final countryCode = name.substring(0, 2).toUpperCaseIsoCode();
        final country = WorldCountry.maybeFromCodeShort(countryCode);
        if (country == null) return;
        final countryName = country.internationalName;

        final svg = file.readAsStringSync();
        final colors = ColorUtils([], countryName).extractColorsFromSvg(svg);
        if (colors.isEmpty) return print("No colors for $countryName!");
        final properties =
            FlagProperties(colors.map(ColorsProperties.new).toList());
        buffer
          ..write("\n/// ${country.internationalName}: ${country.codeShort}.\n")
          ..write("${country.runtimeType}(): $properties,");
        i++;
      },
    )
    ..writeContentToFile("flags_map.txt", "$buffer};");

  print("Conversion completed successfully. $i files converted.");
}

class FlagProperties {
  const FlagProperties(
    this.colors, {
    this.aspectRatio = 3 / 2,
    this.isHorizontalStriped = true,
    this.elementsProperties,
    this.url,
    this.sameAs,
  });

  final List<ColorsProperties> colors;
  final List<ElementsProperties>? elementsProperties;

  /// Aspect ration of the flag. The aspect ratio is conventionally given
  /// as height to width, but in this package (and in CG in general) it is given
  /// as width to height.
  final double aspectRatio;
  final String? url;
  final WorldCountry? sameAs;

  /// Indicates whether the stripes on the flag are arranged horizontally.
  ///
  /// * If the value is `false`, the stripes run from left to right, i.e. Italy,
  /// France, Ireland, etc., like flags.
  /// * If the value is `true`, the stripes run from the bottom to the top, i.e.
  /// Russia, Germany, Poland, Latvia, etc., like flags.
  /// * If the value is `null`, it means that it is not clear whether the
  /// stripes are arranged horizontally or vertically, or the flag may not
  /// have any stripes at all.
  final bool? isHorizontalStriped;

  @override
  String toString() => "FlagProperties($colors, aspectRatio: $aspectRatio, "
      "isHorizontalStriped: $isHorizontalStriped, "
      "elementsProperties: $elementsProperties)";
}

class ColorsProperties {
  const ColorsProperties(this.color, {this.ratio = 1})
      : assert(ratio >= 0, "Ratio must be greater than or equal to zero.");

  final int ratio;
  final Color color;

  @override
  String toString() => "ColorsProperties($color, ratio: $ratio)";
}

class ElementsProperties {
  const ElementsProperties(
    this.colors, {
    this.x = middle,
    this.y = middle,
    this.heightFactor,
    this.widthFactor,
    this.angle,
    this.type,
    this.children = const [],
  })  : assert(widthFactor == null || widthFactor >= 0.0),
        assert(heightFactor == null || heightFactor >= 0.0);

  static const middle = 0.5;

  /// Height factor of the symbol. Is more relevant than width factor, because
  /// of various aspect rations of the flags, when width varies but height
  /// remains the same.
  final double? heightFactor;

  /// If [widthFactor] is null, this is usually means that element's bounding
  /// box has square form.
  final double? widthFactor;
  final List<Color> colors;
  final double? angle;
  final ElementType? type;
  final List<ElementsProperties> children;

  /// The distance fraction in the horizontal direction (of the center).
  ///
  /// A value of -1.0 corresponds to the leftmost edge. A value of 1.0
  /// corresponds to the rightmost edge. Values are not limited to that range;
  /// values less than -1.0 represent positions to the left of the left edge,
  /// and values greater than 1.0 represent positions to the right of the right
  /// edge.
  final double x;

  /// The distance fraction in the vertical direction (of the center).
  ///
  /// A value of -1.0 corresponds to the topmost edge. A value of 1.0
  /// corresponds to the bottommost edge. Values are not limited to that range;
  /// values less than -1.0 represent positions above the top, and values
  /// greater than 1.0 represent positions below the bottom.
  final double y;

  @override
  String toString() =>
      "ElementsProperties(${x.toStringAsFixed(1)}, ${y.toStringAsFixed(1)}"
      "widthFactor: $widthFactor, heightFactor: $heightFactor, "
      "colors: $colors, angle: $angle)";
}

enum ElementType { star, triangle, circle, rectangle, moon, sun }
