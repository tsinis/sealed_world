import "package:sealed_currencies/sealed_currencies.dart" show JsonEncodable;

// TODO!: Move to languages.
extension ListExtension<T extends Object> on List<T?> {
  String toInstancesString() =>
      '''[${whereType<T>().map((e) => "${e.runtimeType}()").join("${JsonEncodable.separator} ")}]''';
}
