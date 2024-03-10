import "package:sealed_languages/src/helpers/extensions/sealed_world_iterable_extension.dart";
import "package:sealed_languages/src/model/script/writing_system.dart";
import "package:test/test.dart";

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

  group(
    "SealedWorldIterableIsoExtension",
    () => group("firstIsoWhereOrNull", () {
      List<Script>? noList;
      test("with null iterable and assertNotEmpty: false", () {
        final result =
            noList.firstIsoWhereOrNull((_) => true, assertNotEmpty: false);
        expect(result, isNull);
      });

      test("with null iterable and assertNotEmpty: true", () {
        final result = noList.firstIsoWhereOrNull((_) => true);
        expect(result, isNull);
      });
    }),
  );
}
