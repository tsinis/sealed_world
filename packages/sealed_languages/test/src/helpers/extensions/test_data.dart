const firstCode = "CN"; // ignore: prefer-static-class, just for test.

// ignore: prefer-correct-identifier-length, just for test.
enum TestData { cn, rus }

class IsoCodeClass {
  const IsoCodeClass({this.code = firstCode});
  final String code;

  @override
  String toString() => code;
}
