import "../helpers/extensions/translated_name_extension.dart";
import "../interfaces/iso_standardized.dart";
import "../interfaces/json_encodable.dart";
import "../interfaces/named.dart";
import "core/basic_locale.dart";

/// A class representing a translated name of an ISO object.
///
/// This class implements the [Named] interface and the
/// [JsonEncodable] interface.
/// The [language] property represents the natural language of the translation.
/// The [name] property represents the short/common translation.
/// The [fullName] property represents the full/official translation.
/// The [countryCode] property represents the regional code, that might be used
/// for regional differences in the [language] translation.
class TranslatedName extends BasicLocale implements Named<String> {
  /// Creates a new [TranslatedName] instance with the given language, name
  /// and optional full name and country code.
  const TranslatedName(
    super.language, {
    required this.name,
    this.fullName,
    super.countryCode,
    super.script,
  }) : assert(name.length > 0, "`name` should not be empty!"),
       assert(
         fullName == null || fullName.length > 0,
         "`fullName` should not be empty!",
       ),
       assert(
         countryCode == null ||
             countryCode.length >= IsoStandardized.codeShortLength,
         """`countryCode` have to be at least ${IsoStandardized.codeShortLength} characters long!""",
       );

  /// Represents the full/official translation.
  ///
  /// Some languages have the concept of a common name and a full name, for
  /// example, in the Czech language it is common to use a monosyllabic term for
  /// a language (e.g. "Čeština", "Ruština", "Angličtina", etc.), when formally
  /// it is shortened version of the full form ("Český jazyk", "Ruský jazyk",
  /// "Anglický jazyk", etc.).
  final String? fullName;

  /// Represents the short/common translation.
  @override
  final String name;

  @override
  // TODO! Make `short` nullable in the next major release.
  String toString({bool short = true}) => short
      ? name
      : 'TranslatedName(${language.runtimeType}(), name: "$name"'
            '${fullName == null ? '' : ', fullName: "$fullName"'}'
            '${countryCode == null ? '' : ', countryCode: "$countryCode"'}'
            '${script == null ? '' : ', script: ${script.runtimeType}()'})';

  @override
  String toJson({JsonCodec codec = const JsonCodec()}) => codec.encode(toMap());

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is TranslatedName &&
        other.language == language &&
        other.name.toUpperCase() == name.toUpperCase() &&
        other.fullName?.toUpperCase() == fullName?.toUpperCase();
  }

  @override
  int get hashCode => language.hashCode ^ name.hashCode ^ fullName.hashCode;
}
