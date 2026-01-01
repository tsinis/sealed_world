import "../../model/script/submodels/script.dart";

/// Adds [copyWith] method to [Script] objects.
extension ScriptCopyWith<T extends Script> on T {
  /// {@macro copy_with_method}
  Script copyWith({
    String? code,
    String? codeNumeric,
    String? date,
    String? name,
    String? pva,
  }) => ScriptCustom(
    code: code ?? this.code,
    name: name ?? this.name,
    codeNumeric: codeNumeric ?? this.codeNumeric,
    date: date ?? this.date,
    pva: pva ?? this.pva,
  );
}
