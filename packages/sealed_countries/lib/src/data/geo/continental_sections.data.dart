import "continents.data.dart";

// Americas.

/// Represents the Central America region.
///
/// This class extends the `Americas` class and sets its `name` property to
/// "Central America".
///
/// Example:
///
/// ```dart
/// final centralAmerica = CentralAmerica();
/// print(centralAmerica.name); // "Central America"
/// ```
// ignore: prefer-match-file-name, not needed in data file.
class CentralAmerica extends Americas {
  /// Creates a new `CentralAmerica` instance.
  const CentralAmerica();

  @override
  String get name => "Central America";
}

/// Represents the North America region, which includes the countries of Canada,
/// Mexico, and the United States.
///
/// This class extends the `Americas` class and sets its `name` property to
/// "North America".
///
/// Example:
///
/// ```dart
/// final northAmerica = NorthAmerica();
/// print(northAmerica.name); // "North America"
/// ```
class NorthAmerica extends Americas {
  /// Creates a new `NorthAmerica` instance.
  const NorthAmerica();

  @override
  String get name => "North America";
}

/// Represents the South America region, which includes the countries of
/// Argentina, Bolivia, Brazil, Chile, Colombia, etc.
///
/// This class extends the `Americas` class and sets its `name` property to
/// "South America".
///
/// Example:
///
/// ```dart
/// final southAmerica = SouthAmerica();
/// print(southAmerica.name); // "South America"
/// ```
class SouthAmerica extends Americas {
  /// Creates a new `SouthAmerica` instance.
  const SouthAmerica();

  @override
  String get name => "South America";
}

/// Represents the Caribbean region, which includes the islands of the Caribbean
/// Sea.
///
/// This class extends the `Americas` class and sets its `name` property to
/// "Caribbean".
///
/// Example:
///
/// ```dart
/// final caribbean = Caribbean();
/// print(caribbean.name); // "Caribbean"
/// ```
class Caribbean extends Americas {
  /// Creates a new `Caribbean` instance.
  const Caribbean();

  @override
  String get name => "Caribbean";
}

// Europe.

/// Represents the Central Europe region, which includes the countries of
/// Austria, Czech Republic, Germany, Hungary, etc.
///
/// This class extends the `Europe` class and sets its `name` property to
/// "Central Europe".
///
/// Example:
///
/// ```dart
/// final centralEurope = CentralEurope();
/// print(centralEurope.name); // "Central Europe"
/// ```
class CentralEurope extends Europe {
  /// Creates a new `CentralEurope` instance.
  const CentralEurope();

  @override
  String get name => "Central ${super.name}";
}

/// Represents the Northern Europe region, which includes the countries of
/// Denmark, Finland, Iceland, Norway, Sweden, etc.
///
/// This class extends the `Europe` class and sets its `name` property to
/// "Northern Europe".
///
/// Example:
///
/// ```dart
/// final northernEurope = NorthernEurope();
/// print(northernEurope.name); // "Northern Europe"
/// ```
class NorthernEurope extends Europe {
  /// Creates a new `NorthernEurope` instance.
  const NorthernEurope();

  @override
  String get name => "North ${super.name}";
}

/// Represents the Southern Europe region, which includes the countries of
/// Andorra, Bosnia and Herzegovina, Croatia, Cyprus, Greece, Italy,
/// Malta, Montenegro, North Macedonia, Portugal, San Marino, Serbia, etc.
///
/// This class extends the `Europe` class and sets its `name` property to
/// "Southern Europe".
///
/// Example:
///
/// ```dart
/// final southernEurope = SouthernEurope();
/// print(southernEurope.name); // "Southern Europe"
/// ```
class SouthernEurope extends Europe {
  /// Creates a new `SouthernEurope` instance.
  const SouthernEurope();

  @override
  String get name => "Southern ${super.name}";
}

/// Represents the Eastern Europe region, which includes the countries of
/// Belarus, Poland, Romania, Russia, etc.
///
/// This class extends the `Europe` class and sets its `name` property to
/// "Eastern Europe".
///
/// Example:
///
/// ```dart
/// final easternEurope = EasternEurope();
/// print(easternEurope.name); // "Eastern Europe"
/// ```
class EasternEurope extends Europe {
  /// Creates a new `EasternEurope` instance.
  const EasternEurope();

  @override
  String get name => "Eastern ${super.name}";
}

