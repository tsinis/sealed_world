class Idd {
  const Idd({required this.root, required this.suffixes});

  final int root;
  final List<int> suffixes;

  @override
  String toString() => "Idd(root: $root, suffixes: $suffixes)";
}
