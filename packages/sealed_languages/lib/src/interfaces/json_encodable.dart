import "dart:convert" show JsonCodec;

abstract interface class JsonEncodable<T extends Object> {
  String toJson({JsonCodec codec = const JsonCodec()});

  static const String separator = ",";
}
