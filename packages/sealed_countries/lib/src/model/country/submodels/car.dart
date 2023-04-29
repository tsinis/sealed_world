final class Car {
  const Car({this.sign, this.isRightSide = true})
      : assert(sign == null || sign.length > 0, "`sign` should not be empty!");

  final bool isRightSide;
  final String? sign;

  @override
  String toString() => "Car(sign: $sign, isRightSide: $isRightSide)";

  @override
  bool operator ==(covariant Car other) {
    if (identical(this, other)) return true;

    return other.isRightSide == isRightSide && other.sign == sign;
  }

  @override
  int get hashCode => isRightSide.hashCode ^ sign.hashCode;
}
