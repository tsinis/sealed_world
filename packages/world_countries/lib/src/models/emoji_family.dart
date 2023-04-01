import "../constants/package_constants.dart";
import "../generated/fonts.gen.dart";
import "../helpers/functional_platform.dart";

enum EmojiFamily {
  twemoji,
  openMoji,
  notoEmoji;

  const EmojiFamily();

  String get packageName => PackageConstants.name;

  String? get fontByPlatform {
    switch (this) {
      case twemoji:
        return FunctionalPlatform.maybeWhen(
          web: () => WorldCountryFonts.twemojiWOFF2,
          iOS: () => WorldCountryFonts.twemojiWOFF2,
          macOS: () => WorldCountryFonts.twemojiWOFF2,
          orElse: () => WorldCountryFonts.twemojiTTF,
        );
      case openMoji:
        return FunctionalPlatform.maybeWhen(
          iOS: () => WorldCountryFonts.openMojiCOLR0,
          macOS: () => WorldCountryFonts.openMojiCOLR0,
          windows: () => WorldCountryFonts.openMojiCOLR0,
          orElse: () => WorldCountryFonts.openMojiCOLR1,
        );
      case notoEmoji:
        return FunctionalPlatform.maybeWhen(
          // TODO? fuchsia: () => null?
          android: () => null, // Provides these emojis directly in the OS.
          iOS: () => WorldCountryFonts.notoEmojiOTSVG,
          macOS: () => WorldCountryFonts.notoEmojiOTSVG,
          orElse: () => WorldCountryFonts.notoEmojiCBDT,
        );
    }
  }
}
