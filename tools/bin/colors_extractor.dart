// ignore_for_file: avoid_print, avoid-non-ascii-symbols
import "package:cli/utils/color_utils.dart";
import "package:cli/utils/io_utils.dart";
import "package:cli/utils/json_utils.dart";
import "package:sealed_countries/sealed_countries.dart";

/// Usage: `dart run :colors_extractor`.
void main() {
  final io = IoUtils();
  int i = 0;
  final buffer = StringBuffer("""
import "colors_extractor.dart";
import "package:pure_dart_ui/pure_dart_ui.dart";
import "package:sealed_countries/sealed_countries.dart";

const map = {
  """);
  io
    ..forFileInDirectory(
      Directory(join(JsonUtils.defaultDataDirPath, "flags")),
      // ignore: prefer-extracting-function-callbacks, it's CLI tool, not prod.
      withFile: (file, name) {
        if (name.length > 2) return;
        // ignore: avoid-substring, no emoji here.
        final countryCode = name.substring(0, 2).toUpperCaseIsoCode();
        final country = WorldCountry.maybeFromCodeShort(countryCode);
        if (country == null) return;
        final countryName = country.internationalName;

        final svg = file.readAsStringSync();
        final colors = ColorUtils([], countryName).extractColorsFromSvg(svg);
        // ignore: avoid-returning-void, we need this message.
        if (colors.isEmpty) return print("No colors for $countryName!");
        // ignore_for_file: format-comment, it's made it job already.
        // final properties = FlagProperties(
        //   colors.map((c) => ColorsProperties.fromIntColor(c.value)).toList(),
        // );
        buffer.write("\n/// $countryName: ${country.codeShort}.\n")
            // ..write("${country.runtimeType}(): $properties,")
            ;
        i += 1;
      },
      format: ColorUtils.svgFormat,
    )
    ..writeContentToFile("flags_map.txt", "$buffer};");

  print("Conversion completed successfully. $i files converted.");
}
