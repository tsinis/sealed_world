import "../../model/geo/submodels/continent.dart";

/// Represents the continent of Europe.
///
/// This class extends the `Continent` class and sets its `name`
/// property to "Europe".
///
/// Example:
///
/// ```dart
/// final europe = Europe();
/// print(europe.name); // "Europe"
/// ```
// ignore: prefer-match-file-name, not needed in data file.
class Europe extends Continent {
  /// Creates a new `Europe` instance.
  const Europe() : super(name: "Europe");
}

/// Represents the continent of Africa.
///
/// This class extends the `Continent` class and sets its `name` property to
/// "Africa".
///
/// Example:
///
/// ```dart
/// final africa = Africa();
/// print(africa.name); // "Africa"
/// ```
class Africa extends Continent {
  /// Creates a new `Africa` instance.
  const Africa() : super(name: "Africa");
}

/// Represents the continent of the Americas.
///
/// This class extends the `Continent` class and sets its `name` property to
/// "Americas".
///
/// Example:
///
/// ```dart
/// final americas = Americas();
/// print(americas.name); // "Americas"
/// ```
class Americas extends Continent {
  /// Creates a new `Americas` instance.
  const Americas() : super(name: "Americas");
}

/// Represents the continent of Asia.
///
/// This class extends the `Continent` class and sets its `name` property to
/// "Asia".
///
/// Example:
///
/// ```dart
/// final asia = Asia();
/// print(asia.name); // "Asia"
/// ```
class Asia extends Continent {
  /// Creates a new `Asia` instance.
  const Asia() : super(name: "Asia");
}

/// Represents the continent of Antarctica.
///
/// This class extends the `Continent` class and sets its `name` property to
/// "Antarctica".
///
/// Example:
///
/// ```dart
/// final antarctica = Antarctica();
/// print(antarctica.name); // "Antarctica"
/// ```
class Antarctica extends Continent {
  /// Creates a new `Antarctica` instance.
  const Antarctica() : super(name: "Antarctica");
}

/// Represents the continent of Oceania.
///
/// This class extends the `Continent` class and sets its `name` property to
/// "Oceania".
///
/// Example:
///
/// ```dart
/// final oceania = Oceania();
/// print(oceania.name); // "Oceania"
/// ```
class Oceania extends Continent {
  /// Creates a new `Oceania` instance.
  const Oceania() : super(name: "Oceania");
}
