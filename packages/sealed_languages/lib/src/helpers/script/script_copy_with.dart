import "../../model/script/writing_system.dart";

/// Adds [copyWith] method to [Script] objects.
extension ScriptCopyWith on Script {
  Script copyWith({
    String? name,
    String? code,
    String? codeNumeric,
    String? date,
    String? pva,
  }) =>
      Script(
        name: name ?? this.name,
        code: code ?? this.code,
        codeNumeric: codeNumeric ?? this.codeNumeric,
        date: date ?? this.date,
        pva: pva ?? this.pva,
      );
}
