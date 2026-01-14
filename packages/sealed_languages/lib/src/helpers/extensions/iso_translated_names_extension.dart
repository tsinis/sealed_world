import "../../interfaces/iso_translated.dart" show IsoTranslated;

/// Provides extension methods for getting the common native names of
/// a [IsoTranslated] object.
extension IsoTranslatedNamesExtension on IsoTranslated {
  /// Returns the common and native names of the ISO object as a single string.
  ///
  /// The [separator] parameter is an optional string that determines the
  /// separator to use between the names. The [skipFirst] parameter is an
  /// optional boolean that determines whether to skip the first name in the
  /// list of names. The [orElse] parameter is an optional string that will be
  /// returned when [skipFirst] is true and there are fewer than two names
  /// (including empty collections). Returns a string representing the common
  /// and native names of the ISO object, separated by [separator].
  String namesCommonNative({
    String separator = "/",
    bool skipFirst = false,
    String? orElse,
  }) {
    if (namesNative?.isEmpty ?? true) return "";
    final names = namesNative?.map((i) => i.toString()).toSet() ?? const {};
    final length = names.length;
    if (orElse != null && skipFirst && length < 2) return orElse;
    // ignore: avoid-passing-self-as-argument, length is checked.
    if (skipFirst && length > 1) names.remove(names.first);

    return names.join(separator);
  }
}
