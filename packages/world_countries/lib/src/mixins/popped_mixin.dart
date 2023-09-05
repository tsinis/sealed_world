import "dart:async" show unawaited;

import "package:flutter/foundation.dart";
import "package:flutter/widgets.dart" show BuildContext;

import "../extensions/build_context_extension.dart";
import "../widgets/base_widgets/stateful_indexed_list_view.dart";

mixin PoppedMixin<T extends Object> on StatefulIndexedListView<T> {
  @protected
  T maybeSelectAndPop(T item, BuildContext context) {
    onSelect?.call(item);
    unawaited(context.maybePop());

    return item;
  }
}
