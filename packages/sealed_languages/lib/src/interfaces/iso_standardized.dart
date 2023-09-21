abstract interface class IsoStandardized<Name extends Object> {
  const IsoStandardized( // coverage:ignore-line
      {
    required this.name,
    required this.code,
    this.namesNative,
    this.codeOther,
  });

  final String code;
  final String? codeOther;

  final Name name;
  final List<Name>? namesNative;
}
