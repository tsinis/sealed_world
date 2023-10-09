part of "../writing_system.dart";

class Script extends WritingSystem
    implements IsoStandardized<String>, JsonEncodable<Script> {
  const Script({
    required super.name,
    required this.code,
    required this.codeNumeric,
    required this.date,
    this.pva,
  })  : assert(code.length == 4, "`code` should be exactly 4 characters long!"),
        assert(pva == null || pva.length > 0, "`pva` should not be empty!"),
        assert(
          codeNumeric.length == 3,
          "`codeNumeric` should be exactly 3 characters long!",
        );

  factory Script.fromCode(String code, [Iterable<Script> scripts = list]) =>
      scripts.firstWhere(
        (script) => script.code.toUpperCase() == code.trim().toUpperCase(),
      );

  factory Script.fromcodeNumeric(
    String codeNumeric, [
    Iterable<Script> scripts = list,
  ]) =>
      scripts.firstWhere((script) => script.codeNumeric == codeNumeric.trim());

  factory Script.fromName(String name, [Iterable<Script> scripts = list]) =>
      scripts.firstWhere(
        (script) => script.name.toUpperCase() == name.trim().toUpperCase(),
      );

  /// Four character ISO 15924 code.
  @override
  final String code;

  /// Three digit ISO 15924 code.
  final String codeNumeric;

  /// Date of addition.
  final String date;

  /// Property value alias.
  final String? pva;

  @override
  List<String>? get namesNative => null;

  @override
  String get codeOther => codeNumeric;

  @override
  String toString({bool short = true}) => short
      ? super.toString()
      : '''$Script(name: "$name", code: "$code", codeNumeric: "$codeNumeric", date: "$date", pva: ${pva == null ? pva : '"$pva"'})''';

  @override
  String toJson({JsonCodec codec = const JsonCodec()}) => codec.encode(toMap());

  static Script? maybeFromValue<T extends Object>(
    T value, {
    T? Function(Script lang)? where,
    Iterable<Script> scripts = list,
  }) {
    assert(scripts.isNotEmpty, "`scripts` should not be empty!");
    for (final script in scripts) {
      final expectedValue = where?.call(script) ?? script.code;
      if (expectedValue == value) return script;
    }

    return null;
  }

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
