import "../../../model/country/submodels/demonyms.dart";

extension DemonymsExtension on Demonyms {
  bool get areSame => male == female;
}
