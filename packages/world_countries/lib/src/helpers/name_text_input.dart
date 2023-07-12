import "package:flutter/services.dart" show FilteringTextInputFormatter;

/// A helper class for creating input validation rules for names.
abstract final class NameTextInput {
  const NameTextInput._(); // coverage:ignore-line

  /// A regular expression pattern that matches any digit.
  static const digitsPattern = "[0-9]";

  /// A regular expression pattern that matches any special character.
  ///
  /// Note: This pattern includes some non-ASCII characters that may not be
  /// supported by all input methods.
  // ignore: avoid-non-ascii-symbols, some names can contain special characters.
  static const specialCharsPattern = r'[~`!@#$%^&§…_={*}[\]“„«»"|:;<>–—•+/?\\]';

  /// A list of input formatters that can be used to validate name inputs.
  ///
  /// This list includes formatters that deny digits and special characters.
  static final formatters = [
    FilteringTextInputFormatter.deny(RegExp(digitsPattern)),
    FilteringTextInputFormatter.deny(RegExp(specialCharsPattern)),
  ];
}
