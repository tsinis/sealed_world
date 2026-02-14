import "package:flutter/widgets.dart" show Widget;

import "../widgets/generic_widgets/list_item_tile.dart";

/// Extension on [ListItemTile] to provide additional functionality.
extension ListItemTileExtension<T extends Object> on ListItemTile<T> {
  /// A boolean indicating whether the tile is selected (or marked as favorite).
  bool get isChosen => selected;

  /// A boolean indicating whether the tile is disabled.
  bool get isDisabled => !enabled;

  /// The icon to display when the tile is selected.
  Widget? get chosenIcon => trailing;
}
