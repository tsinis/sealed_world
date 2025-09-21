import "dart:async" show FutureOr;

/// An extension on the [Duration] class, adding asynchronous utility methods.
///
/// This extension provides simplified asynchronous operations that leverage the
/// inherent duration specified by an instance of [Duration]. It offers a way to
/// execute callback functions after a delay and a convenience getter for
/// sleeping.
///
/// Example usage:
///
/// ```dart
/// void main() async {
///   // Create a duration of 2 seconds
///   Duration twoSeconds = Duration(seconds: 2);
///
///   // Use the `delayed` method to execute a callback after the duration
///   await twoSeconds.delayed(() => print('Delayed execution'));
///
///   // Use the `sleep` getter to introduce a pause in the execution
///   await twoSeconds.sleep;
///   print('Execution resumed after sleep');
/// }
/// ```
extension DurationExtension on Duration {
  /// Executes a [callback] function after the current duration has passed.
  ///
  /// The [callback] is an optional function that returns a `FutureOr<T>`,
  /// allowing for both synchronous and asynchronous operations within the
  /// [callback]. If no [callback] is provided, the method simply waits for the
  /// duration to complete before resolving the returned [Future].
  ///
  /// The method returns a `Future<T>` which completes after the duration has
  /// elapsed and the [callback] (if provided) has finished executing.
  ///
  /// Usage:
  /// ```dart
  /// Duration(seconds: 3).delayed(() {
  ///   // This callback is executed after a delay of 3 seconds.
  ///   return 'Result after delay';
  /// }).then((result) {
  ///   print(result); // Prints: 'Result after delay'
  /// });
  /// ```
  Future<T> delayed<T>([FutureOr<T> Function()? callback]) =>
      Future<T>.delayed(this, callback);

  /// A convenience getter that returns a `Future<void>` which completes after
  /// the current duration has elapsed.
  ///
  /// This getter can be used to introduce a delay in the execution flow,
  /// effectively acting as a sleep function.
  ///
  /// Example usage:
  /// ```dart
  /// // This will pause the execution for 1 second.
  /// await Duration(seconds: 1).sleep;
  /// print('Executed after 1 second pause');
  /// ```
  Future<void> get sleep => delayed<void>();
}
