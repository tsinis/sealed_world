import "../constants/package_constants.dart";
import "../generated/fonts.gen.dart";
import "../helpers/functional_platform.dart";

part "emoji_family.g.dart";

enum EmojiFamily {
  twemoji(
    codeLicense: "Apache-2.0",
    codeLicenseUrl: "http://www.apache.org/licenses/LICENSE-2.0",
    graphicsLicense: "CC-BY 4.0",
    graphicsLicenseUrl: "https://creativecommons.org/licenses/by/4.0/legalcode",
    projectName: "Twemoji",
    projectUrl: "https://twemoji.twitter.com",
  ),
  openMoji(
    codeLicense: "LGPL-3.0",
    codeLicenseUrl: "https://www.gnu.org/licenses/lgpl-3.0.en.html",
    graphicsLicense: "CC BY-SA 4.0",
    graphicsLicenseUrl: "https://creativecommons.org/licenses/by-sa/4.0",
    projectName: "OpenMoji",
    projectUrl: "https://openmoji.org",
  ),
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

  final String codeLicense;
  final String codeLicenseUrl;
  final String graphicsLicense;
  final String graphicsLicenseUrl;
  final String projectName;
  final String projectUrl;

  String get packageName => PackageConstants.name;

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
