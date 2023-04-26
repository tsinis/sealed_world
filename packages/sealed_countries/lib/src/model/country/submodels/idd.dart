final class Idd {
  const Idd({required this.root, required this.suffixes})
      : assert(suffixes != const <int>[], "`suffixes` should not be empty!");

  final int root;
  final List<int> suffixes;

  @override
  String toString() => "Idd(root: $root, suffixes: $suffixes)";

  @override
  bool operator ==(covariant Idd other) {
    if (identical(this, other)) return true;

    return other.root == root && other.suffixes.length == suffixes.length;
  }

  @override
  int get hashCode => root.hashCode ^ suffixes.hashCode;
}
