class Car {
  const Car({required this.signs, this.isRightSide = true});

  final List<String> signs;
  final bool isRightSide;

  @override
  String toString() => "Car(signs: $signs, isRightSide: $isRightSide)";
}
