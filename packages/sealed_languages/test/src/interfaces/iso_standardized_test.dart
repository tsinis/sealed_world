import "package:sealed_languages/src/interfaces/iso_standardized.dart";
import "package:test/test.dart";

final class _IsoStandardizedTest implements IsoStandardized {
  const _IsoStandardizedTest({required this.code, required this.name});

  @override
  final String code;
  @override
  final String name;
  @override
  List<String> get namesNative => [name];

  @override
  String get codeOther => code;

  @override
  String get internationalName => name;

  @override
  String toString({bool short = true}) => name;
}

void main() => group("$IsoStandardized", () {
      const instance = _IsoStandardizedTest(name: "name", code: "code");
      test("constructor", () => expect(instance.name, "name"));

      test(
        "internationalName",
        () => expect(instance.internationalName, instance.name),
      );
    });
