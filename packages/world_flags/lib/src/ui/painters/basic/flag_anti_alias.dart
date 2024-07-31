import "package:flutter/foundation.dart" show visibleForTesting;

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
