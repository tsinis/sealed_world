import "package:sealed_languages/sealed_languages.dart";
import "package:test/test.dart";

final class _IsoStandardizedTest implements IsoStandardized {
  _IsoStandardizedTest({required this.name, required this.code});

  @override
  final String code;
  @override
  final String name;
  @override
  List<String>? get namesNative => [name];
  @override
  String? get codeOther => code;
}

void main() => group("$IsoStandardized", () {
      final instance = _IsoStandardizedTest(name: "name", code: "code");
      test("constructor", () => expect(instance.name, "name"));
    });
