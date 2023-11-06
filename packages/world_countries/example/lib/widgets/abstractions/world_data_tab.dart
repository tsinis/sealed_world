import "package:flutter/foundation.dart";
import "package:flutter/widgets.dart";
import "package:world_countries/world_countries.dart";

import "../../model/constants.dart";
import "../../model/world_data.dart";

abstract base class WorldDataTab<T extends IsoTranslated>
    extends StatelessWidget {
  WorldDataTab(
    this.data,
    AsyncValueSetter<String>? nav, {
    required BasicPicker<T> dataPicker,
    required WorldData type,
    List<T> items = const [],
    super.key,
  }) : picker = dataPicker.copyWith(
          chosen: [data],
          disabled: items.isNotEmpty ? [items.first] : null,
          onSelect: (i) => data != i && nav != null
              ? nav.call(type.path + Constants.slash + i.code.toLowerCase())
              : null,
        );

  @protected
  final T data;

  final BasicPicker<T> picker;
}
