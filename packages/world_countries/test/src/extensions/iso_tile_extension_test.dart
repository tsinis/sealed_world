import "package:flutter/widgets.dart";
import "package:flutter_test/flutter_test.dart";
import "package:world_countries/src/extensions/iso_tile_extension.dart";
import "package:world_countries/src/models/typedefs.dart";
import "package:world_flags/world_flags.dart";

void main() => group("IsoTileExtension", () {
  const tile = CountryTile(CountrySrb());

  group("copyWith", () {
    test("returns a new instance with updated fields", () {
      const newTitle = Text("");
      final newTile = tile.copyWith(
        title: newTitle,
        isChosen: true,
        isDisabled: true,
      );

      expect(newTile, isNot(same(tile)));
      expect(newTile.title, newTitle);
      expect(newTile.selected, isTrue);
      expect(newTile.enabled, isFalse);
      expect(newTile.item, tile.item);
    });

    test("with no arguments returns equivalent tile", () {
      final copy = tile.copyWith();
      expect(copy.item, tile.item);
      expect(copy.title, tile.title);
      expect(copy.enabled, tile.enabled);
      expect(copy.selected, tile.selected);
      expect(
        copy.trailing,
        tile.trailing,
        reason: "Verify trailing/chosenIcon preservation",
      );
    });
  });
});
