import "../../../model/country/submodels/postal_code.dart";

extension PostalCodeExtension on PostalCode {
  RegExp validator({
    bool multiLine = false,
    bool caseSensitive = true,
    bool unicode = false,
    bool dotAll = false,
  }) =>
      RegExp(
        regExpPattern,
        multiLine: multiLine,
        caseSensitive: caseSensitive,
        unicode: unicode,
        dotAll: dotAll,
      );
}
