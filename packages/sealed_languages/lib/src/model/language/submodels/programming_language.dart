part of "../language.dart";

class ProgrammingLanguage extends Language {
  const ProgrammingLanguage({
    required super.name,
    this.isCompiled = true,
    this.isLowLevel = false,
  });

  final bool isCompiled;
  final bool isLowLevel;

  @override
  String toString({bool short = true}) => short
      ? super.toString()
      : """ProgrammingLanguage(name: $name, isCompiled: $isCompiled, isLowLevel: $isLowLevel)""";
}
