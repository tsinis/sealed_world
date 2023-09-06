import "package:flutter/foundation.dart";
import "package:flutter/widgets.dart";
import "package:world_countries/world_countries.dart";

import "../../model/constants.dart";
import "../../model/world_data.dart";

abstract base class WorldDataTab<T extends Object> extends StatelessWidget {
  WorldDataTab(
    this.data,
    AsyncValueSetter<String>? nav, {
    required String Function(T value) mapCode,
    required BasicPicker<T> dataPicker,
    required WorldData type,
    List<T> items = const [],
    super.key,
  }) : picker = dataPicker.copyWith(
          chosen: [data],
          disabled: items.isNotEmpty ? [items.first] : null,
          onSelect: (x) => data != x && nav != null
              ? nav.call(type.path + Constants.slash + mapCode(x).toLowerCase())
              : null,
        );

  @protected
  final T data;

  final BasicPicker<T> picker;
}
