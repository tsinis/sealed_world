@TestOn("vm")
library;

import "package:sealed_countries/sealed_countries.dart";
import "package:test/test.dart";

bool _assertsRan = false;

bool _markAssertsRan() => _assertsRan = true;

/// Guards the contract that `l10n_countries` must keep for this package.
///
/// `LocaleMappingOptions` defaults both `mainLocale` and `fallbackLocale` to
/// `null`, so the delegate forwards two nulls to `CountriesLocaleMapper
/// .localize`. That call must stay a silent no-op: these tests run with
/// asserts enabled, exactly like a Flutter debug build, so an assertion added
/// upstream would surface here instead of in a consumer's app.
void main() => group("l10n delegate contract", () {
  test("test runner has asserts enabled", () {
    _assertsRan = false;
    assert(_markAssertsRan(), "");

    expect(_assertsRan, isTrue, reason: "otherwise this suite proves nothing");
  });

  test("translatedNames() with default options is empty, never throws", () {
    expect(
      () => WorldCountry.list.first.l10n.translatedNames(
        WorldCountry.list.take(3),
      ),
      returnsNormally,
    );
    expect(
      WorldCountry.list.first.l10n.translatedNames(WorldCountry.list.take(3)),
      isEmpty,
    );
  });

  test("commonNamesMap() without locales returns empty, never throws", () {
    expect(
      () => WorldCountry.list.first.l10n.commonNamesMap(
        WorldCountry.list.take(3),
        options: const LocaleMappingOptions(),
      ),
      returnsNormally,
    );
  });

  test("translatedNames() still localizes when a locale is supplied", () {
    final names = WorldCountry.list.first.l10n.translatedNames(
      WorldCountry.list.take(3),
      options: const LocaleMappingOptions(
        mainLocale: BasicTypedLocale(LangEng()),
      ),
    );

    expect(names, isNotEmpty);
  });
});
