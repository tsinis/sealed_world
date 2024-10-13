import "package:sealed_currencies/sealed_currencies.dart";

import "../../../model/country/submodels/car.dart";

/// Provides extension methods for [Car] class.
/// {@macro submodels_class_extension}
extension CarExtension on Car {
  /// {@macro copy_with_method}
  Car copyWith({bool? isRightSide, String? sign}) => Car(
        sign: sign ?? this.sign,
        isRightSide: isRightSide ?? this.isRightSide,
      );

  /// {@macro to_map_method}
  JsonObjectMap toMap() => {"isRightSide": isRightSide, "sign": sign};

  /// {@macro from_map_method}
  static Car fromMap(JsonMap map) => Car(
        sign: map["sign"]?.toString(),
        // ignore: avoid-type-casts, it's JSON map.
        isRightSide: map["isRightSide"] as bool,
      );
}
