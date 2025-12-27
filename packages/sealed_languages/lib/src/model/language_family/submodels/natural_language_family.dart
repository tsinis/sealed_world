// ignore_for_file: avoid-referencing-subclasses

import "../../../helpers/extensions/iso_object_extension_type.dart";
import "../language_family.dart";

part "../../../data/natural_language_families.data.dart";

/// A class that represents a family of natural languages.
///
/// A natural language family is a group of related languages that share a
/// common ancestor language or language family. Examples of natural language
/// families include the Indo-European family (which includes languages like
/// English, Spanish, French, and German) and the Sino-Tibetan family (which
/// includes languages like Mandarin and Tibetan).
sealed class NaturalLanguageFamily extends LanguageFamily {
  /// Creates a new instance of the [NaturalLanguageFamily] class.
  ///
  /// The [name] parameter is required and should be a string representing the
  /// name of the language family.
  const NaturalLanguageFamily({required super.name});

  /// Returns a [NaturalLanguageFamily] object with the given [name].
  ///
  /// The [name] parameter should be a string representing the name of the
  /// language family. The optional [families] parameter can be used to
  /// specify a list of language families to search through.
  ///
  /// Example usage:
  ///
  /// ```dart
  /// final family = NaturalLanguageFamily.fromName('Indo-European');
  /// print(family); // Prints: LanguageFamily(name: Indo-European).
  /// ```
  factory NaturalLanguageFamily.fromName(
    Object name, [
    Iterable<NaturalLanguageFamily> families = list,
    // ignore: avoid-non-empty-constructor-bodies, more clear for factory methods.
  ]) {
    assert(families.isNotEmpty, "`families` should not be empty!");
    final upperCaseName = IsoObject(name).toUpperCaseCode();

    return families.firstWhere(
      (family) => family.name.toUpperCase() == upperCaseName,
    );
  }

  /// Returns a [NaturalLanguageFamily] object that matches the given value.
  ///
  /// The [value] parameter is the value to match against. The optional [where]
  /// parameter can be used to specify a callback function that returns the
  /// value to match against for each language family. The optional [families]
  /// parameter can be used to specify a list of language families to search
  /// through. If no match is found, this method returns `null`.
  ///
  /// Example usage:
  ///
  /// ```dart
  /// final family = NaturalLanguageFamily.maybeFromValue("Uralic");
  /// print(family); // Prints: LanguageFamily(name: Uralic).
  /// ```
  static NaturalLanguageFamily? maybeFromValue<T extends Object>(
    T value, {
    T? Function(NaturalLanguageFamily family)? where,
    Iterable<NaturalLanguageFamily> families = list,
  }) {
    assert(families.isNotEmpty, "`families` should not be empty!");
    for (final family in families) {
      final expectedValue = where?.call(family) ?? family.name;
      if (expectedValue == value) return family;
    }

    return null;
  }

  /// A list of all natural language families currently
  /// supported by the [NaturalLanguageFamily] class.
  static const list = [
    AfroAsiatic(),
    Algonquian(),
    Austroasiatic(),
    Austronesian(),
    Aymaran(),
    Constructed(),
    Creole(),
    DeneYeniseian(),
    Dravidian(),
    EskimoAleut(),
    IndoEuropean(),
    Japonic(),
    Koreanic(),
    LanguageIsolate(),
    Mongolic(),
    NigerCongo(),
    NiloSaharan(),
    NortheastCaucasian(),
    NorthwestCaucasian(),
    Quechuan(),
    SinoTibetan(),
    SouthCaucasian(),
    TaiKadai(),
    Tupian(),
    Turkic(),
    Uralic(),
  ];
}
