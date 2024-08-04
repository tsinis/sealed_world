import "package:flutter/material.dart";

/// A flag to control anti-aliasing for flag elements.
///
/// This flag is used to enable or disable anti-aliasing for flag elements. It
/// is primarily used in golden tests where anti-aliasing is set to true.
@visibleForTesting
// ignore: avoid_positional_boolean_parameters, against wrong_number_of_parameters_for_setter.
set flagAntiAliasOverride(bool doAntiAlias) => _doAntiAlias = doAntiAlias;

/// Retrieves the current value of the anti-aliasing flag.
///
/// Returns true if anti-aliasing is enabled, false otherwise.
bool get flagAntiAliasOverride => _doAntiAlias;

/// The internal flag to control anti-aliasing.
///
/// This flag is set to false by default.
bool _doAntiAlias = false;

/// Flutter Golden tests are using Ahem font family by default. It's showing
/// squares instead of real characters. With this setter you can specify
/// different font family for your tests.
@visibleForTesting
set flagTextStyleOverride(TextStyle textStyle) => _textStyle = textStyle;

/// Retrieves the current value of the font family that is used for flag's
/// custom text elements (i.e. AFG, SAU, IRQ, VIR flags).
TextStyle get flagTextStyleOverride => _textStyle;

TextStyle _textStyle = const TextStyle();
