part of "../../model/geo/submodels/subregion.dart";

// Americas.

/// Represents the Central America region.
///
/// This class extends [SubRegion] and sets its [name] property to
/// "Central America".
///
/// Example:
///
/// ```dart
/// final centralAmerica = CentralAmerica();
/// print(centralAmerica.name); // "Central America"
/// ```
final class CentralAmerica extends SubRegion {
  /// Creates a new [CentralAmerica] instance.
  const CentralAmerica() : super(const Americas(), name: "Central America");
}

/// Represents the North America region, which includes the countries of Canada,
/// Mexico, and the United States.
///
/// This class extends [SubRegion] and sets its [name] property to
/// "North America".
///
/// Example:
///
/// ```dart
/// final northAmerica = NorthAmerica();
/// print(northAmerica.name); // "North America"
/// ```
final class NorthAmerica extends SubRegion {
  /// Creates a new [NorthAmerica] instance.
  const NorthAmerica() : super(const Americas(), name: "North America");
}

/// Represents the South America region, which includes the countries of
/// Argentina, Bolivia, Brazil, Chile, Colombia, etc.
///
/// This class extends [SubRegion] and sets its [name] property to
/// "South America".
///
/// Example:
///
/// ```dart
/// final southAmerica = SouthAmerica();
/// print(southAmerica.name); // "South America"
/// ```
final class SouthAmerica extends SubRegion {
  /// Creates a new [SouthAmerica] instance.
  const SouthAmerica() : super(const Americas(), name: "South America");
}

/// Represents the Caribbean region, which includes the islands of the Caribbean
/// Sea.
///
/// This class extends [SubRegion] and sets its [name] property to
/// "Caribbean".
///
/// Example:
///
/// ```dart
/// final caribbean = Caribbean();
/// print(caribbean.name); // "Caribbean"
/// ```
final class Caribbean extends SubRegion {
  /// Creates a new [Caribbean] instance.
  const Caribbean() : super(const Americas(), name: "Caribbean");
}

// Europe.

/// Represents the Central Europe region, which includes the countries of
/// Austria, Czech Republic, Germany, Hungary, etc.
///
/// This class extends [SubRegion] and sets its [name] property to
/// "Central Europe".
///
/// Example:
///
/// ```dart
/// final centralEurope = CentralEurope();
/// print(centralEurope.name); // "Central Europe"
/// ```
final class CentralEurope extends SubRegion {
  /// Creates a new [CentralEurope] instance.
  const CentralEurope() : super(const Europe(), name: "Central Europe");
}

/// Represents the Northern Europe region, which includes the countries of
/// Denmark, Finland, Iceland, Norway, Sweden, etc.
///
/// This class extends [SubRegion] and sets its [name] property to
/// "North Europe".
///
/// Example:
///
/// ```dart
/// final northernEurope = NorthernEurope();
/// print(northernEurope.name); // "Northern Europe"
/// ```
final class NorthernEurope extends SubRegion {
  /// Creates a new [NorthernEurope] instance.
  const NorthernEurope() : super(const Europe(), name: "Northern Europe");
}

/// Represents the Southern Europe region, which includes the countries of
/// Andorra, Bosnia and Herzegovina, Croatia, Cyprus, Greece, Italy,
/// Malta, Montenegro, North Macedonia, Portugal, San Marino, Serbia, etc.
///
/// This class extends [SubRegion] and sets its [name] property to
/// "Southern Europe".
///
/// Example:
///
/// ```dart
/// final southernEurope = SouthernEurope();
/// print(southernEurope.name); // "Southern Europe"
/// ```
final class SouthernEurope extends SubRegion {
  /// Creates a new [SouthernEurope] instance.
  const SouthernEurope() : super(const Europe(), name: "Southern Europe");
}

/// Represents the Eastern Europe region, which includes the countries of
/// Belarus, Poland, Romania, Russia, etc.
///
/// This class extends [SubRegion] and sets its [name] property to
/// "Eastern Europe".
///
/// Example:
///
/// ```dart
/// final easternEurope = EasternEurope();
/// print(easternEurope.name); // "Eastern Europe"
/// ```
final class EasternEurope extends SubRegion {
  /// Creates a new [EasternEurope] instance.
  const EasternEurope() : super(const Europe(), name: "Eastern Europe");
}

