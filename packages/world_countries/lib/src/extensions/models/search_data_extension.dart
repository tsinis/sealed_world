import "package:meta/meta.dart" show useResult;

import "../../models/search_data.dart";

/// Extension methods for [SearchData] providing utility functionality.
///
/// This extension adds convenient methods to [SearchData] instances for
/// accessing names and creating modified copies of search data objects.
extension SearchDataExtension on SearchData {
  /// Returns the first available name from [name] or [internationalName].
  ///
  /// This getter provides a convenient way to get a displayable name without
  /// having to manually check for null values. It follows this priority:
  /// 1. Returns [name] if it's not null (the localized name).
  /// 2. Falls back to [internationalName] if [name] is null.
  ///
  /// This is particularly useful when you need to display a name but aren't
  /// sure whether a localized translation is available.
  String get anyName => name ?? internationalName;

  /// Creates a new [SearchData] instance with modified properties.
  ///
  /// This method allows you to create a copy of the current [SearchData] with
  /// some properties changed while keeping the rest unchanged. Any parameter
  /// that is not provided (or is null) will use the value from the current
  /// instance.
  @useResult
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