/// Represents the Western Europe region, which includes the countries of
/// Austria, Belgium, France, Germany, Netherlands, Switzerland, etc.
///
/// This class extends the `Europe` class and sets its `name` property to
/// "Western Europe".
///
/// Example:
///
/// ```dart
/// final westernEurope = WesternEurope();
/// print(westernEurope.name); // "Western Europe"
/// ```
class WesternEurope extends Europe {
  /// Creates a new `WesternEurope` instance.
  const WesternEurope();

  @override
  String get name => "Western ${super.name}";
}

/// Represents the Southwest Europe region, which includes the countries of
/// Andorra, France, Portugal, Spain, etc.
///
/// This class extends the `Europe` class and sets its `name` property to
/// "Southwest Europe".
///
/// Example:
///
/// ```dart
/// final southwestEurope = SouthwestEurope();
/// print(southwestEurope.name); // "Southwest Europe"
/// ```
class SouthwestEurope extends Europe {
  /// Creates a new `SouthwestEurope` instance.
  const SouthwestEurope();

  @override
  String get name => "Southwest ${super.name}";
}

// Africa.

/// Represents the Middle Africa region, which includes the countries of Angola,
/// Cameroon, Central African Republic, Chad, Congo, etc.
///
/// This class extends the `Africa` class and sets its `name` property to
/// "Middle Africa".
///
/// Example:
///
/// ```dart
/// final middleAfrica = MiddleAfrica();
/// print(middleAfrica.name); // "Middle Africa"
/// ```
class MiddleAfrica extends Africa {
  /// Creates a new `MiddleAfrica` instance.
  const MiddleAfrica();

  @override
  String get name => "Middle ${super.name}";
}

/// Represents the Western Africa region, which includes the countries of Benin,
/// Burkina Faso, Cape Verde, Ivory Coast, Gambia, Ghana, Guinea, etc.
///
/// This class extends the `Africa` class and sets its `name` property to
/// "Western Africa".
///
/// Example:
///
/// ```dart
/// final westernAfrica = WesternAfrica();
/// print(westernAfrica.name); // "Western Africa"
/// ```
class WesternAfrica extends Africa {
  /// Creates a new `WesternAfrica` instance.
  const WesternAfrica();

  @override
  String get name => "Western ${super.name}";
}

/// Represents the Southern Africa region, which includes the countries of
/// Botswana, Eswatini (Swaziland), Lesotho, Namibia, South Africa, and
/// Zimbabwe.
///
/// This class extends the `Africa` class and sets its `name` property to
/// "Southern Africa".
///
/// Example:
///
/// ```dart
/// final southernAfrica = SouthernAfrica();
/// print(southernAfrica.name); // "Southern Africa"
/// ```
class SouthernAfrica extends Africa {
  /// Creates a new `SouthernAfrica` instance.
  const SouthernAfrica();

  @override
  String get name => "Southern ${super.name}";
}

/// Represents the Eastern Africa region, which includes the countries of
/// Burundi, Comoros, Djibouti, Eritrea, Ethiopia, Kenya, Madagascar, etc.
///
/// This class extends the `Africa` class and sets its `name` property to
/// "Eastern Africa".
///
/// Example:
///
/// ```dart
/// final easternAfrica = EasternAfrica();
/// print(easternAfrica.name); // "Eastern Africa"
/// ```
class EasternAfrica extends Africa {
  /// Creates a new `EasternAfrica` instance.
  const EasternAfrica();

  @override
  String get name => "Eastern ${super.name}";
}

/// Represents the Northern Africa region, which includes the countries of
/// Algeria, Egypt, Libya, Morocco, South Sudan, Sudan, and Tunisia.
///
/// This class extends the `Africa` class and sets its `name` property to
/// "Northern Africa".
///
/// Example:
///
/// ```dart
/// final northernAfrica = NorthernAfrica();
/// print(northernAfrica.name); // "Northern Africa"
/// ```
class NorthernAfrica extends Africa {
  /// Creates a new `NorthernAfrica` instance.
  const NorthernAfrica();

  @override
  String get name => "Northern ${super.name}";
}

// Asia.

/// Represents the Central Asia region, which includes the countries of
/// Kazakhstan, Kyrgyzstan, Tajikistan, Turkmenistan, and Uzbekistan.
///
/// This class extends the `Asia` class and sets its `name` property to "Central
/// Asia".
///
/// Example:
///
/// ```dart
/// final centralAsia = CentralAsia();
/// print(centralAsia.name); // "Central Asia"
/// ```
class CentralAsia extends Asia {
  /// Creates a new `CentralAsia` instance.
  const CentralAsia();

  @override
  String get name => "Central ${super.name}";
}

