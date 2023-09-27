// TODO!: Move to languages.
extension ListExtension<T extends Object> on List<T?> {
  String toInstancesString() =>
      whereType<T>().map((obj) => "${obj.runtimeType}()").toList().toString();
}
