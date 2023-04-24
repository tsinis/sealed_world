import "package:sealed_countries/src/model/country/submodels/postal_code.dart";
import "package:test/test.dart";

import "../../../test_data.dart";

void main() => group("$PostalCode", () {
      const postalCode = PostalCode();
      test(
        "toString",
        () => expect(
          postalCode.toString(),
          """$PostalCode(format: ${postalCode.format}, regExpPattern: ${postalCode.regExpPattern})""",
        ),
      );

      group("equality", () {
        const other = PostalCode(format: TestData.string);
        final array = {postalCode, other};

        test("basic", () {
          expect(postalCode, isNot(equals(other)));
          expect(postalCode, same(array.first));
          expect(postalCode, equals(PostalCode(format: array.first.format)));
          expect(array.first, equals(PostalCode(format: postalCode.format)));
        });

        test("with ${array.runtimeType}", () {
          expect(array.length == 2, isTrue);
          array.addAll(List.of(array));
          expect(array.length == 2, isTrue);
          array.add(PostalCode(format: postalCode.format));
          expect(array.length == 2, isTrue);
        });
      });

      group("asserts", () {
        test("empty format", () {
          expect(
            () => PostalCode(format: TestData.emptyString),
            throwsA(isA<AssertionError>()),
          );
        });

        test("empty regExpPattern", () {
          expect(
            () => PostalCode(regExpPattern: TestData.emptyString),
            throwsA(isA<AssertionError>()),
          );
        });
      });
    });
