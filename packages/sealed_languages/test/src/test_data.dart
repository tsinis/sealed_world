// ignore_for_file: avoid-top-level-members-in-tests

const firstCode = "RUS";

// ignore: prefer-correct-identifier-length, just for test.
enum TestData { rus, cn }

// ignore: prefer-single-declaration-per-file, it's a test data class.
class IsoCodeClass {
  const IsoCodeClass({this._code = firstCode});
  final String _code;

  @override
  String toString() => _code;
}
