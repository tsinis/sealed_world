part of "../writing_system.dart";

/// A class that represents a script used in writing systems.
class Script extends WritingSystem
    implements IsoStandardized<String>, JsonEncodable<Script> {
  /// {@template script_constructor}
  /// Creates a new instance of the [Script] class.
  ///
  /// The [name] parameter is required and should be a non-empty string
  /// representing the name of the script. The [code] parameter is required and
  /// should be a four-character string representing the ISO 15924 code for the
  /// script. The [codeNumeric] parameter is required and should be a
  /// three-digit string representing the ISO 15924 numeric code for the script.
  /// The [date] parameter is required and should be a string representing the
  /// date of addition of the script. The optional [pva] parameter is a string
  /// representing the property value alias for the script.
  /// {@endtemplate}
  const Script({
    required super.name,
    required this.code,
    required this.codeNumeric,
    required this.date,
    this.pva,
  })  : assert(
          code.length == codeLength,
          "`code` should be exactly $codeLength characters long!",
        ),
        assert(pva == null || pva.length > 0, "`pva` should not be empty!"),
        assert(
          codeNumeric.length == IsoStandardized.codeLength,
          """`codeNumeric` should be exactly ${IsoStandardized.codeLength} characters long!""",
        );

  /// {@macro permissive_constructor}
  /// {@macro script_constructor}
  const Script.permissive({
    required super.name,
    required this.code,
    required this.codeNumeric,
    required this.date,
    this.pva,
  });

  /// Returns an instance of the [Script] class from a four-character ISO
  /// 15924 code.
  ///
  /// The [code] parameter is required and should be a four-character string
  /// representing the ISO 15924 code for the script. The optional [scripts]
  /// parameter can be used to specify a list of [Script] objects to search
  /// through. This method returns the [Script] instance that corresponds to the
  /// given code, or throws a [StateError] if no such instance exists.
  factory Script.fromCode(String code, [Iterable<Script> scripts = list]) =>
      scripts.firstIsoWhereCode(formatToStandardCode(code.trim()));

  /// Returns an instance of the [Script] class from a three-digit ISO 15924
  /// code.
  ///
  /// The [codeNumeric] parameter is required and should be a three-digit string
  /// representing the ISO 15924 numeric code for the script. The optional
  /// [scripts] parameter can be used to specify a list of [Script] objects to
  /// search through. This method returns the [Script] instance that corresponds
  /// to the given numeric code, or throws a [StateError] if no such instance
  /// exists.
  factory Script.fromCodeNumeric(
    String codeNumeric, [
    Iterable<Script> scripts = list,
  ]) =>
      scripts.firstIsoWhereCodeOther(codeNumeric);

  /// Creates a new instance of the [Script] class from the name of the script.
  ///
  /// The [name] parameter is required and should be a non-empty string
  /// representing the name of the script. The optional [scripts] parameter can
  /// be used to specify a list of [Script] objects to search through. This
  /// method returns the [Script] instance that corresponds to the given name,
  /// or throws a [StateError] if no such instance exists.
  factory Script.fromName(String name, [Iterable<Script> scripts = list]) {
    final upperCaseName = name.trim().toUpperCase();

    return scripts
        .firstIsoWhere((script) => script.name.toUpperCase() == upperCaseName);
  }

  /// Returns an instance of the [Script] class from any valid ISO 15924 code.
  ///
  /// The [code] parameter is required and should be a string representing the
  /// ISO 15924 code for the script. The optional [scripts] parameter can be
  /// used to specify a list of [Script] objects to search through. This method
  /// returns the [Script] instance that corresponds to the given code, or
  /// throws a [StateError] if no such instance exists.
  ///
  /// Example:
  /// ```dart
  /// final script = Script.fromAnyCode("Latn");
  /// ```
  ///
  /// In the above example, the `fromAnyCode` factory method is called with the
  /// code "Latn". It uses the `maybeMapIsoCode` method to determine the
  /// appropriate mapping for the code. If the code is numeric, it calls the
  /// `fromCodeNumeric` factory method to create a [Script] instance. Otherwise,
  /// it calls the `fromCode` factory method to create a [Script] instance. The
  /// resulting [Script] instance is assigned to the `script` variable.
  factory Script.fromAnyCode(String code, [Iterable<Script> scripts = list]) =>
      code.maybeMapIsoCode(
        orElse: (regularCode) => Script.fromCode(regularCode, scripts),
        numeric: (numeric) => Script.fromCodeNumeric(numeric, scripts),
      );

  /// The regular length of the ISO code (4). However, it's important to note
  /// that this length is not standardized for all ISO codes. Typically it is
  /// three characters. Please refer to [IsoStandardized.codeLength] for more
  /// information.
  static const codeLength = 4;

  /// A four-character string representing the ISO 15924 code for the script.
  @override
  final String code;

  /// A three-digit string representing the ISO 15924 numeric code for the
  /// script.
  final String codeNumeric;

  /// The date of addition of the script.
  final String date;

  /// The property value alias for the script.
  final String? pva;

  @override
  List<String>? get namesNative => null;

  @override
  String get codeOther => codeNumeric;

  @override
  String toString({bool short = true}) => short
      ? super.toString()
      : '''Script(name: "$name", code: "$code", codeNumeric: "$codeNumeric", date: "$date", pva: ${pva == null ? pva : '"$pva"'})''';

  @override
  String toJson({JsonCodec codec = const JsonCodec()}) => codec.encode(toMap());

  /// Returns a [Script] instance that corresponds to the given value.
  ///
  /// The [value] parameter is required and represents the value to match
  /// against. The optional [where] parameter is a function that can be used to
  /// specify a custom comparison logic for finding the matching [Script]
  /// instance. The optional [scripts] parameter can be used to specify a list
  /// of [Script] objects to search through. This method returns the [Script]
  /// instance that corresponds to the given value, or `null` if no such
  /// instance exists.
  static Script? maybeFromValue<T extends Object>(
    T value, {
    T? Function(Script script)? where,
    Iterable<Script> scripts = list,
  }) {
    scripts.assertNotEmpty();

    for (final script in scripts) {
      final expectedValue = where?.call(script) ?? script.code;
      if (expectedValue == value) return script;
    }

    return null;
  }

  /// Returns a [Script] instance that corresponds to the given value, or `null`
  /// if no such instance exists.
  ///
  /// The [code] parameter is required and represents the value to match
  /// against. The optional [scripts] parameter can be used to specify a list of
  /// [Script] objects to search through. This method returns the [Script]
  /// instance that corresponds to the given value, or `null` if no such
  /// instance exists.
  ///
  /// Example:
  /// ```dart
  /// Script? script = Script.maybeFromAnyCode(ExampleScriptEnum.latn.name);
  /// print(script != null) // Prints: true.
  /// ```
  ///
  /// In the above example, the `maybeFromAnyCode` method is called with the
  /// value "Latn". It uses the `maybeMapIsoCode` method to determine the
  /// appropriate mapping for the value. If the value is numeric, it compares it
  /// with the `codeNumeric` property of each [Script] instance. Otherwise, it
  /// compares it with the uppercase version of the `code` property of each
  /// [Script] instance. The resulting [Script] instance is assigned to the
  /// `script` variable.
  static Script? maybeFromAnyCode(
    Object? code, [
    Iterable<Script> scripts = list,
  ]) =>
      code?.toString().maybeMapIsoCode(
            orElse: (regularCode) => maybeFromCode(regularCode, scripts),
            numeric: (numeric) => maybeFromCodeNumeric(numeric, scripts),
          );

  /// Returns an instance of the [Script] class from a four-character ISO
  /// 15924 code if it exists. Returns `null` otherwise.
  ///
  /// The [code] parameter is required and should be an object representing the
  /// four-character ISO 15924 code for the script. The optional [scripts]
  /// parameter can be used to specify a list of [Script] objects to search
  /// through.
  ///
  /// Example:
  /// ```dart
  /// final script = Script.maybeFromCode("Latn");
  /// ```
  ///
  /// In the above example, the `maybeFromCode` static method is called with the
  /// code "Latn". The resulting [Script] instance (or null) is assigned to the
  /// `script` variable.
  static Script? maybeFromCode(
    Object? code, [
    Iterable<Script> scripts = list,
  ]) {
    final string = code?.toString().trim() ?? "";

    return string.length == Script.codeLength
        ? scripts.firstIsoWhereCodeOrNull(formatToStandardCode(string))
        : null;
  }

  /// Returns an instance of the [Script] class from a three-digit ISO 15924
  /// code if it exists. Returns `null` otherwise.
  ///
  /// The [codeNumeric] parameter is required and should be a three-digit object
  /// representing the ISO 15924 numeric code for the script. The optional
  /// [scripts] parameter can be used to specify a list of [Script] objects to
  /// search through.
  ///
  /// Example:
  /// ```dart
  /// final script = Script.maybeFromCodeNumeric("215");
  /// ```
  /// In the above example, the `maybeFromCodeNumeric` static method is called
  /// with the code "215". The resulting [Script] instance (or null) is assigned
  /// to the `script` variable.
  static Script? maybeFromCodeNumeric(
    Object? codeNumeric, [
    Iterable<Script> scripts = list,
  ]) =>
      scripts.firstIsoWhereCodeOtherOrNull(codeNumeric);

  /// Formats the given [input] to a standard four-character ISO 15924 code.
  /// Example:
  /// ```dart
  /// final script = Script.formatToStandardCode("LATN");
  /// print(script) // Prints: "Latn"
  /// ```
  static String formatToStandardCode(String input) =>
      // ignore: avoid-substring, no emojis expected here.
      input[0].toUpperCase() + input.substring(1).toLowerCase();

  /// The general standard ISO code for scripts, defined as ISO 15924.
  static const standardGeneralName = "15924";

  /// The standard ISO code name for scripts, defined as ISO 15924 Alpha-4.
  static const standardCodeName = "$standardGeneralName Alpha-4";

  /// The standard numeric ISO code name for scripts, defined as
  /// ISO 15924 Numeric.
  static const standardCodeNumericName = "$standardGeneralName Numeric";

  /// A list of all the scripts currently supported by the [Script] class.
  static const list = [
    ScriptAdlm(),
    ScriptAfak(),
    ScriptAghb(),
    ScriptAhom(),
    ScriptArab(),
    ScriptAran(),
    ScriptArmi(),
    ScriptArmn(),
    ScriptAvst(),
    ScriptBali(),
    ScriptBamu(),
    ScriptBass(),
    ScriptBatk(),
    ScriptBeng(),
    ScriptBhks(),
    ScriptBlis(),
    ScriptBopo(),
    ScriptBrah(),
    ScriptBrai(),
    ScriptBugi(),
    ScriptBuhd(),
    ScriptCakm(),
    ScriptCans(),
    ScriptCari(),
    ScriptCham(),
    ScriptCher(),
    ScriptChrs(),
    ScriptCirt(),
    ScriptCopt(),
    ScriptCpmn(),
    ScriptCprt(),
    ScriptCyrl(),
    ScriptCyrs(),
    ScriptDeva(),
    ScriptDiak(),
    ScriptDogr(),
    ScriptDsrt(),
    ScriptDupl(),
    ScriptEgyd(),
    ScriptEgyh(),
    ScriptEgyp(),
    ScriptElba(),
    ScriptElym(),
    ScriptEthi(),
    ScriptGeok(),
    ScriptGeor(),
    ScriptGlag(),
    ScriptGong(),
    ScriptGonm(),
    ScriptGoth(),
    ScriptGran(),
    ScriptGrek(),
    ScriptGujr(),
    ScriptGuru(),
    ScriptHanb(),
    ScriptHang(),
    ScriptHani(),
    ScriptHano(),
    ScriptHans(),
    ScriptHant(),
    ScriptHatr(),
    ScriptHebr(),
    ScriptHira(),
    ScriptHluw(),
    ScriptHmng(),
    ScriptHmnp(),
    ScriptHrkt(),
    ScriptHung(),
    ScriptInds(),
    ScriptItal(),
    ScriptJamo(),
    ScriptJava(),
    ScriptJpan(),
    ScriptJurc(),
    ScriptKali(),
    ScriptKana(),
    ScriptKawi(),
    ScriptKhar(),
    ScriptKhmr(),
    ScriptKhoj(),
    ScriptKitl(),
    ScriptKits(),
    ScriptKnda(),
    ScriptKore(),
    ScriptKpel(),
    ScriptKthi(),
    ScriptLana(),
    ScriptLaoo(),
    ScriptLatf(),
    ScriptLatg(),
    ScriptLatn(),
    ScriptLeke(),
    ScriptLepc(),
    ScriptLimb(),
    ScriptLina(),
    ScriptLinb(),
    ScriptLisu(),
    ScriptLoma(),
    ScriptLyci(),
    ScriptLydi(),
    ScriptMahj(),
    ScriptMaka(),
    ScriptMand(),
    ScriptMani(),
    ScriptMarc(),
    ScriptMaya(),
    ScriptMedf(),
    ScriptMend(),
    ScriptMerc(),
    ScriptMero(),
    ScriptMlym(),
    ScriptModi(),
    ScriptMong(),
    ScriptMoon(),
    ScriptMroo(),
    ScriptMtei(),
    ScriptMult(),
    ScriptMymr(),
    ScriptNagm(),
    ScriptNand(),
    ScriptNarb(),
    ScriptNbat(),
    ScriptNewa(),
    ScriptNkdb(),
    ScriptNkgb(),
    ScriptNkoo(),
    ScriptNshu(),
    ScriptOgam(),
    ScriptOlck(),
    ScriptOrkh(),
    ScriptOrya(),
    ScriptOsge(),
    ScriptOsma(),
    ScriptOugr(),
    ScriptPalm(),
    ScriptPauc(),
    ScriptPcun(),
    ScriptPelm(),
    ScriptPerm(),
    ScriptPhag(),
    ScriptPhli(),
    ScriptPhlp(),
    ScriptPhlv(),
    ScriptPhnx(),
    ScriptPiqd(),
    ScriptPlrd(),
    ScriptPrti(),
    ScriptPsin(),
    ScriptQaaa(),
    ScriptQabx(),
    ScriptRanj(),
    ScriptRjng(),
    ScriptRohg(),
    ScriptRoro(),
    ScriptRunr(),
    ScriptSamr(),
    ScriptSara(),
    ScriptSarb(),
    ScriptSaur(),
    ScriptSgnw(),
    ScriptShaw(),
    ScriptShrd(),
    ScriptShui(),
    ScriptSidd(),
    ScriptSind(),
    ScriptSinh(),
    ScriptSogd(),
    ScriptSogo(),
    ScriptSora(),
    ScriptSoyo(),
    ScriptSund(),
    ScriptSunu(),
    ScriptSylo(),
    ScriptSyrc(),
    ScriptSyre(),
    ScriptSyrj(),
    ScriptSyrn(),
    ScriptTagb(),
    ScriptTakr(),
    ScriptTale(),
    ScriptTalu(),
    ScriptTaml(),
    ScriptTang(),
    ScriptTavt(),
    ScriptTelu(),
    ScriptTeng(),
    ScriptTfng(),
    ScriptTglg(),
    ScriptThaa(),
    ScriptThai(),
    ScriptTibt(),
    ScriptTirh(),
    ScriptTnsa(),
    ScriptToto(),
    ScriptUgar(),
    ScriptVaii(),
    ScriptVisp(),
    ScriptVith(),
    ScriptWara(),
    ScriptWcho(),
    ScriptWole(),
    ScriptXpeo(),
    ScriptXsux(),
    ScriptYezi(),
    ScriptYiii(),
    ScriptZanb(),
    ScriptZinh(),
    ScriptZmth(),
    ScriptZsye(),
    ScriptZsym(),
    ScriptZxxx(),
    ScriptZyyy(),
    ScriptZzzz(),
  ];
}
