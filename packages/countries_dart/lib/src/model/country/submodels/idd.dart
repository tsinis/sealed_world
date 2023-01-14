class Idd {
  const Idd({required this.root, this.suffixes});

  final String root;
  final List<String>? suffixes;

  @override
  String toString() => "Idd(root: $root, suffixes: $suffixes)";
}
