import "../interfaces/searchable_interface.dart";

mixin CompareSearchMixin<T extends Object> on SearchableInterface<T> {
  bool compareWithInput(String input, String itemText) {
    final item = caseSensitiveSearch ? itemText : itemText.toLowerCase();
    final text = caseSensitiveSearch ? input : input.toLowerCase();

    return startWithSearch ? item.startsWith(text) : item.contains(text);
  }
}
