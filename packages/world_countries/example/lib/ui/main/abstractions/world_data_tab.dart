import "dart:async";

import "package:flutter/foundation.dart";
import "package:flutter/widgets.dart";
import "package:world_countries/world_countries.dart";

import "../../../model/constants.dart";
import "../../../model/world_data.dart";

export "package:world_countries/helpers.dart";

abstract base class WorldDataTab<I extends IsoTranslated>
    extends StatelessWidget {
  WorldDataTab(
    this.data,
    AsyncValueSetter<String>? go, {
    required BasicPicker<I, IsoTile<I>> dataPicker,
    required WorldData type,
    List<I> items = const [],
    super.key,
  }) : picker = dataPicker.copyWith(
         chosen: [data],
         disabled: items.isNotEmpty ? [items.first] : null,
         onSelect: (i) => data != i && go != null
             ? unawaited(go(type.path + Constants.slash + i.code.toLowerCase()))
             : null,
       );

  @protected
  final I data;

  final BasicPicker<I, IsoTile<I>> picker;
}
