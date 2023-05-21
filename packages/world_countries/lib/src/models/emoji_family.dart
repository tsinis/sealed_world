import "../constants/package_constants.dart";
import "../generated/fonts.gen.dart";
import "../helpers/functional_platform.dart";

part "emoji_family.g.dart";

/// An enumeration of different emoji families, with their respective licenses
/// and project information.
enum EmojiFamily {
  /// The Twemoji family.
  twemoji(
    codeLicense: "Apache-2.0",
    codeLicenseUrl: "http://www.apache.org/licenses/LICENSE-2.0",
    graphicsLicense: "CC-BY 4.0",
    graphicsLicenseUrl: "https://creativecommons.org/licenses/by/4.0/legalcode",
    projectName: "Twemoji",
    projectUrl: "https://twemoji.twitter.com",
  ),

  /// The OpenMoji family.
  openMoji(
    codeLicense: "LGPL-3.0",
    codeLicenseUrl: "https://www.gnu.org/licenses/lgpl-3.0.en.html",
    graphicsLicense: "CC BY-SA 4.0",
    graphicsLicenseUrl: "https://creativecommons.org/licenses/by-sa/4.0",
    projectName: "OpenMoji",
    projectUrl: "https://openmoji.org",
  ),

  /// The Noto Color Emoji family.
  notoEmoji(
    codeLicense: "Apache-2.0",
    codeLicenseUrl: "http://www.apache.org/licenses/LICENSE-2.0",
    graphicsLicense: "Open Font License 1.1",
    graphicsLicenseUrl: "https://scripts.sil.org/OFL_web",
    projectName: "Noto Color Emoji",
    projectUrl: "https://fonts.google.com/noto/specimen/Noto+Color+Emoji",
  );

  const EmojiFamily({
    required this.codeLicense,
    required this.codeLicenseUrl,
    required this.graphicsLicense,
    required this.graphicsLicenseUrl,
    required this.projectName,
    required this.projectUrl,
  });

  /// The license for the code of the emoji family.
  final String codeLicense;

  /// The URL of the license for the code of the emoji family.
  final String codeLicenseUrl;

  /// The license for the graphics of the emoji family.
  final String graphicsLicense;

  /// The URL of the license for the graphics of the emoji family.
  final String graphicsLicenseUrl;

  /// The name of the project for the emoji family.
  final String projectName;

  /// The URL of the project for the emoji family.
  final String projectUrl;

  /// The package name for the emoji family.
  String get packageName => PackageConstants.name;

  /// Returns the font to use for the emoji family, based on the current
  /// platform.
  ///
  /// This method returns a string representing the font file to use for the
  /// emoji family, based on the current platform. If no platform-specific font
  /// is available, it returns the default font for the family.
  String? get fontByPlatform {
    switch (this) {
      case twemoji:
        return FunctionalPlatform.maybeWhenConst(
          orElse: WorldCountryFonts.twemojiTTF,
          iOS: WorldCountryFonts.twemojiWOFF2,
          macOS: WorldCountryFonts.twemojiWOFF2,
          web: WorldCountryFonts.twemojiWOFF2,
        );
      case openMoji:
        return FunctionalPlatform.maybeWhenConst(
          orElse: WorldCountryFonts.openMojiCOLR1,
          iOS: WorldCountryFonts.openMojiCOLR0,
          macOS: WorldCountryFonts.openMojiCOLR0,
          windows: WorldCountryFonts.openMojiCOLR0,
        );
      case notoEmoji:
        return FunctionalPlatform.maybeWhenConst(
          orElse: WorldCountryFonts.notoEmojiCBDT,
          iOS: WorldCountryFonts.notoEmojiOTSVG,
          macOS: WorldCountryFonts.notoEmojiOTSVG,
        );
    }
  }
}
