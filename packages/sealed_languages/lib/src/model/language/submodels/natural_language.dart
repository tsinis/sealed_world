part of "../language.dart";

/// A class that represents a natural language.
class NaturalLanguage extends Language
    implements
        IsoTranslated<TranslatedName, String>,
        JsonEncodable<NaturalLanguage> {
  /// {@template natural_language_constructor}
  /// Creates a new instance of the [NaturalLanguage] class.
  ///
  /// The [name] parameter is required and should be a non-empty string
  /// representing the name of the natural language. The [codeShort] parameter
  /// is required and should be a two-letter string representing the ISO 639-1
  /// code for the language. The [namesNative] parameter is required and should
  /// be a list of non-empty strings representing the language's native names.
  /// The [code] parameter is required and should be a three-letter string
  /// representing the Terminological ISO 639-2 code for the language. The
  /// optional [bibliographicCode] parameter is a three-letter string
  /// representing the ISO 639-2/B Bibliographic code for the language. The
  /// optional [family] parameter specifies the language family to which the
  /// language belongs (defaults to the Indo-European family). The optional
  /// [isRightToLeft] parameter specifies whether the language is written
  /// right-to-left (defaults to `false`).
  /// {@endtemplate}
  const NaturalLanguage({
    required super.name,
    required this.codeShort,
    required this.namesNative,
    required this.code,
    this.bibliographicCode,
    this.family = const IndoEuropean(),
    this.isRightToLeft = false,
    this.scripts = const {ScriptLatn()},
  })  : assert(
          code.length == IsoStandardized.codeLength,
          """`code` should be exactly ${IsoStandardized.codeLength} characters long!""",
        ),
        assert(
          codeShort.length == IsoStandardized.codeShortLength,
          """`codeShort` should be exactly ${IsoStandardized.codeShortLength} characters long!""",
        ),
        assert(
          namesNative != const <String>[],
          "`namesNative` should not be empty!",
        ),
        assert(scripts != const <Script>{}, "`scripts` should not be empty!"),
        assert(
          bibliographicCode == null ||
              bibliographicCode.length == IsoStandardized.codeLength,
          """`bibliographicCode` should be exactly ${IsoStandardized.codeLength} characters long!""",
        );

  /// {@template permissive_constructor}
  /// Creates an instance of the class with relaxed constraints.
  ///
  /// This constructor provides a means to instantiate objects while bypassing
  /// the strict assertions typically enforced by classes adhering to the ISO
  /// standard. It should be utilized only in scenarios where strict compliance
  /// with the standard cannot be achieved. Be aware that minimal assertions
  /// from superclasses may still apply, ensuring basic integrity of the object.
  ///
  /// For instances where conformity to the ISO standard is required, prefer
  /// using the generative constructor to ensure full compatibility.
  ///
  /// Usage:
  /// ```dart
  /// class MyIsoClassInstance extends IsoClassWithPermissiveConstructor {
  ///   const MyIsoClassInstance() : super.permissive(name: "Name", code: "1");
  /// }
  /// ```
  /// Note: Employing this constructor may result in behavior that deviates from
  /// the established ISO specifications and should be approached with caution.
  /// {@endtemplate}
  /// {@macro natural_language_constructor}
  const NaturalLanguage.permissive({
    required super.name,
    required this.code,
    this.codeShort = "",
    this.namesNative = const [],
    this.bibliographicCode,
    this.family = const IndoEuropean(),
    this.isRightToLeft = false,
    this.scripts = const {ScriptLatn()},
  });

  /// Returns an instance of the [NaturalLanguage] class from a three-letter
  /// Terminological ISO 639-2 code.
  ///
  /// The [code] parameter is required and should be an object representing
  /// the three-letter Terminological ISO 639-2 code for the language.
  /// {@template any_code_object}
  /// Provided value could be any type of [Object] that returns ISO code on
  /// `toString()` call. For example it could be an instance of [StringBuffer],
  /// [String], [Enum] (in case of enum - `.name.toUpperCase()` will be used):
  ///
  /// ```dart
  /// enum IsoEnum {de, fr, ar} // On (IsoEnum.de) call it will use "DE" input.
  /// ```
  ///
  ///  Or has a custom `toString()` override, i.e.:
  /// ```dart
  /// class CustomIsoCodeClass {
  ///  const CustomIsoCodeClass({String code = '123', this.foo}) : _code = code;
  ///  final String _code;
  ///  final Foo? foo;
  ///
  ///  @override
  ///  String toString() => _code; // Has to override toString() with ISO value.
  /// }
  ///
  /// // On (CustomIsoCodeClass(code: ' 321 ')) call it will use "321" input.
  ///```
  ///
  /// {@endtemplate}
  /// {@macro natural_language_constructor}
  /// The optional [languages] parameter can be used to specify a list of
  /// [NaturalLanguage] objects to search through.
  /// {@template optional_instances_array_parameter}
  /// If this optional array is not provided (it's default to `null`), this will
  /// search in 0(1) access time case-insensitive [UpperCaseIsoMap] hash-map.
  /// Otherwise it will search in provided array with equivalent of `firstWhere`
  /// method, which might not be that fast comparing to the hashmap one,
  /// especially for large arrays.
  /// If you only need to add additional custom ISO instances of yours -
  /// consider using the `copyWith` method with your custom instances in default
  /// maps of this class (i.e. `codeMap.copyWith()`, `map.copyWith()` etc.).
  /// This will ensure O(1) performance for your custom instances too.
  /// {@endtemplate}
  /// This method returns the [NaturalLanguage] instance that corresponds to the
  /// given code, or throws a [StateError] if no such instance exists.
  factory NaturalLanguage.fromCode(
    Object code, [
    Iterable<NaturalLanguage>? languages,
  ]) =>
      languages == null
          ? codeMap.findByCodeOrThrow(code)
          : languages.firstIsoWhereCode(code.toUpperCaseIsoCode());

  /// Returns an instance of the [NaturalLanguage] class from a two-letter
  /// ISO 639-1 code.
  ///
  /// The [codeShort] parameter is required and should be an object
  /// representing the two-letter ISO 639-1 code for the language.
  /// {@macro any_code_object}
  /// The optional [languages] parameter can be used to specify a list of
  /// [NaturalLanguage] objects to search through.
  /// {@macro optional_instances_array_parameter}
  /// This method returns the [NaturalLanguage] instance that corresponds to the
  /// given code, or throws a [StateError] if no such instance exists.
  factory NaturalLanguage.fromCodeShort(
    Object codeShort, [
    Iterable<NaturalLanguage>? languages,
  ]) =>
      languages == null
          ? codeShortMap.findByCodeOrThrow(codeShort)
          : languages.firstIsoWhereCodeOther(codeShort.toUpperCaseIsoCode());

  /// Returns an instance of the [NaturalLanguage] class from the name of the
  /// language.
  ///
  /// The [name] parameter is required and should be a object
  /// representing the non-empty name of the natural language.
  /// The optional [languages] parameter can be used to specify a list of
  /// [NaturalLanguage] objects to search through.
  /// This method returns the [NaturalLanguage] instance that corresponds to the
  /// given name, or throws a [StateError] if no such instance exists.
  factory NaturalLanguage.fromName(
    Object name, [
    Iterable<NaturalLanguage> languages = list,
  ]) {
    final upperCaseName = name.toUpperCaseIsoCode();

    return languages.firstIsoWhere(
      (language) => language.name.toUpperCase() == upperCaseName,
    );
  }

  /// Returns an instance of the [NaturalLanguage] class from any valid ISO 639
  /// code.
  ///
  /// The [code] parameter is required and should be an object representing the
  /// ISO 639 code for the language.
  /// {@macro any_code_object}
  /// The optional [languages] parameter can be used to specify a list of
  /// [NaturalLanguage] objects to search through.
  /// {@macro optional_instances_array_parameter}
  /// This method returns the [NaturalLanguage] instance that corresponds to the
  /// given code, or throws a [StateError] if no such instance exists.
  ///
  /// Example:
  /// ```dart
  /// final language = NaturalLanguage.fromAnyCode("en");
  /// ```
  ///
  /// In the above example, the `fromAnyCode` factory method is called with the
  /// code "en". It uses the `maybeMapIsoCode` method to determine the
  /// appropriate mapping for the code. If the code is a short code, it calls
  /// the `fromCodeShort` factory method to create a [NaturalLanguage] instance.
  /// Otherwise, it calls the `fromCode` factory method to create a
  /// [NaturalLanguage] instance. The resulting [NaturalLanguage] instance is
  /// assigned to the `language` variable.
  factory NaturalLanguage.fromAnyCode(
    Object code, [
    Iterable<NaturalLanguage>? languages,
  ]) =>
      languages == null
          ? map.findByCodeOrThrow(code)
          : code.toUpperCaseIsoCode().maybeMapIsoCode(
                orElse: (regular) =>
                    NaturalLanguage.fromCode(regular, languages),
                short: (short) =>
                    NaturalLanguage.fromCodeShort(short, languages),
              );

  /// Returns an instance of the [NaturalLanguage] class from a three-letter
  /// Terminological ISO 639-2 code if it exists. Returns `null` otherwise.
  ///
  /// The [code] parameter is required and should be an object representing
  /// the three-letter Terminological ISO 639-2 code for the language.
  /// {@macro any_code_object}
  /// The optional [languages] parameter can be used to specify a list of
  /// [NaturalLanguage] objects to search through.
  /// {@macro optional_instances_array_parameter}
  static NaturalLanguage? maybeFromCode(
    Object? code, [
    Iterable<NaturalLanguage>? languages,
  ]) =>
      languages == null
          ? codeMap.maybeFindByCode(code)
          : languages.firstIsoWhereCodeOrNull(
              code
                  ?.toUpperCaseIsoCode()
                  .maybeToValidIsoCode(exactLength: IsoStandardized.codeLength),
            );

  /// Returns an instance of the [NaturalLanguage] class from a three-letter
  /// Terminological ISO 639-2 code if it exists. Returns `null` otherwise.
  ///
  /// The [code] parameter is required and should be an object representing
  /// the three-letter Terminological ISO 639-2 code for the language.
  /// {@macro any_code_object}
  /// The optional [languages] parameter can be used to specify a list of
  /// [NaturalLanguage] objects to search through.
  /// {@macro optional_instances_array_parameter}
  static NaturalLanguage? maybeFromCodeShort(
    Object? codeShort, [
    Iterable<NaturalLanguage>? languages,
  ]) =>
      languages == null
          ? codeShortMap.maybeFindByCode(codeShort)
          : languages.firstIsoWhereCodeOtherOrNull(
              codeShort?.toUpperCaseIsoCode().maybeToValidIsoCode(
                    exactLength: IsoStandardized.codeShortLength,
                  ),
            );

  /// A three-letter string representing the Terminological ISO 639-2 code for
  /// the language.
  @override
  final String code;

  /// A two-letter string representing the ISO 639-1 code for the language.
  final String codeShort;

  /// A list of non-empty strings representing the language's native names.
  @override
  final List<String> namesNative;

  /// A three-letter string representing the ISO 639-2/B Bibliographic code for
  /// the language, or `null` if no such code exists.
  final String? bibliographicCode;

  /// The language family to which the language belongs.
  final NaturalLanguageFamily family;

  /// Whether the language is written right-to-left.
  final bool isRightToLeft;

  /// The ISO 15924 scripts used by the language.
  final Set<Script> scripts;

  /// A two-letter string representing the ISO 639-1 code for the language.
  @override
  String get codeOther => codeShort;

  @override
  String get internationalName => name;

  @override
  List<TranslatedName> get translations => throw UnimplementedError(
        """
Please provide translations for your custom language for example via override:

@override
${List<TranslatedName>} get translations => [$TranslatedName($LangEng(), name: "Custom")];
""",
      );

  /// Returns a string representation of this [NaturalLanguage] object.
  ///
  /// The optional [short] parameter specifies whether to use a short format
  /// (defaults to `true`). If [short] is `true`, this method returns the same
  /// string as the [Language.toString] method. If [short] is `false`, this
  /// method returns a string that includes additional information about the
  /// language, such as its ISO codes, native names, and family.
  @override
  String toString({bool short = true}) => short
      ? super.toString()
      : '''NaturalLanguage(name: "$name", code: "$code", codeShort: "$codeShort", namesNative: ${jsonEncode(namesNative)}, bibliographicCode: ${bibliographicCode == null ? bibliographicCode : '"$bibliographicCode"'}, family: ${family.runtimeType}(), isRightToLeft: $isRightToLeft, scripts: ${scripts.toUniqueInstancesString()})''';

  @override
  String toJson({JsonCodec codec = const JsonCodec()}) => codec.encode(toMap());

  /// Returns a `NaturalLanguage` object whose [code] or the value returned by
  /// [where] matches the specified [value], or `null` if no such object exists
  /// in the specified [languages] list.
  ///
  /// The [value] parameter is required and should be of type `T`. If [where] is
  /// not `null`, this method uses the result of calling [where] with each
  /// [NaturalLanguage] object in [languages] to determine whether the object's
  /// [code] matches [value]. If [where] is `null`, this method simply compares
  /// each [NaturalLanguage]'s [code] to [value].
  ///
  /// The optional [languages] parameter specifies the list of [NaturalLanguage]
  /// objects to search (defaults to [NaturalLanguage.list]).
  ///
  /// Example usage:
  ///
  /// ```dart
  ///  final maybeCzech = NaturalLanguage.maybeFromValue(
  ///    "CZE",
  ///    where: (language) => language.bibliographicCode,
  ///  );
  ///
  ///  // This will print: "Native name: čeština".
  ///  print("Native name: ${maybeCzech?.namesNative.first}");
  /// ```
  static NaturalLanguage? maybeFromValue<T extends Object>(
    T value, {
    T? Function(NaturalLanguage language)? where,
    Iterable<NaturalLanguage> languages = list,
  }) {
    languages.assertNotEmpty();

    for (final language in languages) {
      final expectedValue = where?.call(language) ?? language.code;
      if (expectedValue == value) return language;
    }

    return null;
  }

  /// Returns a [NaturalLanguage] object whose [code] matches the specified
  /// [code],
  /// or `null` if no such object exists in the specified [languages] list.
  ///
  /// The [code] parameter is required and should be an object representing the
  /// ISO 639 code for the language.
  /// {@macro any_code_object}
  /// The optional [languages] parameter specifies the list of `NaturalLanguage`
  /// objects to search.
  /// {@macro optional_instances_array_parameter}
  /// Example usage:
  ///
  /// ```dart
  /// NaturalLanguage? language = NaturalLanguage.maybeFromAnyCode(LangEnum.en);
  /// print(language != null); // Prints: true
  /// ```
  static NaturalLanguage? maybeFromAnyCode(
    Object? code, [
    Iterable<NaturalLanguage>? languages,
  ]) =>
      languages == null
          ? map.maybeFindByCode(code)
          : code?.toUpperCaseIsoCode().maybeMapIsoCode(
                orElse: (regular) => maybeFromCode(regular, languages),
                short: (short) => maybeFromCodeShort(short, languages),
              );

  /// The general standard ISO code for languages, defined as ISO 639.
  static const standardGeneralName = "639";

  /// The standard ISO code name for languages, defined as ISO 639-2/T.
  static const standardCodeName = "$standardGeneralName-2/T";

  /// The standard short ISO code name for languages, defined as ISO 639-1.
  static const standardCodeShortName = "$standardGeneralName-1";

  /// The standard bibliographic ISO code name for languages,
  /// defined as ISO 639-2/B.
  static const standardBibliographicCodeName = "$standardGeneralName-2/B";

  /// A tree-shakable constant map containing language
  /// (Terminological ISO 639-2) codes and their associated [NaturalLanguage]
  /// objects, for a O(1) access time.
  ///
  /// Example usage:
  ///
  /// ```dart
  /// NaturalLanguage.codeMap[' eng']; // LangEng().
  /// ```
  static const codeMap = UpperCaseIsoMap(naturalLanguageCodeMap);

  /// A tree-shakable constant map containing short language (ISO 639-1) codes
  /// and their associated [NaturalLanguage] objects, for a O(1) access time.
  ///
  /// Example usage:
  ///
  /// ```dart
  /// NaturalLanguage.codeShortMap['en ']; // LangEng().
  /// ```
  static const codeShortMap = UpperCaseIsoMap(
    naturalLanguageCodeOtherMap,
    exactLength: IsoStandardized.codeShortLength,
  );

  /// A tree-shakable combined map of [codeMap] and [codeShortMap], providing a
  /// unified view of language codes and their [NaturalLanguage] objects, for a
  /// O(1) access time.
  ///
  /// Example usage:
  ///
  /// ```dart
  /// NaturalLanguage.map[' en ']; // LangEng().
  /// ```
  static const map = UpperCaseIsoMap(
    {...naturalLanguageCodeMap, ...naturalLanguageCodeOtherMap},
    exactLength: null,
  );

  /// A tree-shakable list of all the natural languages currently
  /// supported by the [NaturalLanguage] class.
  static const list = naturalLanguageList;
}
