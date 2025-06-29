// ignore_for_file: omit_obvious_property_types, prefer-static-class

import "package:flutter/material.dart" show TextStyle, visibleForTesting;

/// A flag to control anti-aliasing for flag elements.
///
/// This flag is used to enable or disable anti-aliasing for flag elements. It
/// is primarily used in golden tests where anti-aliasing is set to true.
@visibleForTesting
@Deprecated("Ineffective (anti-aliasing is defined on element painters level).")
// Ignoring because of against wrong_number_of_parameters_for_setter.
// ignore: avoid_positional_boolean_parameters, prefer-named-boolean-parameters
set flagAntiAliasOverride(bool value) => _doAntiAlias = value;

/// Retrieves the current value of the anti-aliasing flag.
///
/// Returns true if anti-aliasing is enabled, false otherwise.
@Deprecated("Ineffective (anti-aliasing is defined on element painters level).")
bool get flagAntiAliasOverride => _doAntiAlias;

/// The internal flag to control anti-aliasing.
///
/// This flag is set to false by default.
bool _doAntiAlias = true;

/// Flutter Golden tests are using Ahem font family by default. It's showing
/// squares instead of real characters. With this setter you can specify
/// different font family for your tests.
@visibleForTesting // coverage:ignore-line
@Deprecated("Ineffective (text painters removed).")
set flagTextStyleOverride(TextStyle value) => _textStyle = value;

/// Retrieves the current value of the font family that is used for flag's text.
@Deprecated("Ineffective (text painters removed).") // coverage:ignore-line
TextStyle get flagTextStyleOverride => _textStyle; // coverage:ignore-line

TextStyle _textStyle = const TextStyle(); // coverage:ignore-line
