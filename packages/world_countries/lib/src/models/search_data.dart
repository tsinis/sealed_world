import "dart:collection" show UnmodifiableListView;

import "package:flutter/foundation.dart" show immutable;

@immutable
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

  @override
  String toString({bool short = true}) => short
      ? super.toString()
      : 'SearchData("$internationalName", $namesNative, code: "$code", '
            'name: "$name", other: "$other", others: "$others")';
}
