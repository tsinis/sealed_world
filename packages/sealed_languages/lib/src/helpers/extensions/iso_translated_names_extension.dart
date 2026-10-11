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
    final names = namesNative ?? const [];
    final hasMany = names.length > 1;
    if (skipFirst && !hasMany && orElse != null) return orElse;

    return names.skip(skipFirst && hasMany ? 1 : 0).join(separator);
  }
}
