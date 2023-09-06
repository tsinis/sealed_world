import "dart:async" show unawaited;

import "package:flutter/foundation.dart";
import "package:flutter/widgets.dart" show BuildContext;

import "../extensions/navigator_context_extension.dart";
import "../widgets/base_widgets/stateful_indexed_list_view.dart";

/// A mixin that provides a methods for popping the current route.
mixin PoppedMixin<T extends Object> on StatefulIndexedListView<T> {
  /// Selects the given [item] and pops the current route.
  ///
  /// This method calls the [onSelect] callback with the selected [item] and
  /// then pops the current route using `maybePop()` from the [context].
  ///
  /// Returns the selected [item].
  @protected
  T maybeSelectAndPop(T item, BuildContext context) {
    onSelect?.call(item);
    unawaited(context.maybePop());

    return item;
  }
}
