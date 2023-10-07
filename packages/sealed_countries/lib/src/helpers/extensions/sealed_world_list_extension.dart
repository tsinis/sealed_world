// TODO!: Move to languages.
/// Extension on [List] class to provide helper methods for working with lists.
extension SealedWorldListExtension<T extends Object> on List<T?> {
  /// Returns a [String] representation of the list containing only the names of
  /// the non-null objects.
  ///
  /// Example:
  /// ```dart
  /// final list = [1, null, 'hello', 2.5];
  /// final result = list.toInstancesString(); // [int(), String(), double()]
  /// ```
  String toInstancesString() =>
      whereType<T>().map((obj) => "${obj.runtimeType}()").toList().toString();
}