/// Represents the Western Europe region, which includes the countries of
/// Austria, Belgium, France, Germany, Netherlands, Switzerland, etc.
///
/// This class extends [SubRegion] and sets its [name] property to
/// "Western Europe".
///
/// Example:
///
/// ```dart
/// final westernEurope = WesternEurope();
/// print(westernEurope.name); // "Western Europe"
/// ```
final class WesternEurope extends SubRegion {
  /// Creates a new [WesternEurope] instance.
  const WesternEurope() : super(const Europe(), name: "Western Europe");
}

/// Represents the Southwest Europe region, which includes the countries of
/// Andorra, France, Portugal, Spain, etc.
///
/// This class extends [SubRegion] and sets its [name] property to
/// "Southwest Europe".
///
/// Example:
///
/// ```dart
/// final southwestEurope = SouthwestEurope();
/// print(southwestEurope.name); // "Southwest Europe"
/// ```
final class SouthwestEurope extends SubRegion {
  /// Creates a new [SouthwestEurope] instance.
  const SouthwestEurope() : super(const Europe(), name: "Southwest Europe");
}

// Africa.

/// Represents the Middle Africa region, which includes the countries of Angola,
/// Cameroon, Central African Republic, Chad, Congo, etc.
///
/// This class extends [SubRegion] and sets its [name] property to
/// "Middle Africa".
///
/// Example:
///
/// ```dart
/// final middleAfrica = MiddleAfrica();
/// print(middleAfrica.name); // "Middle Africa"
/// ```
final class MiddleAfrica extends SubRegion {
  /// Creates a new [MiddleAfrica] instance.
  const MiddleAfrica() : super(const Africa(), name: "Middle Africa");
}

/// Represents the Western Africa region, which includes the countries of Benin,
/// Burkina Faso, Cape Verde, Ivory Coast, Gambia, Ghana, Guinea, etc.
///
/// This class extends [SubRegion] and sets its [name] property to
/// "Western Africa".
///
/// Example:
///
/// ```dart
/// final westernAfrica = WesternAfrica();
/// print(westernAfrica.name); // "Western Africa"
/// ```
final class WesternAfrica extends SubRegion {
  /// Creates a new [WesternAfrica] instance.
  const WesternAfrica() : super(const Africa(), name: "Western Africa");
}

/// Represents the Southern Africa region, which includes the countries of
/// Botswana, Eswatini (Swaziland), Lesotho, Namibia, South Africa, and
/// Zimbabwe.
///
/// This class extends [SubRegion] and sets its [name] property to
/// "Southern Africa".
///
/// Example:
///
/// ```dart
/// final southernAfrica = SouthernAfrica();
/// print(southernAfrica.name); // "Southern Africa"
/// ```
final class SouthernAfrica extends SubRegion {
  /// Creates a new [SouthernAfrica] instance.
  const SouthernAfrica() : super(const Africa(), name: "Southern Africa");
}

/// Represents the Eastern Africa region, which includes the countries of
/// Burundi, Comoros, Djibouti, Eritrea, Ethiopia, Kenya, Madagascar, etc.
///
/// This class extends [SubRegion] and sets its [name] property to
/// "Eastern Africa".
///
/// Example:
///
/// ```dart
/// final easternAfrica = EasternAfrica();
/// print(easternAfrica.name); // "Eastern Africa"
/// ```
final class EasternAfrica extends SubRegion {
  /// Creates a new [EasternAfrica] instance.
  const EasternAfrica() : super(const Africa(), name: "Eastern Africa");
}

/// Represents the Northern Africa region, which includes the countries of
/// Algeria, Egypt, Libya, Morocco, South Sudan, Sudan, and Tunisia.
///
/// This class extends [SubRegion] and sets its [name] property to
/// "Northern Africa".
///
/// Example:
///
/// ```dart
/// final northernAfrica = NorthernAfrica();
/// print(northernAfrica.name); // "Northern Africa"
/// ```
final class NorthernAfrica extends SubRegion {
  /// Creates a new [NorthernAfrica] instance.
  const NorthernAfrica() : super(const Africa(), name: "Northern Africa");
}

// Asia.

/// Represents the Central Asia region, which includes the countries of
/// Kazakhstan, Kyrgyzstan, Tajikistan, Turkmenistan, and Uzbekistan.
///
/// This class extends [SubRegion] and sets its [name] property to "Central
/// Asia".
///
/// Example:
///
/// ```dart
/// final centralAsia = CentralAsia();
/// print(centralAsia.name); // "Central Asia"
/// ```
final class CentralAsia extends SubRegion {
  /// Creates a new [CentralAsia] instance.
  const CentralAsia() : super(const Asia(), name: "Central Asia");
}

