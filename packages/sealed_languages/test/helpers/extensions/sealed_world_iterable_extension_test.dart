import 'package:test/test.dart';
import 'package:sealed_languages/src/helpers/extensions/sealed_world_iterable_extension.dart';
import 'package:sealed_languages/src/interfaces/iso_standardized.dart';

class TestIso implements IsoStandardized<String> {
  @override
  final String code;

  @override
  final String codeOther;

  @override
  final String name;

  @override
  final List<String>? namesNative;

  const TestIso({required this.code, required this.codeOther, required this.name, this.namesNative});

  @override
  String get internationalName => name;

  @override
  String toString({bool short = true}) => 'TestIso($code)';
}

enum SampleCodes { en, fr, es }

void main() {
  group('SealedWorldIterableExtension', () {
    test('toInstancesString returns runtime types as list string', () {
      final list = [1, null, 'hello', 2.5];
      expect(list.toInstancesString(), '[int(), String(), double()]');
    });

    test('toUniqueInstancesString returns unique runtime type set string', () {
      final list = [1, 'a', 1, null];
      final result = list.toUniqueInstancesString();
      expect(result.contains('int()'), isTrue);
      expect(result.contains('String()'), isTrue);
    });

    test('fromIsoList maps values using mapper', () {
      final values = <String?>['en', 'fr'];
      final mapped = values.fromIsoList((c) => c.toUpperCase());
      expect(mapped, ['EN', 'FR']);
    });

    test('assertNotEmpty throws on empty iterable', () {
      expect(() => <int>[].assertNotEmpty(), throwsA(isA<AssertionError>()));
      // does not throw for non-empty
      expect(() => [1].assertNotEmpty(), returnsNormally);
    });
  });

  group('SealedWorldIterableIsoExtension and nullable variant', () {
    final iso1 = TestIso(code: 'ENG', codeOther: 'EN', name: 'English');
    final iso2 = TestIso(code: 'FRA', codeOther: 'FR', name: 'French');
    final isoList = [iso1, iso2];

    test('toIsoList returns codes in order', () {
      expect(isoList.toIsoList(), ['ENG', 'FRA']);
    });

    test('firstIsoWhere finds by predicate or throws', () {
      final found = isoList.firstIsoWhere((i) => i.codeOther == 'EN');
      expect(found, same(iso1));
      expect(() => isoList.firstIsoWhere((i) => i.code == 'ZZZ'), throwsStateError);
    });

    test('firstIsoWhereCode matches case-insensitively and trims', () {
      final f1 = isoList.firstIsoWhereCode('eng');
      expect(f1, same(iso1));
      expect(() => isoList.firstIsoWhereCode('zzz'), throwsStateError);
    });

    test('firstIsoWhereCodeOrNull returns null when not found and trims input', () {
      expect(isoList.firstIsoWhereCodeOtherOrNull(' en '), same(iso1));
      expect(isoList.firstIsoWhereCodeOrNull('zzz'), isNull);
    });

    test('firstIsoWhereOrNull respects nullable receiver and assertNotEmpty', () {
      Iterable<TestIso>? nullable = null;
      expect(nullable.firstIsoWhereOrNull((i) => true), isNull);

      // empty iterable with default assertNotEmpty=true should throw assertion
      expect(() => <TestIso>[].firstIsoWhereOrNull((i) => true), throwsA(isA<AssertionError>()));

      // with assertNotEmpty false should just return null
      expect(<TestIso>[].firstIsoWhereOrNull((i) => true, assertNotEmpty: false), isNull);
    });

    test('mapToEnum maps enum values to corresponding iso objects', () {
      final mapped = isoList.mapToEnum<SampleCodes>(SampleCodes.values);
      expect(mapped, isNotNull);
      expect(mapped.length, 2);
      expect(mapped[0], same(iso1));
      expect(mapped[1], same(iso2));
    });
  });
}
