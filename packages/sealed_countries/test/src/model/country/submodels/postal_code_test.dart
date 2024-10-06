import "package:sealed_countries/src/helpers/extensions/country_submodels/postal_code_extension.dart";
import "package:sealed_countries/src/model/country/submodels/postal_code.dart";
import "package:sealed_currencies/sealed_currencies.dart";
import "package:test/test.dart";

import "../../../test_data.dart";

void main() => group("$PostalCode", () {
      const value = PostalCode();
      test("toString", () {
        expect(value.toString(), contains(value.format));
        expect(value.toString(), contains(value.regExpPattern));
      });

      group("equality", () {
        const other = PostalCode(format: TestData.string);
        final array = {value, other};

        test("basic", () {
          expect(value, isNot(equals(other)));
          expect(value, same(array.first));
          expect(value, equals(PostalCode(format: array.first.format)));
          expect(array.first, equals(PostalCode(format: value.format)));
        });

        test("with ${array.runtimeType}", () {
          expect(array.length, 2);
          array.addAll(List.of(array));
          expect(array.length, 2);
          array.add(PostalCode(format: value.format));
          expect(array.length, 2);
        });
      });

      group("asserts", () {
        test(
          "not",
          () => expect(
            () => PostalCode(format: value.format),
            isNot(throwsA(isA<AssertionError>())),
          ),
        );

        test(
          "empty format",
          () => expect(
            () => PostalCode(format: TestData.emptyString),
            throwsA(isA<AssertionError>()),
          ),
        );

        test(
          "empty regExpPattern",
          () => expect(
            () => PostalCode(regExpPattern: TestData.emptyString),
            throwsA(isA<AssertionError>()),
          ),
        );
      });

      test("toJson", () {
        final json = value.toJson();
        expect(value, json.parse(PostalCodeExtension.fromMap));
      });
    });
