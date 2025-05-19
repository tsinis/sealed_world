import "../../model/script/writing_system.dart";

/// Adds [copyWith] method to [Script] objects.
extension ScriptCopyWith<T extends Script> on T {
  /// {@macro copy_with_method}
  Script copyWith({
    String? code,
    String? codeNumeric,
    String? date,
    String? name,
    String? pva,
  }) => Script(
    name: name ?? this.name,
    code: code ?? this.code,
    codeNumeric: codeNumeric ?? this.codeNumeric,
    date: date ?? this.date,
    pva: pva ?? this.pva,
  );
}
