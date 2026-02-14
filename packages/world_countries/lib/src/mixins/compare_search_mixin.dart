import "package:flutter/foundation.dart" show protected;
import "package:flutter/widgets.dart" show TextEditingController;
import "package:meta/meta.dart" show useResult;

import "../interfaces/searchable_interface.dart";

/// A mixin that provides a [compareWithInput] method to compare an input string
/// with an item's text.
///
/// This mixin should be used in combination with a class that extends
/// [SearchableInterface].
mixin CompareSearchMixin<T extends Object> on SearchableInterface<T> {
  /// Compares an input string with an item's text.
  ///
  /// * [input] is the search query input by the user.
  /// * [itemText] is the text of the item being compared.
  ///
  /// Returns a boolean indicating whether the item's text matches the search
  /// query.
  @protected
  @useResult
  bool compareWithInput(String input, String itemText) {
    final item = caseSensitiveSearch ? itemText : itemText.toLowerCase();
    final text = caseSensitiveSearch ? input : input.toLowerCase();

    return startWithSearch ? item.startsWith(text) : item.contains(text);
  }

  /// Compares an [TextEditingController] text input string with an item's text.
  ///
  /// * [controller] is the text editing controller input by the user.
  /// * [item] is the text of the item being compared.
  ///
  /// Returns a boolean indicating whether the item's text matches the search
  /// query.
  @useResult
  bool compareWithTextInput(TextEditingController controller, String item) =>
      compareWithInput(controller.text, item);
}