/// Represents the Eastern Asia region, which includes the countries of China,
/// Japan, Mongolia, North Korea, South Korea, Taiwan etc.
///
/// This class extends [SubRegion] and sets its [name] property to "Eastern
/// Asia".
///
/// Example:
///
/// ```dart
/// final easternAsia = EasternAsia();
/// print(easternAsia.name); // "Eastern Asia"
/// ```
final class EasternAsia extends SubRegion {
  /// Creates a new [EasternAsia] instance.
  const EasternAsia() : super(const Asia(), name: "Eastern Asia");
}

/// Represents the Western Asia region, which includes the countries of Armenia,
/// Azerbaijan, Bahrain, Cyprus, Georgia, Iran, Iraq, etc.
///
/// This class extends [SubRegion] and sets its [name] property to "Western
/// Asia".
///
/// Example:
///
/// ```dart
/// final westernAsia = WesternAsia();
/// print(westernAsia.name); // "Western Asia"
/// ```
final class WesternAsia extends SubRegion {
  /// Creates a new [WesternAsia] instance.
  const WesternAsia() : super(const Asia(), name: "Western Asia");
}

/// Represents the Southern Asia region, which includes the countries of
/// Afghanistan, Bangladesh, Bhutan, India, Maldives, Nepal, Pakistan, etc.
///
/// This class extends [SubRegion] and sets its [name] property to
/// "Southern Asia".
///
/// Example:
///
/// ```dart
/// final southernAsia = SouthernAsia();
/// print(southernAsia.name); // "Southern Asia"
/// ```
final class SouthernAsia extends SubRegion {
  /// Creates a new [SouthernAsia] instance.
  const SouthernAsia() : super(const Asia(), name: "Southern Asia");
}

/// Represents the Southeastern Asia region, which includes the countries of
/// Brunei, Cambodia, East Timor, Indonesia, Laos, Malaysia, etc.
///
/// This class extends [SubRegion] and sets its [name] property to
/// "SouthEastern Asia".
///
/// Example:
///
/// ```dart
/// final southEasternAsia = SouthEasternAsia();
/// print(southEasternAsia.name); // "SouthEastern Asia"
/// ```
final class SouthEasternAsia extends SubRegion {
  /// Creates a new [SouthEasternAsia] instance.
  const SouthEasternAsia() : super(const Asia(), name: "SouthEastern Asia");
}

// Oceania.

/// Represents the Australia and New Zealand region, which includes the
/// countries of Australia and New Zealand.
///
/// This class extends [SubRegion] and sets its [name] property to
/// "AustraliaAndNewZealand".
///
/// Example:
///
/// ```dart
/// final australiaAndNewZealand = AustraliaAndNewZealand();
/// print(australiaAndNewZealand.name); // "AustraliaAndNewZealand"
/// ```
final class AustraliaAndNewZealand extends SubRegion {
  /// Creates a new [AustraliaAndNewZealand] instance.
  const AustraliaAndNewZealand()
    : super(const Oceania(), name: "AustraliaAndNewZealand");
}

/// Represents the Melanesia region, which includes the countries of Fiji, Papua
/// New Guinea, Solomon Islands, and Vanuatu.
///
/// This class extends [SubRegion] and sets its [name] property to
/// "Melanesia".
///
/// Example:
///
/// ```dart
/// final melanesia = Melanesia();
/// print(melanesia.name); // "Melanesia"
/// ```
final class Melanesia extends SubRegion {
  /// Creates a new [Melanesia] instance.
  const Melanesia() : super(const Oceania(), name: "Melanesia");
}

/// Represents the Micronesia region, which includes the countries of Federated
/// States of Micronesia, Guam, Kiribati, Marshall Islands, Nauru, etc.
///
/// This class extends [SubRegion] and sets its [name] property to
/// "Micronesia".
///
/// Example:
///
/// ```dart
/// final micronesia = Micronesia();
/// print(micronesia.name); // "Micronesia"
/// ```
final class Micronesia extends SubRegion {
  /// Creates a new [Micronesia] instance.
  const Micronesia() : super(const Oceania(), name: "Micronesia");
}

/// Represents the Polynesia region, which includes the countries of American
/// Samoa, Cook Islands, French Polynesia, Niue, etc.
///
/// This class extends [SubRegion] and sets its [name] property to
/// "Polynesia".
///
/// Example:
///
/// ```dart
/// final polynesia = Polynesia();
/// print(polynesia.name); // "Polynesia"
/// ```
final class Polynesia extends SubRegion {
  /// Creates a new [Polynesia] instance.
  const Polynesia() : super(const Oceania(), name: "Polynesia");
}
