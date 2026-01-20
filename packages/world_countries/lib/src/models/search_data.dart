import "dart:collection";

class SearchData extends UnmodifiableListView<String> {
  SearchData(
    this.internationalName,
    this.namesNative, {
    required this.code,
    required this.name,
    this.other,
    this.others,
  }) : super([
         ?name,
         ...namesNative,
         internationalName,
         code,
         ?other,
         ...?others,
       ]);

  SearchData.empty({
    this.code = "",
    this.name,
    this.namesNative = const {},
    String? internationalName,
    this.other,
    this.others,
  }) : internationalName = internationalName ?? "",
       super([
         ?name,
         ...namesNative,
         ?internationalName,
         code,
         ?other,
         ...?others,
       ]);

  final String code;
  final String internationalName;
  final String? name;
  final Iterable<String> namesNative;
  final String? other;
  final Iterable<String>? others;

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

  @override
  String toString() =>
      'SearchData("$internationalName", namesNative: "$namesNative", '
      'code: "$code", name: "$name", other: "$other", others: "$others")';
}
