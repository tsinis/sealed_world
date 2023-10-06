import "dart:convert";

import "package:sealed_currencies/sealed_currencies.dart";

import "../helpers/extensions/translated_name_extension.dart";
import "../interfaces/named.dart";

// TODO! Move to languages.
class TranslatedName implements Named, JsonEncodable<TranslatedName> {
  const TranslatedName(
    this.language, {
    required this.name,
    this.fullName,
    this.countryCode,
  })  : assert(name.length > 0, "`name` should not be empty!"),
        assert(
          fullName == null || fullName.length > 0,
          "`fullName` should not be empty!",
        ),
        assert(
          countryCode == null || countryCode.length > 0,
          "`countryCode` should not be empty!",
        );

  final NaturalLanguage language;

  final String? countryCode;

  final String? fullName;

  @override
  final String name;

  @override
  String toString({bool short = true}) => short
      ? '''$TranslatedName(${language.runtimeType}(), name: "$name", fullName: ${fullName == null ? fullName : '"$fullName"'}, countryCode: ${countryCode == null ? countryCode : '"$countryCode"'})'''
      : '''$TranslatedName($language, name: "$name", fullName: ${fullName == null ? fullName : '"$fullName"'}, countryCode: ${countryCode == null ? countryCode : '"$countryCode"'})''';

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
