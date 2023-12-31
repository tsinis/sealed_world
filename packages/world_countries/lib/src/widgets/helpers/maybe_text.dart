import "package:flutter/widgets.dart" show Key, Text, TextSpan, ValueKey;

/// A text widget that displays a string of text with an optional null safety
/// check.
///
/// If the provided `text` is null, this widget will simply not render any text.
/// Otherwise, it behaves exactly like a [Text] widget displaying the provided
/// text. It inherits all text styling and layout properties from the superclass
/// [Text].
///
/// This widget is useful in scenarios where text content is optional and you
/// want to avoid boilerplate null checking.
///
/// Example usage:
/// ```dart
/// MaybeText(
///   nullableString,
///   style: TextStyle(color: Colors.blue),
///   textAlign: TextAlign.center,
/// )
/// ```
///
/// See also:
///
///  * [Text], the widget that [MaybeText] extends, which contains detailed
///    information about styling, aligning, and controlling the rendering of
///    text.
///  * [TextSpan], which is used internally to provide the text content for this
///    widget.
class MaybeText extends Text {
  /// Creates a text widget that handles a nullable [text] string.
  ///
  /// All other parameters are optional and used to style and control how the
  /// text is displayed.
  ///
  /// The [text] parameter is the string to display. If it is null, no text will
  /// be rendered.
  ///
  /// See [Text] for more details on the other parameters.
  MaybeText(
    String? text, {
    super.key,
    super.style,
    super.strutStyle,
    super.textAlign,
    super.textDirection,
    super.locale,
    super.softWrap,
    super.overflow,
    super.textScaler,
    super.maxLines,
    super.semanticsLabel,
    super.textWidthBasis,
    super.textHeightBehavior,
    super.selectionColor,
  }) : super.rich(TextSpan(text: text));

  /// Identifiable constructor for the [MaybeText] class.
  ///
  /// Creates a [MaybeText] with a key identifier. This ensures that the
  /// widget will always have a different key than the one with a `null` value.
  /// Typically used with animated parents.
  ///
  /// If [key] is not provided, a null-check key will be calculated and used.
  ///
  /// Example:
  ///
  /// ```
  /// AnimatedSwitcher(
  ///  duration: const Duration(milliseconds: 800),
  ///  child: MaybeText.identifiable(nullableValue),
  /// ),
  /// ```
  MaybeText.identifiable(
    String? text, {
    Key? key,
    super.style,
    super.strutStyle,
    super.textAlign,
    super.textDirection,
    super.locale,
    super.softWrap,
    super.overflow,
    super.textScaler,
    super.maxLines,
    super.semanticsLabel,
    super.textWidthBasis,
    super.textHeightBehavior,
    super.selectionColor,
  }) : super.rich(TextSpan(text: text), key: key ?? ValueKey<String?>(text));
}
