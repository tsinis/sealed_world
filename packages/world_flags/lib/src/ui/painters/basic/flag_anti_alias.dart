import 'package:flutter/foundation.dart' show visibleForTesting;

@visibleForTesting
// ignore: avoid_positional_boolean_parameters, against wrong_number_of_parameters_for_setter.
set flagAntiAliasOverride(bool doAntiAlias) => _doAntiAlias = doAntiAlias;

bool get flagAntiAliasOverride => _doAntiAlias;

bool _doAntiAlias = false;
