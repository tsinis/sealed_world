import "package:flutter/services.dart";

class NameTextInput {
  const NameTextInput._();

  static const digitsPattern = "[0-9]";
  // ignore: avoid-non-ascii-symbols, some names can contain special characters.
  static const specialCharsPattern = r'[~`!@#$%^&§…_={*}[\]“„«»"|:;<>–—•+/?\\]';

  static final List<FilteringTextInputFormatter> formatters = [
    FilteringTextInputFormatter.deny(RegExp(digitsPattern)),
    FilteringTextInputFormatter.deny(RegExp(specialCharsPattern)),
  ];
}
