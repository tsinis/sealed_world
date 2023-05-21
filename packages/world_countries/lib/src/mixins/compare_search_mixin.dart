import "../interfaces/searchable_interface.dart";

/// A mixin that provides a `compareWithInput` method to compare an input string
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
  bool compareWithInput(String input, String itemText) {
    final item = caseSensitiveSearch ? itemText : itemText.toLowerCase();
    final text = caseSensitiveSearch ? input : input.toLowerCase();

    return startWithSearch ? item.startsWith(text) : item.contains(text);
  }
}
