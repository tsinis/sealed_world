import "package:flutter/foundation.dart";
import "package:sealed_countries/sealed_countries.dart";

/// A [DiagnosticsProperty] that provides a custom diagnostic representation
/// for any [IsoStandardized] objects.
///
/// This property displays key information about a ISO object such as name,
/// codes, and additional data in a structured way that's helpful for debugging.
///
/// Example usage:
/// ```dart
/// void debugFillProperties(DiagnosticPropertiesBuilder properties) {
///   super.debugFillProperties(properties);
///   properties.add(IsoDiagnosticsProperty(isoObject));
///   // Add other properties as needed.
/// }
/// ```
class IsoDiagnosticsProperty<Iso extends IsoStandardized>
    extends DiagnosticsProperty<Iso> {
  /// Creates a diagnostic property for [IsoStandardized] objects.
  ///
  /// The [name] parameter is used to identify the property in diagnostic
  /// output.
  /// The [iso] parameter is the [IsoStandardized] object to be displayed.
  ///
  /// The remaining parameters are optional and can be used to customize
  /// the behavior of the property.
  IsoDiagnosticsProperty(
    Iso? iso, {
    String additionalData = "",
    super.allowNameWrap,
    super.allowWrap,
    super.defaultValue,
    super.expandableValue = true,
    super.ifEmpty,
    super.level,
    super.linePrefix,
    super.missingIfNull,
    super.showName,
    super.showSeparator,
    super.style,
  }) : _data = additionalData,
       _iso = iso,
       super(
         iso?.runtimeType.toString(),
         iso,
         description: _toString(iso, additionalData),
         tooltip: "ISO ${iso.runtimeType} object",
         ifNull: "${iso.runtimeType} is not provided",
       );

  final String _data;
  final Iso? _iso;

  static String _toString<T extends IsoStandardized>(T? iso, String data) =>
      iso == null
      ? "null"
      : "$data ${iso.internationalName} ${iso.code}/${iso.codeOther}"
            .trimLeft();

  @override
  Map<String, Object?> toJsonMap(DiagnosticsSerializationDelegate delegate) {
    final json = super.toJsonMap(delegate);
    if (_iso == null) return json;

    if (_data.isNotEmpty) json["data"] = _data;
    json["name"] = _iso.internationalName;
    json["code"] = _iso.code;
    json["unit"] = _iso.codeOther;

    return json;
  }

  @override
  String valueToString({TextTreeConfiguration? parentConfiguration}) =>
      _toString(_iso, _data);
}
