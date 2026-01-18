import "package:world_flags/world_flags.dart" show FiatCurrency;

import "../../widgets/currency/currency_picker.dart";

/// Extension on [CurrencyPicker] to provide additional functionality.
extension CurrencyPickerExtension on CurrencyPicker {
  /// Returns the list of fiat currencies being displayed by this widget.
  Iterable<FiatCurrency> get currencies => resolvedItems();
}
