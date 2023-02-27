import "package:flutter/widgets.dart";
import "package:sealed_countries/sealed_countries.dart";

import "../../constants/package_constants.dart";
import "../../constants/ui_constants.dart";
import "../../generated/fonts.gen.dart";
import "../../helpers/functional_platform.dart";

// ignore: format-comment, false positive.
/// Small context about other emoji fonts:
/// * FxEmojis is deprecated.
/// * EmojiOne is also deprecated, but you can see usage in the package example.
/// * emojidex provides no open-source emojis.
/// * Segoe UI Emoji doesn't include country flags.
/// * EmojiTwo has no font (especially COLR) support:
/// https://github.com/EmojiTwo/emojitwo/issues/172
/// * Fluent Emoji has no country flags:
/// https://github.com/microsoft/fluentui-emoji/issues/25
/// * Streamline Emoji has only 32 flags.
/// * Apple Color Emoji are not open-source and free for everyone.
/// * JoyPixels are also not open-source and free for everyone.
class EmojiFlag extends Text {
  EmojiFlag.twemoji(
    WorldCountry country, {
    TextStyle? style,
    super.key,
    super.strutStyle,
    super.textAlign,
    super.textDirection,
    super.locale,
    super.softWrap,
    super.overflow,
    super.textScaleFactor,
    super.maxLines,
    super.semanticsLabel,
    super.textWidthBasis,
    super.textHeightBehavior,
    super.selectionColor,
  }) : super(
          country.emoji,
          style: _style(
            style,
            package: PackageConstants.name,
            FunctionalPlatform.maybeWhen(
              web: () => WorldCountryFonts.twemojiWOFF2,
              iOS: () => WorldCountryFonts.twemojiWOFF2,
              macOS: () => WorldCountryFonts.twemojiWOFF2,
              orElse: () => WorldCountryFonts.twemojiTTF,
            ),
          ),
        );

  EmojiFlag.openMoji(
    WorldCountry country, {
    TextStyle? style,
    super.key,
    super.strutStyle,
    super.textAlign,
    super.textDirection,
    super.locale,
    super.softWrap,
    super.overflow,
    super.textScaleFactor,
    super.maxLines,
    super.semanticsLabel,
    super.textWidthBasis,
    super.textHeightBehavior,
    super.selectionColor,
  }) : super(
          country.emoji,
          style: _style(
            style,
            package: PackageConstants.name,
            FunctionalPlatform.maybeWhen(
              iOS: () => WorldCountryFonts.openMojiCOLR0,
              macOS: () => WorldCountryFonts.openMojiCOLR0,
              windows: () => WorldCountryFonts.openMojiCOLR0,
              orElse: () => WorldCountryFonts.openMojiCOLR1,
            ),
          ),
        );

  EmojiFlag.notoEmoji(
    WorldCountry country, {
    TextStyle? style,
    super.key,
    super.strutStyle,
    super.textAlign,
    super.textDirection,
    super.locale,
    super.softWrap,
    super.overflow,
    super.textScaleFactor,
    super.maxLines,
    super.semanticsLabel,
    super.textWidthBasis,
    super.textHeightBehavior,
    super.selectionColor,
  }) : super(
          country.emoji,
          style: _style(
            style,
            package: PackageConstants.name,
            FunctionalPlatform.maybeWhen<String?>(
              android: () => null, // Provides these emojis directly in the OS.
              iOS: () => WorldCountryFonts.notoEmojiOTSVG,
              macOS: () => WorldCountryFonts.notoEmojiOTSVG,
              orElse: () => WorldCountryFonts.notoEmojiCBDT,
            ),
          ),
        );

  EmojiFlag.platformDefault(
    WorldCountry country, {
    TextStyle? style,
    super.key,
    super.strutStyle,
    super.textAlign,
    super.textDirection,
    super.locale,
    super.softWrap,
    super.overflow,
    super.textScaleFactor,
    super.maxLines,
    super.semanticsLabel,
    super.textWidthBasis,
    super.textHeightBehavior,
    super.selectionColor,
  }) : super(country.emoji, style: _style(style, null));

  EmojiFlag.custom(
    WorldCountry country, {
    TextStyle? style,
    String? package,
    super.key,
    super.strutStyle,
    super.textAlign,
    super.textDirection,
    super.locale,
    super.softWrap,
    super.overflow,
    super.textScaleFactor,
    super.maxLines,
    super.semanticsLabel,
    super.textWidthBasis,
    super.textHeightBehavior,
    super.selectionColor,
  }) : super(
          country.emoji,
          style: _style(style, style?.fontFamily, package: package),
        );

  static TextStyle _style(TextStyle? style, String? font, {String? package}) =>
      (style ?? const TextStyle()).copyWith(
        color: UiConstants.color,
        fontFamily: font,
        package: package,
      );
}
