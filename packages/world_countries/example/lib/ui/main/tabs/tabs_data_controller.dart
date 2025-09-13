import "package:flutter/material.dart" show TabController;

import "../../../model/world_data.dart";

class TabsDataController extends TabController {
  TabsDataController(WorldData initial, {required super.vsync})
    : super(length: _values.length, initialIndex: _values.indexOf(initial));

  static List<WorldData> get _values => WorldData.values;

  WorldData get currentData => _values.elementAt(index);
}
