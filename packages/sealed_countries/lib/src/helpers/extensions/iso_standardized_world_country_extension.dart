import "package:sealed_currencies/sealed_currencies.dart" show IsoStandardized;

import "../../model/country/country.dart";

/// Extension on [IsoStandardized] objects that provides type checking
/// functionality for world countries.
///
/// This extension allows for easy identification of whether an
/// [IsoStandardized] instance is a [WorldCountry].
extension IsoStandardizedWorldCountryExtension on IsoStandardized? {
  /// Returns `true` if this object is an instance of [WorldCountry].
  ///
  /// This getter can be used to check if an [IsoStandardized] object
  /// represents a world country.
  bool get isWorldCountry => this is WorldCountry;

  /// TODO?: Add functional methods to map [IsoStandardized] objects.
}
