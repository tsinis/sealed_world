import "package:flutter/foundation.dart";
import "package:flutter_test/flutter_test.dart";
import "package:world_countries/src/helpers/functional_platform.dart";

void main() => group("$FunctionalPlatform", () {
  group("maybeWhenConst", () {
    for (final platform in TargetPlatform.values) {
      test("returns correct value for $platform platform", () {
        debugDefaultTargetPlatformOverride = platform;
        final result = FunctionalPlatform.maybeWhenConst(
          orElse: null,
          android: TargetPlatform.android,
          fuchsia: TargetPlatform.fuchsia,
          iOS: TargetPlatform.iOS,
          linux: TargetPlatform.linux,
          macOS: TargetPlatform.macOS,
          windows: TargetPlatform.windows,
        );
        expect(result, platform);
      });
    }

    test("returns correct value for orElse", () {
      const platform = TargetPlatform.fuchsia;
      debugDefaultTargetPlatformOverride = platform;
      final result = FunctionalPlatform.maybeWhenConst(
        orElse: platform,
        iOS: TargetPlatform.iOS,
      );
      expect(result, platform);
    });
  });

  group("maybeWhen", () {
    for (final platform in TargetPlatform.values) {
      test("returns correct value for $platform platform", () {
        debugDefaultTargetPlatformOverride = platform;
        final result = FunctionalPlatform.maybeWhen(
          orElse: () => null,
          android: () => TargetPlatform.android,
          fuchsia: () => TargetPlatform.fuchsia,
          iOS: () => TargetPlatform.iOS,
          linux: () => TargetPlatform.linux,
          macOS: () => TargetPlatform.macOS,
          windows: () => TargetPlatform.windows,
        );
        expect(result, platform);
      });
    }

    test("returns correct value for orElse", () {
      const platform = TargetPlatform.fuchsia;
      debugDefaultTargetPlatformOverride = platform;
      final result = FunctionalPlatform.maybeWhen(
        orElse: () => platform,
        iOS: () => TargetPlatform.iOS,
      );
      expect(result, platform);
    });
  });
});
