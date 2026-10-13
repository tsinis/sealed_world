// ignore_for_file: prefer-match-file-name, a theme of the tests below.

import "package:flutter/gestures.dart";
import "package:flutter/widgets.dart";
import "package:flutter_test/flutter_test.dart";
import "package:material_ui/material_ui.dart" show Divider, ThemeData;
import "package:world_countries/src/constants/ui_constants.dart";
import "package:world_countries/src/model/iso/iso_maps.dart";
import "package:world_countries/src/theme/flag_theme_data.dart";
import "package:world_countries/src/theme/pickers_theme_data.dart";
import "package:world_flags/world_flags.dart" hide FlagThemeData;

import "../../helpers/widget_tester_extension.dart";

void main() => group("$PickersThemeData", () {
  // ignore: avoid-non-ascii-symbols, just a test.
  const maps = IsoMaps(countryTranslations: {CountryPrk(): "조선"});
  const original = WidgetTesterExtension.pickersTheme;

  test("copyWith with maps", () {
    PickersThemeData copy = original.copyWith(maps: maps);

    expect(copy, isNot(WidgetTesterExtension.pickersTheme));
    expect(copy.maps, maps);
    copy = copy.copyWith(showHeader: false);
    expect(copy.showHeader, isFalse);
  });

  test("copyWith preserves all values when no arguments provided", () {
    final copy = original.copyWith();
    expect(copy.addRepaintBoundaries, original.addRepaintBoundaries);
    expect(copy.addSemanticIndexes, original.addSemanticIndexes);
    expect(copy.cacheExtent, original.cacheExtent);
    expect(copy.clipBehavior, original.clipBehavior);
    expect(copy.crossAxisAlignment, original.crossAxisAlignment);
    expect(copy.direction, original.direction);
    expect(copy.dragStartBehavior, original.dragStartBehavior);
    expect(copy.header, original.header);
    expect(copy.hitTestBehavior, original.hitTestBehavior);
    expect(copy.keyboardDismissBehavior, original.keyboardDismissBehavior);
    expect(copy.mainAxisAlignment, original.mainAxisAlignment);
    expect(copy.mainAxisSize, original.mainAxisSize);
    expect(copy.padding, original.padding);
    expect(copy.physics, original.physics);
    expect(copy.primary, original.primary);
    expect(copy.reverse, original.reverse);
    expect(copy.separator, original.separator);
    expect(copy.showHeader, original.showHeader);
    expect(copy.shrinkWrap, original.shrinkWrap);
    expect(copy.textBaseline, original.textBaseline);
    expect(copy.textDirection, original.textDirection);
    expect(copy.verticalDirection, original.verticalDirection);
    expect(copy.searchBarPadding, original.searchBarPadding);
    expect(copy.showClearButton, original.showClearButton);
    expect(copy.searchBar, original.searchBar);
    expect(copy.maps, original.maps);
    expect(copy.flagTheme, original.flagTheme);
    expect(copy.spacing, original.spacing);
  });

  test("copyWith updates individual fields", () {
    final copy = original.copyWith(
      addRepaintBoundaries: false,
      addSemanticIndexes: false,
      clipBehavior: Clip.none,
      crossAxisAlignment: CrossAxisAlignment.start,
      direction: Axis.horizontal,
      dragStartBehavior: DragStartBehavior.down,
      hitTestBehavior: HitTestBehavior.translucent,
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
      mainAxisAlignment: MainAxisAlignment.end,
      mainAxisSize: MainAxisSize.max,
      reverse: true,
      shrinkWrap: true,
      verticalDirection: VerticalDirection.up,
      showClearButton: false,
      spacing: 8,
    );

    expect(copy.addRepaintBoundaries, isFalse);
    expect(copy.addSemanticIndexes, isFalse);
    expect(copy.clipBehavior, Clip.none);
    expect(copy.crossAxisAlignment, CrossAxisAlignment.start);
    expect(copy.direction, Axis.horizontal);
    expect(copy.dragStartBehavior, DragStartBehavior.down);
    expect(copy.hitTestBehavior, HitTestBehavior.translucent);
    expect(
      copy.keyboardDismissBehavior,
      ScrollViewKeyboardDismissBehavior.onDrag,
    );
    expect(copy.mainAxisAlignment, MainAxisAlignment.end);
    expect(copy.mainAxisSize, MainAxisSize.max);
    expect(copy.reverse, isTrue);
    expect(copy.shrinkWrap, isTrue);
    expect(copy.verticalDirection, VerticalDirection.up);
    expect(copy.showClearButton, isFalse);
    expect(copy.spacing, 8);
  });

  test("copyWith updates widget fields", () {
    const header = SizedBox(height: 50);
    const separator = Divider();
    const flagTheme = FlagThemeData(height: 24);

    final copy = original.copyWith(
      header: header,
      separator: separator,
      flagTheme: flagTheme,
      padding: const EdgeInsets.all(16),
      searchBarPadding: const EdgeInsets.all(4),
      primary: false,
      textBaseline: TextBaseline.ideographic,
      textDirection: TextDirection.rtl,
      maps: maps,
    );

    expect(copy.header, header);
    expect(copy.separator, separator);
    expect(copy.flagTheme, flagTheme);
    expect(copy.padding, const EdgeInsets.all(16));
    expect(copy.searchBarPadding, const EdgeInsets.all(4));
    expect(copy.primary, isFalse);
    expect(copy.textBaseline, TextBaseline.ideographic);
    expect(copy.textDirection, TextDirection.rtl);
    expect(copy.maps, maps);
  });

  test("copyWith updates physics and searchBar", () {
    const physics = BouncingScrollPhysics();
    final copy = original.copyWith(physics: physics);
    expect(copy.physics, physics);
  });

  test("copyWith resets cacheExtent to null with negative value", () {
    expect(original.cacheExtent, isNotNull);
    final copy = original.copyWith(cacheExtent: -1);
    expect(copy.cacheExtent, isNull);
  });

  test("lerp", () => expect(original.lerp(original, 1), original));

  test("lerp switches to the other theme halfway", () {
    const other = PickersThemeData(showClearButton: false);

    expect(original.lerp(other, 0.4), original);
    expect(original.lerp(other, 0.5), other);
    expect(original.lerp(other, 1), other);
    expect(original.lerp(null, 1), original);
  });

  test("ThemeData.lerp keeps the pickers theme of the end theme", () {
    const end = PickersThemeData(showClearButton: false);
    final lerped = ThemeData.lerp(
      ThemeData(extensions: const [original]),
      ThemeData(extensions: const [end]),
      1,
    );

    expect(lerped.extension<PickersThemeData>()?.showClearButton, isFalse);
  });

  group("equality", () {
    test("is equal to a theme with the same values", () {
      final theme = _theme(maps);

      expect(theme, _theme(maps));
      expect(theme.hashCode, _theme(maps).hashCode);
      expect(theme, isNot(_theme(maps, spacing: 4)));
      expect(theme, isNot(theme.copyWith(showHeader: false)));
      expect(theme, isNot(theme.copyWith(primary: true)));
    });

    test("is not equal to a theme of another type", () {
      expect(const PickersThemeData() == const _BrandPickersTheme(), isFalse);
      expect(const _BrandPickersTheme() == const PickersThemeData(), isFalse);
    });

    test("keeps ThemeData equal when rebuilt with the same values", () {
      expect(
        ThemeData(extensions: [_theme(maps)]),
        ThemeData(extensions: [_theme(maps)]),
      );
    });
  });
});

/// Creates a new (not a constant) theme on every call.
PickersThemeData _theme(IsoMaps maps, {double spacing = 2}) => PickersThemeData(
  cacheExtent: 100,
  header: UiConstants.placeholder,
  maps: maps,
  padding: EdgeInsets.all(spacing),
  physics: const ClampingScrollPhysics(),
  searchBarPadding: EdgeInsets.all(spacing),
  separator: UiConstants.separator,
  spacing: spacing,
  textBaseline: TextBaseline.alphabetic,
  textDirection: TextDirection.rtl,
);

/// A theme of an app, that extends the pickers theme with its own values.
class _BrandPickersTheme extends PickersThemeData {
  const new();
}
