// ignore_for_file: avoid-top-level-members-in-tests

const firstCode = "RUS"; // ignore: prefer-static-class, just for test.

// ignore: prefer-correct-identifier-length, just for test.
enum TestData { rus, cn }

class IsoCodeClass {
  const IsoCodeClass({String code = firstCode}) : _code = code;
  final String _code;

  @override
  String toString() => _code;
}
