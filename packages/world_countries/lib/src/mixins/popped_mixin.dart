import "dart:async" show unawaited;

import "package:flutter/foundation.dart";
import "package:flutter/widgets.dart"
    show BuildContext, ModalRoute, Route, Widget;

import "../extensions/navigator_context_extension.dart";
import "../widgets/base_widgets/stateful_indexed_list_view.dart";

/// A mixin that provides a methods for popping the current route.
mixin PoppedMixin<T extends Object, W extends Widget>
    on StatefulIndexedListView<T, W> {
  /// Selects the given [item] and pops the current route.
  ///
  /// This method calls the [onSelect] callback with the selected [item] and
  /// then pops the current route using `maybePop()` from the [context]. The
  /// [item] is the result of the route if the route returns such items (e.g.
  /// a modal bottom sheet or a dialog of the picker), other routes (e.g. the
  /// view of a `SearchAnchor`) are popped without a result.
  ///
  /// Returns the selected [item].
  @protected
  @optionalTypeArgs
  T maybeSelectAndPop(T item, BuildContext context) {
    onSelect?.call(item);
    // `maybePop` pops the top-most route, e.g. the view of a `SearchAnchor`
    // above the route of a page [context], that may not take the item.
    final takesItem = switch (ModalRoute.of(context)) {
      final Route<T?> route => route.isCurrent,
      _ => false,
    };
    unawaited(context.maybePop(takesItem ? item : null));

    return item;
  }
}
