import "dart:async";

import "package:flutter/foundation.dart";
import "package:flutter/widgets.dart";
import "package:world_countries/world_countries.dart";

import "../../model/constants.dart";
import "../../model/world_data.dart";

export "package:world_countries/helpers.dart";

abstract base class WorldDataTab<
  L extends BasicLocale,
  I extends IsoTranslated<TranslatedName, Object, L>
>
    extends StatelessWidget {
  WorldDataTab(
    this.data,
    AsyncValueSetter<String>? nav, {
    required BasicPicker<I> dataPicker,
    required WorldData type,
    List<I> items = const [],
    super.key,
  }) : picker = dataPicker.copyWith(
         chosen: [data],
         disabled: items.isNotEmpty ? [items.first] : null,
         onSelect:
             (i) =>
                 data != i && nav != null
                     ? unawaited(
                       nav(type.path + Constants.slash + i.code.toLowerCase()),
                     )
                     : null,
       );

  @protected
  final I data;

  final BasicPicker<IsoTranslated<TranslatedName, Object, L>> picker;
}
