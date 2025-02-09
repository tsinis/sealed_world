/// The [UtcDurationDifference] type alias is a function type that represents a
/// difference in UTC time. It takes two named parameters: `duration`, which is
/// a [Duration] object representing the amount of time to add or subtract, and
/// `toAdd`, which is a `bool` value indicating whether to add or subtract the
/// `duration`. The `duration` parameter should not be `null`.
///
/// Example usage:
///
/// ```dart
/// const duration = Duration(minutes: 30);
/// const difference = (duration: duration, toAdd: true);
/// print(difference); // Prints: (duration: 0:30:00.000000, toAdd: true).
/// ```
typedef UtcDurationDifference = ({Duration duration, bool toAdd});
