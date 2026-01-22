import "../../models/search_data.dart";

extension SearchDataExtension on SearchData {
  String get anyName => name ?? internationalName;

  SearchData copyWith({
    String? code,
    String? internationalName,
    String? name,
    Set<String>? namesNative,
    String? other,
    Iterable<String>? others,
  }) => SearchData(
    internationalName ?? this.internationalName,
    namesNative ?? this.namesNative,
    code: code ?? this.code,
    name: name ?? this.name,
    other: other ?? this.other,
    others: others ?? this.others,
  );
}
