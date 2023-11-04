part of "../language.dart";

/// A class that represents a natural language.
class NaturalLanguage extends Language
    with TranslatedLanguage
    implements
        IsoTranslated<TranslatedName, String>,
        JsonEncodable<NaturalLanguage> {
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

  /// Returns an instance of the [NaturalLanguage] class from a three-letter
  /// Terminological ISO 639-2 code.
  ///
  /// The [code] parameter is required and should be a three-letter string
  /// representing the Terminological ISO 639-2 code for the language.
  /// The optional [languages] parameter can be used to specify a list of
  /// [NaturalLanguage] objects to search through.
  /// This method returns the [NaturalLanguage] instance that corresponds to the
  /// given code, or throws a [StateError] if no such instance exists.
  factory NaturalLanguage.fromCode(
    String code, [
    Iterable<NaturalLanguage> languages = list,
  ]) {
    assert(languages.isNotEmpty, "`languages` should not be empty!");

    return languages.firstWhere(
      (language) => language.code == code.trim().toUpperCase(),
    );
  }

  /// Returns an instance of the [NaturalLanguage] class from a two-letter
  /// ISO 639-1 code.
  ///
  /// The [codeShort] parameter is required and should be a two-letter string
  /// representing the ISO 639-1 code for the language.
  /// The optional [languages] parameter can be used to specify a list of
  /// [NaturalLanguage] objects to search through.
  /// This method returns the [NaturalLanguage] instance that corresponds to the
  /// given code, or throws a [StateError] if no such instance exists.
  factory NaturalLanguage.fromCodeShort(
    String codeShort, [
    Iterable<NaturalLanguage> languages = list,
  ]) {
    assert(languages.isNotEmpty, "`languages` should not be empty!");

    return languages.firstWhere(
      (language) => language.codeShort == codeShort.trim().toUpperCase(),
    );
  }

  /// Returns an instance of the [NaturalLanguage] class from the name of the
  /// language.
  ///
  /// The [name] parameter is required and should be a non-empty string
  /// representing the name of the natural language.
  /// The optional [languages] parameter can be used to specify a list of
  /// [NaturalLanguage] objects to search through.
  /// This method returns the [NaturalLanguage] instance that corresponds to the
  /// given name, or throws a [StateError] if no such instance exists.
  factory NaturalLanguage.fromName(
    String name, [
    Iterable<NaturalLanguage> languages = list,
  ]) {
    assert(languages.isNotEmpty, "`languages` should not be empty!");

    return languages.firstWhere(
      (lang) => lang.name.toUpperCase() == name.trim().toUpperCase(),
    );
  }

  /// Returns an instance of the [NaturalLanguage] class from any valid ISO 639
  /// code.
  ///
  /// The [code] parameter is required and should be a string representing the
  /// ISO 639 code for the language. The optional [languages] parameter can be
  /// used to specify a list of [NaturalLanguage] objects to search through.
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
    String code, [
    Iterable<NaturalLanguage> languages = list,
  ]) =>
      code.maybeMapIsoCode(
        orElse: (_) => NaturalLanguage.fromCode(code, languages),
        short: (_) => NaturalLanguage.fromCodeShort(code, languages),
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

  @override
  String get codeOther => codeShort;

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
    T? Function(NaturalLanguage lang)? where,
    Iterable<NaturalLanguage> languages = list,
  }) {
    assert(languages.isNotEmpty, "`languages` should not be empty!");
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
  /// The [code] parameter is required and should be a string representing the
  /// ISO 639 code for the language. The optional [languages] parameter
  /// specifies the list of `NaturalLanguage` objects to search (defaults to
  /// `NaturalLanguage.list`).
  ///
  /// Example usage:
  ///
  /// ```dart
  /// NaturalLanguage? lng = NaturalLanguage.maybeFromAnyCode(LangEnum.en.name);
  /// print(lng != null); // Prints: true
  /// ```
  static NaturalLanguage? maybeFromAnyCode(
    String? code, [
    Iterable<NaturalLanguage> languages = list,
  ]) {
    assert(languages.isNotEmpty, "`languages` should not be empty!");

    final trimmedCode = code?.trim().toUpperCase();
    if (trimmedCode?.isEmpty ?? true) return null;

    for (final language in languages) {
      final expectedValue = trimmedCode?.maybeMapIsoCode(
        orElse: (_) => language.code,
        short: (_) => language.codeShort,
      );
      if (expectedValue == trimmedCode) return language;
    }

    return null;
  }

  /// The general standard ISO code for languages, defined as ISO 639.
  static const String standardGeneralName = "639";

  /// The standard ISO code name for languages, defined as ISO 639-2/T.
  static const String standardCodeName = "$standardGeneralName-2/T";

  /// The standard short ISO code name for languages, defined as ISO 639-1.
  static const String standardCodeShortName = "$standardGeneralName-1";

  /// The standard bibliographic ISO code name for languages,
  /// defined as ISO 639-2/B.
  static const String standardBibliographicCodeName =
      "$standardGeneralName-2/B";

  /// A list of all the natural languages currently
  /// supported by the [NaturalLanguage] class.
  static const list = [
    LangAar(),
    LangAbk(),
    LangAfr(),
    LangAka(),
    LangAmh(),
    LangAra(),
    LangArg(),
    LangAsm(),
    LangAva(),
    LangAve(),
    LangAym(),
    LangAze(),
    LangBak(),
    LangBam(),
    LangBel(),
    LangBen(),
    LangBih(),
    LangBis(),
    LangBod(),
    LangBos(),
    LangBre(),
    LangBul(),
    LangCat(),
    LangCes(),
    LangCha(),
    LangChe(),
    LangChu(),
    LangChv(),
    LangCor(),
    LangCos(),
    LangCre(),
    LangCym(),
    LangDan(),
    LangDeu(),
    LangDiv(),
    LangDzo(),
    LangEll(),
    LangEng(),
    LangEpo(),
    LangEst(),
    LangEus(),
    LangEwe(),
    LangFao(),
    LangFas(),
    LangFij(),
    LangFin(),
    LangFra(),
    LangFry(),
    LangFul(),
    LangGla(),
    LangGle(),
    LangGlg(),
    LangGlv(),
    LangGrn(),
    LangGuj(),
    LangHat(),
    LangHau(),
    LangHeb(),
    LangHer(),
    LangHin(),
    LangHmo(),
    LangHrv(),
    LangHun(),
    LangHye(),
    LangIbo(),
    LangIdo(),
    LangIii(),
    LangIku(),
    LangIle(),
    LangIna(),
    LangInd(),
    LangIpk(),
    LangIsl(),
    LangIta(),
    LangJav(),
    LangJpn(),
    LangKal(),
    LangKan(),
    LangKas(),
    LangKat(),
    LangKau(),
    LangKaz(),
    LangKhm(),
    LangKik(),
    LangKin(),
    LangKir(),
    LangKom(),
    LangKon(),
    LangKor(),
    LangKua(),
    LangKur(),
    LangLao(),
    LangLat(),
    LangLav(),
    LangLim(),
    LangLin(),
    LangLit(),
    LangLtz(),
    LangLub(),
    LangLug(),
    LangMah(),
    LangMal(),
    LangMar(),
    LangMkd(),
    LangMlg(),
    LangMlt(),
    LangMon(),
    LangMri(),
    LangMsa(),
    LangMya(),
    LangNau(),
    LangNav(),
    LangNbl(),
    LangNde(),
    LangNdo(),
    LangNep(),
    LangNld(),
    LangNno(),
    LangNob(),
    LangNor(),
    LangNya(),
    LangOci(),
    LangOji(),
    LangOri(),
    LangOrm(),
    LangOss(),
    LangPan(),
    LangPli(),
    LangPol(),
    LangPor(),
    LangPus(),
    LangQue(),
    LangRoh(),
    LangRon(),
    LangRun(),
    LangRus(),
    LangSag(),
    LangSan(),
    LangSin(),
    LangSlk(),
    LangSlv(),
    LangSme(),
    LangSmo(),
    LangSna(),
    LangSnd(),
    LangSom(),
    LangSot(),
    LangSpa(),
    LangSqi(),
    LangSrd(),
    LangSrp(),
    LangSsw(),
    LangSun(),
    LangSwa(),
    LangSwe(),
    LangTah(),
    LangTam(),
    LangTat(),
    LangTel(),
    LangTgk(),
    LangTgl(),
    LangTha(),
    LangTir(),
    LangTon(),
    LangTsn(),
    LangTso(),
    LangTuk(),
    LangTur(),
    LangTwi(),
    LangUig(),
    LangUkr(),
    LangUrd(),
    LangUzb(),
    LangVen(),
    LangVie(),
    LangVol(),
    LangWln(),
    LangWol(),
    LangXho(),
    LangYid(),
    LangYor(),
    LangZha(),
    LangZho(),
    LangZul(),
  ];
}
