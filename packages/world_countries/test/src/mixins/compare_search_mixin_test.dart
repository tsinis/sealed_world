import "package:flutter/widgets.dart" show TextEditingController;
import "package:flutter_test/flutter_test.dart";
import "package:world_countries/src/mixins/compare_search_mixin.dart";
import "package:world_countries/src/widgets/country/country_picker.dart";

void main() => group("$CompareSearchMixin", () {
  test("compareWithTextInput ignores spaces around the text", () {
    final controller = TextEditingController(text: " ger ");
    addTearDown(controller.dispose);

    expect(
      const CountryPicker().compareWithTextInput(controller, "Germany"),
      isTrue,
    );
  });
});
