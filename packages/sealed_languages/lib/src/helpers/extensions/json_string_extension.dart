import "dart:convert";

import "../../typedefs/typedefs.dart";

extension JsonStringExtension on String {
  T parse<T>(T Function(JsonMap map) fromJson, {JsonCodec? codec}) =>
      fromJson((codec ?? const JsonCodec()).decode(this) as JsonMap);

  T? tryParse<T>(T? Function(JsonMap map)? fromJson, {JsonCodec? codec}) {
    codec ??= const JsonCodec();
    try {
      final jsonMap = codec.decode(this) as JsonMap;

      return fromJson?.call(jsonMap);
    } catch (_) {
      return null;
    }
  }
}
