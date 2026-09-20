// ignore_for_file: deprecated_member_use_from_same_package, stage 1 deprecation
import "package:flutter/foundation.dart";
import "package:flutter/material.dart";
import "package:flutter_test/flutter_test.dart";
import "package:world_flags/src/helpers/extensions/world_flags_build_context_extension.dart";
import "package:world_flags/src/interfaces/decorated_flag_interface.dart";
import "package:world_flags/src/theme/decorated_flag_data.dart";
import "package:world_flags/src/theme/flag_theme.dart";
import "package:world_flags/src/theme/flag_theme_data.dart";

void main() {
  tearDown(FlagTheme.debugResetFallbackResolvers);

  group("$FlagTheme", () {
    testWidgets("of returns fallback when nothing in scope", (tester) async {
      DecoratedFlagInterface? resolved;
      await tester.pumpWidget(
        Builder(
          builder: (context) {
            resolved = FlagTheme.of(context);

            return const SizedBox();
          },
        ),
      );

      expect(resolved, isA<DecoratedFlagData>());
      expect(resolved?.aspectRatio, isNull);
      expect(resolved?.height, isNull);
    });

    testWidgets("maybeOf returns null when nothing in scope", (tester) async {
      DecoratedFlagInterface? resolved;
      await tester.pumpWidget(
        Builder(
          builder: (context) {
            resolved = FlagTheme.maybeOf(context);

            return const SizedBox();
          },
        ),
      );

      expect(resolved, isNull);
    });

    testWidgets("finds ambient FlagTheme", (tester) async {
      const data = DecoratedFlagData(height: 50);
      DecoratedFlagInterface? resolved;

      await tester.pumpWidget(
        FlagTheme(
          data: data,
          child: Builder(
            builder: (context) {
              resolved = FlagTheme.of(context);

              return const SizedBox();
            },
          ),
        ),
      );

      expect(resolved?.height, 50);
    });

    testWidgets("falls back to fallbackResolvers if no FlagTheme", (
      tester, // Dart 3.8 formatting.
    ) async {
      const fallbackData = DecoratedFlagData(height: 42);
      // Stage 1 test setup mutates static resolvers.
      // ignore: avoid-collection-mutating-methods
      FlagTheme.fallbackResolvers.add((_) => fallbackData);

      DecoratedFlagInterface? resolved;
      await tester.pumpWidget(
        Builder(
          builder: (context) {
            resolved = FlagTheme.maybeOf(context);

            return const SizedBox();
          },
        ),
      );

      expect(resolved?.height, 42);
    });

    testWidgets("fallbackResolvers queries next if first returns null", (
      tester,
    ) async {
      const fallbackData = DecoratedFlagData(height: 100);
      // ignore: avoid-collection-mutating-methods, it's just a test.
      FlagTheme.fallbackResolvers.add((_) => null);
      // ignore: avoid-collection-mutating-methods, prefer-add-all, just a test.
      FlagTheme.fallbackResolvers.add((_) => fallbackData);

      DecoratedFlagInterface? resolved;
      await tester.pumpWidget(
        Builder(
          builder: (context) {
            resolved = FlagTheme.maybeOf(context);

            return const SizedBox();
          },
        ),
      );

      expect(resolved?.height, 100);
    });

    testWidgets("ambient FlagTheme takes precedence over fallbackResolvers", (
      tester,
    ) async {
      const fallbackData = DecoratedFlagData(height: 42);
      const ambientData = DecoratedFlagData(height: 100);
      // Stage 1 test setup mutates static resolvers.
      // ignore: avoid-collection-mutating-methods
      FlagTheme.fallbackResolvers.add((_) => fallbackData);

      DecoratedFlagInterface? resolved;
      await tester.pumpWidget(
        FlagTheme(
          data: ambientData,
          child: Builder(
            builder: (context) {
              resolved = FlagTheme.of(context);

              return const SizedBox();
            },
          ),
        ),
      );

      expect(resolved?.height, 100);
    });

    testWidgets("updateShouldNotify triggers only on data change", (
      tester, // Dart 3.8 formatting.
    ) async {
      const startTheme = FlagTheme(
        data: DecoratedFlagData(height: 10),
        child: SizedBox(),
      );
      const updatedTheme = FlagTheme(
        data: DecoratedFlagData(height: 20),
        child: SizedBox(),
      );
      const equalTheme = FlagTheme(
        data: DecoratedFlagData(height: 10),
        child: SizedBox(),
      );

      expect(startTheme.updateShouldNotify(updatedTheme), isTrue);
      expect(startTheme.updateShouldNotify(equalTheme), isFalse);
    });

    testWidgets("wrap creates a new FlagTheme with same data", (tester) async {
      await tester.pumpWidget(const SizedBox());
      const theme = FlagTheme(
        data: DecoratedFlagData(height: 10),
        child: SizedBox(),
      );
      final wrapped = theme.wrap(
        tester.element(find.byType(SizedBox)),
        const Text("child"),
      );

      expect(wrapped, isA<FlagTheme>());
      if (wrapped is FlagTheme) {
        expect(wrapped.data.height, 10);
      }
    });

    testWidgets("debugFillProperties outputs data property", (tester) async {
      const data = DecoratedFlagData(height: 50);
      const theme = FlagTheme(data: data, child: SizedBox());

      final builder = DiagnosticPropertiesBuilder();
      theme.debugFillProperties(builder);
      final propertyNames = <String?>[
        for (final property in builder.properties) property.name,
      ];
      expect(propertyNames, contains("data"));
    });
  });

  group("WorldFlagsBuildContextExtension", () {
    testWidgets("context.flagTheme resolves ambient FlagTheme", (tester) async {
      const data = DecoratedFlagData(height: 50);
      DecoratedFlagInterface? resolved;

      await tester.pumpWidget(
        FlagTheme(
          data: data,
          child: Builder(
            builder: (context) {
              resolved = context.flagTheme;

              return const SizedBox();
            },
          ),
        ),
      );

      expect(resolved?.height, 50);
    });

    testWidgets(
      "context.flagTheme falls back to Material ThemeExtension during Stage 1",
      (tester) async {
        const data = FlagThemeData(height: 35);
        DecoratedFlagInterface? resolved;

        await tester.pumpWidget(
          MaterialApp(
            theme: ThemeData(extensions: const [data]),
            home: Builder(
              builder: (context) {
                resolved = context.flagTheme;

                return const SizedBox();
              },
            ),
          ),
        );

        expect(resolved?.height, 35);
      },
    );

    testWidgets("context.flagTheme returns null when no theme in scope", (
      tester,
    ) async {
      DecoratedFlagInterface? resolved;

      await tester.pumpWidget(
        Builder(
          builder: (context) {
            resolved = context.flagTheme;

            return const SizedBox();
          },
        ),
      );

      expect(resolved, isNull);
    });

    testWidgets(
      "ambient FlagTheme takes precedence over Material ThemeExtension",
      (tester) async {
        const materialData = FlagThemeData(height: 35);
        const flagThemeData = DecoratedFlagData(height: 70);
        DecoratedFlagInterface? resolved;

        await tester.pumpWidget(
          MaterialApp(
            theme: ThemeData(extensions: const [materialData]),
            home: FlagTheme(
              data: flagThemeData,
              child: Builder(
                builder: (context) {
                  resolved = context.flagTheme;

                  return const SizedBox();
                },
              ),
            ),
          ),
        );

        expect(resolved?.height, 70);
      },
    );
  });
}
