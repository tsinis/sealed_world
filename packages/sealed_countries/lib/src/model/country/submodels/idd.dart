import "package:sealed_currencies/sealed_currencies.dart";

import "../../../helpers/extensions/country_submodels/idd_extension.dart";

/// A class that represents an International Direct Dialing (IDD) code.
///
/// The [Idd] class is a simple value object that represents an International
/// Direct Dialing (IDD) code. It consists of an [int] value that represents the
/// root of the IDD code, and a [List<int>] value that represents the [suffixes]
/// of the IDD code.
///
/// Example usage:
///
/// ```dart
/// final idd = Idd(root: 3, suffixes: [81]);
/// print(idd); // Prints: "Idd(root: 3, suffixes: [81])"
/// ```
final class Idd implements JsonEncodable<Idd> {
  /// Creates a new [Idd] object with the given root and suffixes.
  ///
  /// The [suffixes] parameter must not be an empty list.
  const Idd({required this.root, required this.suffixes})
    : assert(suffixes != const <int>[], "`suffixes` should not be empty!");

  /// The root of this IDD code.
  final int root;

  /// The suffixes of this IDD code.
  final List<int> suffixes;

  @override
  String toString() => "Idd(root: $root, suffixes: $suffixes)";

  @override
  String toJson({JsonCodec codec = const JsonCodec()}) => codec.encode(toMap());

  @override
  bool operator ==(covariant Idd other) {
    if (identical(this, other)) return true;

    return other.root == root && other.suffixes.length == suffixes.length;
  }

  @override
  int get hashCode => Object.hash(root, suffixes);
}