/// Represents the Eastern Asia region, which includes the countries of China,
/// Japan, Mongolia, North Korea, South Korea, Taiwan etc.
///
/// This class extends the `Asia` class and sets its `name` property to "Eastern
/// Asia".
///
/// Example:
///
/// ```dart
/// final easternAsia = EasternAsia();
/// print(easternAsia.name); // "Eastern Asia"
/// ```
class EasternAsia extends Asia {
  /// Creates a new `EasternAsia` instance.
  const EasternAsia();

  @override
  String get name => "Eastern ${super.name}";
}

/// Represents the Western Asia region, which includes the countries of Armenia,
/// Azerbaijan, Bahrain, Cyprus, Georgia, Iran, Iraq, etc.
///
/// This class extends the `Asia` class and sets its `name` property to "Western
/// Asia".
///
/// Example:
///
/// ```dart
/// final westernAsia = WesternAsia();
/// print(westernAsia.name); // "Western Asia"
/// ```
class WesternAsia extends Asia {
  /// Creates a new `WesternAsia` instance.
  const WesternAsia();

  @override
  String get name => "Western ${super.name}";
}

/// Represents the Southern Asia region, which includes the countries of
/// Afghanistan, Bangladesh, Bhutan, India, Maldives, Nepal, Pakistan, etc.
///
/// This class extends the `Asia` class and sets its `name` property to
/// "Southern Asia".
///
/// Example:
///
/// ```dart
/// final southernAsia = SouthernAsia();
/// print(southernAsia.name); // "Southern Asia"
/// ```
class SouthernAsia extends Asia {
  /// Creates a new `SouthernAsia` instance.
  const SouthernAsia();

  @override
  String get name => "Southern ${super.name}";
}

/// Represents the Southeastern Asia region, which includes the countries of
/// Brunei, Cambodia, East Timor, Indonesia, Laos, Malaysia, etc.
///
/// This class extends the `Asia` class and sets its `name` property to
/// "SouthEastern Asia".
///
/// Example:
///
/// ```dart
/// final southEasternAsia = SouthEasternAsia();
/// print(southEasternAsia.name); // "SouthEastern Asia"
/// ```
class SouthEasternAsia extends Asia {
  /// Creates a new `SouthEasternAsia` instance.
  const SouthEasternAsia();

  @override
  String get name => "SouthEastern ${super.name}";
}

// Oceania.

/// Represents the Australia and New Zealand region, which includes the
/// countries of Australia and New Zealand.
///
/// This class extends the `Oceania` class and sets its `name` property to
/// "AustraliaAndNewZealand".
///
/// Example:
///
/// ```dart
/// final australiaAndNewZealand = AustraliaAndNewZealand();
/// print(australiaAndNewZealand.name); // "AustraliaAndNewZealand"
/// ```
class AustraliaAndNewZealand extends Oceania {
  /// Creates a new `AustraliaAndNewZealand` instance.
  const AustraliaAndNewZealand();

  @override
  String get name => "AustraliaAndNewZealand";
}

/// Represents the Melanesia region, which includes the countries of Fiji, Papua
/// New Guinea, Solomon Islands, and Vanuatu.
///
/// This class extends the `Oceania` class and sets its `name` property to
/// "Melanesia".
///
/// Example:
///
/// ```dart
/// final melanesia = Melanesia();
/// print(melanesia.name); // "Melanesia"
/// ```
class Melanesia extends Oceania {
  /// Creates a new `Melanesia` instance.
  const Melanesia();

  @override
  String get name => "Melanesia";
}

/// Represents the Micronesia region, which includes the countries of Federated
/// States of Micronesia, Guam, Kiribati, Marshall Islands, Nauru, etc.
///
/// This class extends the `Oceania` class and sets its `name` property to
/// "Micronesia".
///
/// Example:
///
/// ```dart
/// final micronesia = Micronesia();
/// print(micronesia.name); // "Micronesia"
/// ```
class Micronesia extends Oceania {
  /// Creates a new `Micronesia` instance.
  const Micronesia();

  @override
  String get name => "Micronesia";
}

/// Represents the Polynesia region, which includes the countries of American
/// Samoa, Cook Islands, French Polynesia, Niue, etc.
///
/// This class extends the `Oceania` class and sets its `name` property to
/// "Polynesia".
///
/// Example:
///
/// ```dart
/// final polynesia = Polynesia();
/// print(polynesia.name); // "Polynesia"
/// ```
class Polynesia extends Oceania {
  /// Creates a new `Polynesia` instance.
  const Polynesia();

  @override
  String get name => "Polynesia";
}
