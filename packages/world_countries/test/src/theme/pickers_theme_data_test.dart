import "package:flutter/gestures.dart";
import "package:flutter/material.dart" show Divider;
import "package:flutter/widgets.dart";
import "package:flutter_test/flutter_test.dart";
import "package:world_countries/src/model/iso/iso_maps.dart";
import "package:world_countries/src/theme/pickers_theme_data.dart";
import "package:world_flags/world_flags.dart";

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
});
