part of "../language.dart";

/// A class that represents a natural language.
class NaturalLanguage extends Language {
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
  })  : assert(code.length == 3, "`code` should be exactly 3 characters long!"),
        assert(
          codeShort.length == 2,
          "`codeShort` should be exactly 2 characters long!",
        ),
        assert(
          namesNative != const <String>[],
          "`namesNative` should not be empty!",
        ),
        assert(
          bibliographicCode == null || bibliographicCode.length == 3,
          "`bibliographicCode` should be exactly 3 characters long!",
        );

  /// Creates a new instance of the [NaturalLanguage] class from a three-letter
  /// Terminological ISO 639-2 code.
  ///
  /// The [code] parameter is required and should be a three-letter string
  /// representing the Terminological ISO 639-2 code for the language. This
  /// method returns the [NaturalLanguage] instance that corresponds to the
  /// given code, or throws a [StateError] if no such instance exists.
  factory NaturalLanguage.fromCode(String code) => list.firstWhere(
        (language) => language.code == code.trim().toUpperCase(),
      );

  /// Creates a new instance of the [NaturalLanguage] class from a two-letter
  /// ISO 639-1 code.
  ///
  /// The [codeShort] parameter is required and should be a two-letter string
  /// representing the ISO 639-1 code for the language. This method returns the
  /// [NaturalLanguage] instance that corresponds to the given code, or throws a
  /// [StateError] if no such instance exists.
  factory NaturalLanguage.fromCodeShort(String codeShort) => list.firstWhere(
        (language) => language.codeShort == codeShort.trim().toUpperCase(),
      );

  /// Creates a new instance of the [NaturalLanguage] class from the name of the
  /// language.
  ///
  /// The [name] parameter is required and should be a non-empty string
  /// representing the name of the natural language. This method returns the
  /// [NaturalLanguage] instance that corresponds to the given name, or throws a
  /// [StateError] if no such instance exists.
  factory NaturalLanguage.fromName(String name) => list.firstWhere(
        (lang) => lang.name.toUpperCase() == name.trim().toUpperCase(),
      );

  /// A three-letter string representing the Terminological ISO 639-2 code for
  /// the language.
  final String code;

  /// A two-letter string representing the ISO 639-1 code for the language.
  final String codeShort;

  /// A list of non-empty strings representing the language's native names.
  final List<String> namesNative;

  /// A three-letter string representing the ISO 639-2/B Bibliographic code for
  /// the language, or `null` if no such code exists.
  final String? bibliographicCode;

  /// The language family to which the language belongs.
  final NaturalLanguageFamily family;

  /// Whether the language is written right-to-left.
  final bool isRightToLeft;

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
      : """NaturalLanguage(name: $name, codeShort: $codeShort, code: $code, bibliographicCode: $bibliographicCode, family: $family, nativeName: $namesNative, isRightToLeft: $isRightToLeft)""";

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

  /// A list of all the natural languages currently
  /// supported by the [NaturalLanguage] class.
  static const list = [
    LangAar(),
    LangAbk(),
    LangAve(),
    LangAfr(),
    LangAka(),
    LangAmh(),
    LangArg(),
    LangAra(),
    LangAsm(),
    LangAva(),
    LangAym(),
    LangAze(),
    LangBak(),
    LangBel(),
    LangBul(),
    LangBih(),
    LangBis(),
    LangBam(),
    LangBen(),
    LangBod(),
    LangBre(),
    LangBos(),
    LangCat(),
    LangChe(),
    LangCha(),
    LangCos(),
    LangCre(),
    LangCes(),
    LangChu(),
    LangChv(),
    LangCor(),
    LangCym(),
    LangDan(),
    LangDeu(),
    LangDiv(),
    LangDzo(),
    LangEwe(),
    LangEll(),
    LangEng(),
    LangEpo(),
    LangEst(),
    LangEus(),
    LangFas(),
    LangFul(),
    LangFin(),
    LangFij(),
    LangFao(),
    LangFra(),
    LangFry(),
    LangGle(),
    LangGla(),
    LangGlg(),
    LangGrn(),
    LangGuj(),
    LangGlv(),
    LangHau(),
    LangHeb(),
    LangHin(),
    LangHmo(),
    LangHrv(),
    LangHat(),
    LangHun(),
    LangHye(),
    LangHer(),
    LangIna(),
    LangInd(),
    LangIle(),
    LangIbo(),
    LangIii(),
    LangIpk(),
    LangIdo(),
    LangIsl(),
    LangIta(),
    LangIku(),
    LangJpn(),
    LangJav(),
    LangKat(),
    LangKon(),
    LangKik(),
    LangKua(),
    LangKaz(),
    LangKal(),
    LangKin(),
    LangKhm(),
    LangKan(),
    LangKor(),
    LangKau(),
    LangKas(),
    LangKur(),
    LangKom(),
    LangKir(),
    LangLat(),
    LangLtz(),
    LangLug(),
    LangLim(),
    LangLin(),
    LangLao(),
    LangLit(),
    LangLub(),
    LangLav(),
    LangMlg(),
    LangMah(),
    LangMri(),
    LangMkd(),
    LangMal(),
    LangMon(),
    LangMar(),
    LangMsa(),
    LangMlt(),
    LangMya(),
    LangNau(),
    LangNob(),
    LangNde(),
    LangNep(),
    LangNdo(),
    LangNld(),
    LangNno(),
    LangNor(),
    LangNbl(),
    LangNav(),
    LangNya(),
    LangOci(),
    LangOji(),
    LangOrm(),
    LangOri(),
    LangOss(),
    LangPan(),
    LangPli(),
    LangPol(),
    LangPus(),
    LangPor(),
    LangQue(),
    LangRoh(),
    LangRun(),
    LangRon(),
    LangRus(),
    LangSan(),
    LangSrd(),
    LangSnd(),
    LangSme(),
    LangSag(),
    LangSin(),
    LangSlk(),
    LangSlv(),
    LangSmo(),
    LangSna(),
    LangSom(),
    LangSpa(),
    LangSqi(),
    LangSrp(),
    LangSsw(),
    LangSot(),
    LangSun(),
    LangSwe(),
    LangSwa(),
    LangTam(),
    LangTel(),
    LangTgk(),
    LangTha(),
    LangTir(),
    LangTuk(),
    LangTgl(),
    LangTsn(),
    LangTon(),
    LangTur(),
    LangTso(),
    LangTat(),
    LangTwi(),
    LangTah(),
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
