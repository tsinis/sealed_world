import "package:sealed_languages/src/helpers/extensions/sealed_world_iterable_extension.dart";
import "package:sealed_languages/src/model/language/submodels/natural_language.dart";
import "package:sealed_languages/src/model/script/submodels/script.dart";
import "package:test/test.dart";

enum _SealedWorldIterableExtensionTest { adlm, arab, ar, cyrl, nonexistent }

void main() {
  group(
    "SealedWorldIterableExtension",
    () => group("toInstancesString", () {
      test("should return an empty string for an empty iterable", () {
        const emptyList = <Object>[];
        final result = emptyList.toInstancesString();
        expect(result, "[]");
      });

      test("should return a string representation of the instances", () {
        final list = <Object>[0, "1", 2.0];
        final result = list.toInstancesString();
        expect(result, equals("[$int(), $String(), $double()]"));
      });
    }),
  );

  group("SealedWorldNullableIterableIsoExtension", () {
    group("fromEnums", () {
      const list = [Script.adlm(), Script.arab()];

      test(
        "should return empty list when values are empty",
        () => expect(
          list.fromEnums(const <_SealedWorldIterableExtensionTest>[]),
          isEmpty,
        ),
      );

      test("should return empty list when receiver is null", () {
        List<NaturalLanguage>? nullList;
        expect(
          // ignore: avoid-unassigned-local-variable, it's expected to be null.
          nullList.fromEnums(_SealedWorldIterableExtensionTest.values),
          isEmpty,
        );
      });

      test(
        "should return empty list when receiver is empty",
        () => expect(
          <Script>[].fromEnums(_SealedWorldIterableExtensionTest.values),
          isEmpty,
        ),
      );

      test("should match by short code (length 2 for Language codeShort)", () {
        const languages = [LangAra(), LangEng()];
        final result = languages.fromEnums(const [
          _SealedWorldIterableExtensionTest.ar,
        ]);
        expect(result.single, const LangAra());
      });

      test("should return unique objects", () {
        final result = list.fromEnums(const [
          _SealedWorldIterableExtensionTest.adlm,
          _SealedWorldIterableExtensionTest.adlm,
        ]);
        expect(result.single, const Script.adlm());
      });

      test("should preserve order of input values", () {
        const orderedList = [Script.adlm(), Script.arab(), Script.cyrl()];
        final result = orderedList.fromEnums(const [
          _SealedWorldIterableExtensionTest.cyrl,
          _SealedWorldIterableExtensionTest.adlm,
        ]);
        expect(result.first, const Script.cyrl());
        expect(result.last, const Script.adlm());
        expect(result.length, 2);
      });

      test("should ignore non-matching enums", () {
        final result = list.fromEnums(const [
          _SealedWorldIterableExtensionTest.nonexistent,
        ]);
        expect(result, isEmpty);
      });
    });

    group("toEnums", () {
      const list = [Script.adlm(), Script.arab()];

      test(
        "should return empty list when values are empty",
        () => expect(
          list.toEnums(const <_SealedWorldIterableExtensionTest>[]),
          isEmpty,
        ),
      );

      test("should return empty list when receiver is null", () {
        List<NaturalLanguage>? nullList;
        expect(
          // ignore: avoid-unassigned-local-variable, it's expected to be null.
          nullList.toEnums(_SealedWorldIterableExtensionTest.values),
          isEmpty,
        );
      });

      test("should map to enums by code", () {
        final result = list.toEnums(_SealedWorldIterableExtensionTest.values);
        expect(result, const [
          _SealedWorldIterableExtensionTest.adlm,
          _SealedWorldIterableExtensionTest.arab,
        ]);
      });

      test("should map to enums by codeOther", () {
        const languages = [LangAra()];
        final result = languages.toEnums(
          _SealedWorldIterableExtensionTest.values,
        );
        expect(result.single, _SealedWorldIterableExtensionTest.ar);
      });

      test("should return unique enums", () {
        const duplicateList = [Script.adlm(), Script.adlm()];
        final result = duplicateList.toEnums(const [
          _SealedWorldIterableExtensionTest.adlm,
          _SealedWorldIterableExtensionTest.adlm,
        ]);
        expect(result.single, _SealedWorldIterableExtensionTest.adlm);
      });

      test("should preserve order of input values", () {
        final result = list.toEnums(const [
          _SealedWorldIterableExtensionTest.arab,
          _SealedWorldIterableExtensionTest.adlm,
        ]);
        expect(result.first, _SealedWorldIterableExtensionTest.arab);
        expect(result.last, _SealedWorldIterableExtensionTest.adlm);
        expect(result.length, 2);
      });

      test("should ignore enums that don't match any object in receiver", () {
        final result = const <Script>[
          .adlm(), // Dart 3.8 formatting.
        ].toEnums(const [_SealedWorldIterableExtensionTest.cyrl]);
        expect(result, isEmpty);
      });
    });

    group("firstIsoWhereOrNull", () {
      List<Script>? noList;
      test("with null iterable and assertNotEmpty: false", () {
        final result = noList.firstIsoWhereOrNull(
          (_) => true,
          assertNotEmpty: false,
        );
        expect(result, isNull);
      });

      test(
        "with null iterable and assertNotEmpty: true",
        () => expect(noList.firstIsoWhereOrNull((_) => true), isNull),
      );
    });
  });
}
