// ignore_for_file: deprecated_member_use_from_same_package

import "../constants/package_constants.dart";
import "../generated/fonts.gen.dart";
import "../helpers/functional_platform.dart";
import "../models/emoji_family.dart";

/// Extension methods for [EmojiFamily].
@Deprecated(
  "Migrate to CountryFlag instead. This extension will be removed in v2.0.0.",
)
extension FlutterEmojiFamilyExtension on EmojiFamily {
  /// The package name for the emoji family.
  String get packageName => PackageConstants.name;

  /// Returns the font to use for the emoji family, based on the current
  /// platform.
  ///
  /// This method returns a string representing the font file to use for the
  /// emoji family, based on the current platform. If no platform-specific font
  /// is available, it returns the default font for the family.
  String get fontByPlatform => when(
        twemoji: () => FunctionalPlatform.maybeWhenConst(
          orElse: WorldCountryFonts.twemojiTTF,
          iOS: WorldCountryFonts.twemojiWOFF2,
          macOS: WorldCountryFonts.twemojiWOFF2,
          web: WorldCountryFonts.twemojiWOFF2,
        ),
        openMoji: () => FunctionalPlatform.maybeWhenConst(
          orElse: WorldCountryFonts.openMojiCOLR1,
          iOS: WorldCountryFonts.openMojiCOLR0,
          macOS: WorldCountryFonts.openMojiCOLR0,
          windows: WorldCountryFonts.openMojiCOLR0,
        ),
        notoEmoji: () => FunctionalPlatform.maybeWhenConst(
          orElse: WorldCountryFonts.notoEmojiCBDT,
          iOS: WorldCountryFonts.notoEmojiOTSVG,
          macOS: WorldCountryFonts.notoEmojiOTSVG,
        ),
      );
}
