part of "../writing_system.dart";

/// A class that represents a script used in writing systems.
class Script extends WritingSystem
    implements
        IsoStandardized<String>,
        JsonEncodable<Script>,
        Comparable<Script> {
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
  }) : assert(
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
    this.codeNumeric = "",
    this.date = "",
    this.pva,
  });

  /// Returns an instance of the [Script] class from a four-character ISO
  /// 15924 code.
  ///
  /// The [code] parameter is required and should be am object representing
  /// the ISO 15924 four-character code for the script.
  /// {@macro any_code_object}
  /// The optional [scripts] parameter can be used to specify a list of [Script]
  /// objects to search through.
  /// {@macro optional_instances_array_parameter}
  /// This method returns the [Script] instance that corresponds to the
  /// given code, or throws a [StateError] if no such instance exists.
  // ignore: avoid-non-empty-constructor-bodies, more clear for factory methods.
  factory Script.fromCode(Object code, [Iterable<Script>? scripts]) {
    if (scripts == null) return codeMap.findByCodeOrThrow(code);

    String? validCode = IsoObject(
      code, // Dart 3.8 formatting style.
    ).toUpperCaseCode().maybeToValidIsoCode(exactLength: codeLength);
    if (validCode == null) {
      throw StateError(
        "Provided $code isn't a valid $standardCodeName code. "
        "Consider using nullable runtime-safe `maybeFromCode()` instead.",
      );
    }
    validCode = formatToStandardCode(validCode);
    final result = scripts.firstIsoWhereOrNull((iso) => iso.code == validCode);
    if (result == null) {
      throw StateError(
        "No matching Script was found for the $code! "
        "Consider using nullable runtime-safe `maybeFromCode()` instead.",
      );
    }

    return result;
  }

  /// Returns an instance of the [Script] class from a three-digit ISO 15924
  /// code.
  ///
  /// The [codeNumeric] parameter is required and should be an object
  /// representing the three-digit ISO 15924 numeric code for the script.
  /// {@macro any_code_object}
  /// The optional [scripts] parameter can be used to specify a list of [Script]
  /// objects to search through.
  /// {@macro optional_instances_array_parameter}
  /// This method returns the [Script] instance that
  /// corresponds to the given numeric code, or throws a [StateError] if no such
  /// instance exists.
  factory Script.fromCodeNumeric(
    Object codeNumeric, [
    Iterable<Script>? scripts,
  ]) => scripts == null
      ? codeNumericMap.findByCodeOrThrow(codeNumeric)
      : scripts.firstIsoWhereCodeOther(
          IsoObject(codeNumeric).toUpperCaseCode(),
        );

  /// Creates a new instance of the [Script] class from the name of the script.
  ///
  /// The [name] parameter is required and should be am object representing
  /// the non-empty name of the script. The optional [scripts] parameter can
  /// be used to specify a list of [Script] objects to search through. This
  /// method returns the [Script] instance that corresponds to the given name,
  /// or throws a [StateError] if no such instance exists.
  // ignore: avoid-non-empty-constructor-bodies, more clear for factory methods.
  factory Script.fromName(Object name, [Iterable<Script> scripts = list]) {
    final upperCaseName = IsoObject(name).toUpperCaseCode();

    return scripts.firstIsoWhere(
      (script) => script.name.toUpperCase() == upperCaseName,
    );
  }

  /// Returns an instance of the [Script] class from any valid ISO 15924 code.
  ///
  /// The [code] parameter is required and should be an object representing the
  /// ISO 15924 code for the script.
  /// {@macro any_code_object}
  /// The optional [scripts] parameter can be
  /// used to specify a list of [Script] objects to search through.
  /// {@macro optional_instances_array_parameter}
  /// This method returns the [Script] instance that corresponds to the given
  /// code, or throws a [StateError] if no such instance exists.
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
  factory Script.fromAnyCode(Object code, [Iterable<Script>? scripts]) =>
      scripts == null
      ? map.findByCodeOrThrow(code)
      : IsoObject(code).toUpperCaseCode().maybeMapIsoCode(
          orElse: (regular) => Script.fromCode(regular, scripts),
          numeric: (numeric) => Script.fromCodeNumeric(numeric, scripts),
          maxLength: codeLength,
          minLength: IsoStandardized.codeLength,
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

  /// A three-digit string representing the ISO 15924 numeric code for the
  /// script.
  @override
  String get codeOther => codeNumeric;

  @override
  String get internationalName => name;

  @override
  String toString({bool short = true}) => short
      ? super.toString()
      : 'Script(name: "$name", code: "$code", codeNumeric: "$codeNumeric", '
            'date: "$date"${pva == null ? '' : ', pva: "$pva"'},)';

  @override
  String toJson({JsonCodec codec = const JsonCodec()}) => codec.encode(toMap());

  @override
  int compareTo(Script other) => code.compareTo(other.code);

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
  /// The [code] parameter is required and should be an object representing the
  /// ISO 15924 code for the script.
  /// {@macro any_code_object}
  /// The optional [scripts] parameter can be used to specify a list of
  /// [Script] objects to search through.
  /// {@macro optional_instances_array_parameter}
  /// This method returns the [Script] instance that corresponds to the given
  /// value, or `null` if no such instance exists.
  ///
  /// Example:
  /// ```dart
  /// Script? script = Script.maybeFromAnyCode(ExampleScriptEnum.latn);
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
  static Script? maybeFromAnyCode(Object? code, [Iterable<Script>? scripts]) =>
      scripts == null
      ? map.maybeFindByCode(code)
      : IsoObject.maybe(code)?.toUpperCaseCode().maybeMapIsoCode(
          orElse: (regular) => maybeFromCode(regular, scripts),
          numeric: (numeric) => maybeFromCodeNumeric(numeric, scripts),
          maxLength: codeLength,
          minLength: IsoStandardized.codeLength,
        );

  /// Returns an instance of the [Script] class from a four-character ISO
  /// 15924 code if it exists. Returns `null` otherwise.
  ///
  /// The [code] parameter is required and should be an object representing the
  /// ISO 15924 code for the script.
  /// {@macro any_code_object}
  /// The optional [scripts] parameter can be used to specify a list of [Script]
  /// objects to search through.
  /// {@macro optional_instances_array_parameter}
  ///
  /// Example:
  /// ```dart
  /// final script = Script.maybeFromCode("Latn");
  /// ```
  ///
  /// In the above example, the `maybeFromCode` static method is called with the
  /// code "Latn". The resulting [Script] instance (or null) is assigned to the
  /// `script` variable.
  static Script? maybeFromCode(Object? code, [Iterable<Script>? scripts]) {
    if (scripts == null) return codeMap.maybeFindByCode(code);

    String? string = IsoObject.maybe(
      code, // Dart 3.8 formatting style.
    )?.toUpperCaseCode().maybeToValidIsoCode(exactLength: codeLength);
    if (string == null) return null;
    string = formatToStandardCode(string);

    return scripts.firstIsoWhereOrNull((iso) => iso.code == string);
  }

  /// Returns an instance of the [Script] class from a three-digit ISO 15924
  /// code if it exists. Returns `null` otherwise.
  ///
  /// The [codeNumeric] parameter is required and should be an object
  /// representing the three-digit ISO 15924 numeric code for the script.
  /// {@macro any_code_object}
  /// The optional [scripts] parameter can be used to specify a list of [Script]
  /// objects to search through.
  /// {@macro optional_instances_array_parameter}
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
    Iterable<Script>? scripts,
  ]) {
    if (scripts == null) return codeNumericMap.maybeFindByCode(codeNumeric);

    final string = IsoObject.maybe(codeNumeric)
        ?.toUpperCaseCode()
        .maybeToValidIsoCode(exactLength: IsoStandardized.codeLength);

    return scripts.firstIsoWhereCodeOtherOrNull(string);
  }

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

  /// A tree-shakable constant map containing script (ISO 15924 Alpha-4) codes
  /// and their associated [Script] objects, for a O(1) access time.
  ///
  /// Example usage:
  ///
  /// ```dart
  /// Script.codeMap['Latn']; // ScriptLatn().
  /// ```
  static const codeMap = UpperCaseIsoMap<Script>(
    scriptCodeMap,
    exactLength: codeLength,
  );

  /// A tree-shakable constant map containing numeric script (ISO 15924 Numeric)
  /// codes and their associated [Script] objects, for a O(1) access time.
  ///
  /// Example usage:
  ///
  /// ```dart
  /// Script.codeNumericMap[215.toString()]; // ScriptLatn().
  /// ```
  static const codeNumericMap = UpperCaseIsoMap<Script>(scriptCodeOtherMap);

  /// A tree-shakable combined map of [codeMap] and [codeNumericMap], providing
  /// a unified view of script codes and their [Script] objects, for a O(1)
  /// access time.
  ///
  /// Example usage:
  ///
  /// ```dart
  /// Script.map['Latn']; // ScriptLatn().
  /// ```
  static const map = UpperCaseIsoMap<Script>(
    {...scriptCodeMap, ...scriptCodeOtherMap},
    exactLength: null, // ignore: avoid-passing-default-values, is not default.
    maxLength: codeLength,
    minLength: IsoStandardized.codeLength,
  );

  /// A tree-shakable list of all the scripts currently supported
  /// by the [Script] class.
  // ignore: avoid-explicit-type-declaration, vs specify_nonobvious_property_types.
  static const List<Script> list = scriptList;
}
