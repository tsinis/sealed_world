// ignore_for_file: prefer-class-destructuring

import "package:flutter/foundation.dart";

import "../model/flag_properties.dart";

/// A specialized [DiagnosticsProperty] for displaying [FlagProperties] in a
/// well-structured and readable format.
///
/// This diagnostics property makes debugging easier by showing all the relevant
/// properties of a flag, including its colors, aspect ratio, orientation, and
/// any additional elements.
///
/// Example usage:
/// ```dart
/// @override
/// void debugFillProperties(DiagnosticPropertiesBuilder properties) {
///   super.debugFillProperties(properties);
///   properties.add(FlagPropertiesProperty(flagProperties));
/// }
/// ```
class FlagPropertiesProperty extends DiagnosticsProperty<FlagProperties> {
  /// Creates a [FlagPropertiesProperty] with the given name and value.
  ///
  /// Other optional parameters allow further customization of how this
  /// property is displayed in diagnostics output.
  FlagPropertiesProperty(
    FlagProperties properties, {
    super.description,
    super.ifNull = "no flag properties",
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
  }) : super("flag properties", properties);

  @override
  Map<String, Object?> toJsonMap(DiagnosticsSerializationDelegate delegate) {
    final json = super.toJsonMap(delegate);
    if (value == null) return json;

    json["aspectRatio"] = value?.aspectRatio;
    json["orientation"] = value?.stripeOrientation.name;
    json["stripesCount"] = value?.stripeColors.length;
    if (value?.baseElementType != null) {
      json["baseElementType"] = value?.baseElementType?.name;
    }
    if (value?.elementsProperties?.isNotEmpty ?? false) {
      json["elementsCount"] = value?.elementsProperties?.length;
    }

    return json;
  }

  @override
  String valueToString({TextTreeConfiguration? parentConfiguration}) {
    final flag = value;
    if (flag == null) return "null";

    final buffer = StringBuffer("aspectRatio: ${flag.aspectRatio}\n")
      ..write("stripeOrientation: ${flag.stripeOrientation.name}\n")
      ..write("baseElementType: ${flag.baseElementType?.name}\n");

    final colorCount = flag.stripeColors.length;
    buffer.write("stripeColors: $colorCount\n");

    if (flag.elementsProperties?.isNotEmpty ?? false) {
      final elementCount = flag.elementsProperties?.length;
      buffer.write("elementsProperties: $elementCount");
    } else {
      buffer.write("has no foreground elementsProperties");
    }

    return buffer.toString();
  }
}
