import "package:flutter_test/flutter_test.dart";
import "package:world_countries/src/extensions/list_item_tile_extension.dart";
import "package:world_countries/src/models/typedefs.dart";
import "package:world_flags/world_flags.dart";

void main() => group("ListItemTileExtension", () {
  const tile = CountryTile(CountrySrb());

  test("isChosen returns selected", () => expect(tile.isChosen, tile.selected));

  test(
    "isDisabled returns !enabled",
    () => expect(tile.isDisabled, !tile.enabled),
  );

  test(
    "chosenIcon returns trailing",
    () => expect(tile.chosenIcon, tile.trailing),
  );
});
