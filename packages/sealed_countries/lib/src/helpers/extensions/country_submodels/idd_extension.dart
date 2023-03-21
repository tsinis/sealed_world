import "../../../model/country/submodels/idd.dart";

extension IddExtension on Idd {
  bool get hasSingleSuffix => suffixes.length == 1;

  String phoneCode({String leading = "+"}) =>
      "$leading$root${hasSingleSuffix ? "${suffixes.first}" : ""}";
}
