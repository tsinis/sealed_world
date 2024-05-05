// ignore_for_file: avoid_print, avoid-non-ascii-symbols
import "package:cli/utils/color_utils.dart";
import "package:cli/utils/io_utils.dart";
import "package:cli/utils/json_utils.dart";
import "package:sealed_countries/sealed_countries.dart";

/// Usage: `dart run :colors_extractor`.
Future<void> main() async {
  final io = IoUtils();
  var i = 0;
  io.forFileInDirectory(
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
      print("$countryName country flag has ${colors.length} colors");
      i++;
    },
  );

  print("Conversion completed successfully. $i files converted.");
}
