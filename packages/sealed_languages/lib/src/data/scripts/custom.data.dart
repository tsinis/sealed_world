part of "../../model/script/submodels/script.dart";

/// A class that represents the user-defined custom script.
final class ScriptCustom extends Script {
  /// Creates a custom instance of [Script] (non-standard, custom script).
  const ScriptCustom({
    super.code,
    super.codeNumeric,
    super.date,
    super.name,
    super.pva,
  }) : super._permissive();
}
