import "package:flutter/widgets.dart";
import "package:sealed_countries/sealed_countries.dart";

import "../../constants/package_constants.dart";
import "../../constants/ui_constants.dart";
import "../../extensions/emoji_family_extension.dart";
import "../../models/emoji_family.dart";

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
  /// Twemoji representation of the emoji flag.
  EmojiFlag.twemoji(
    WorldCountry country, {
    double? size,
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
            EmojiFamily.twemoji.fontByPlatform,
            package: PackageConstants.name,
            size: size,
          ),
        );

  /// OpenMoji representation of the emoji flag.
  EmojiFlag.openMoji(
    WorldCountry country, {
    double? size,
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
            EmojiFamily.openMoji.fontByPlatform,
            package: PackageConstants.name,
            size: size,
          ),
        );

  /// Noto Emoji Color representation of the emoji flag.
  EmojiFlag.notoEmoji(
    WorldCountry country, {
    double? size,
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
            EmojiFamily.notoEmoji.fontByPlatform,
            package: PackageConstants.name,
            size: size,
          ),
        );

  /// Adaptive representation of the emoji flag.
  EmojiFlag.fromEmojiFamily(
    WorldCountry country, {
    EmojiFamily? emojiFamily,
    double? size,
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
            emojiFamily?.fontByPlatform,
            package: emojiFamily?.packageName,
            size: size,
          ),
        );

  /// Platform default representation of the emoji flag.
  EmojiFlag.platformDefault(
    WorldCountry country, {
    double? size,
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
  }) : super(country.emoji, style: _style(style, null, size: size));

  /// Custom representation of the emoji flag.
  EmojiFlag.custom(
    WorldCountry country, {
    double? size,
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
          style: _style(style, style?.fontFamily, package: package, size: size),
        );

  static TextStyle _style(
    TextStyle? style,
    String? font, {
    String? package,
    double? size,
  }) =>
      (style ?? const TextStyle()).copyWith(
        fontSize: size ?? style?.fontSize,
        color: UiConstants.color,
        fontFamily: font,
        package: package,
      );
}
