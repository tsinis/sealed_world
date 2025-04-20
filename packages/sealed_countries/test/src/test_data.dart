// ignore: avoid-top-level-members-in-tests, it's just a test data class.
abstract final class TestData {
  const TestData._();

  static const integer = 1;
  // ignore: avoid-explicit-type-declaration, vs specify_nonobvious_property_types.
  static const double float = integer + 0.0;

  static const string = "$integer";
  static const emptyString = "";
}
