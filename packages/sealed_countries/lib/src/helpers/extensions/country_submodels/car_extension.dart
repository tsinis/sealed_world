import "package:sealed_currencies/sealed_currencies.dart";

import "../../../model/country/submodels/car.dart";

extension CarExtension on Car {
  Car copyWith({bool? isRightSide, String? sign}) => Car(
        sign: sign ?? this.sign,
        isRightSide: isRightSide ?? this.isRightSide,
      );

  Map<String, Object?> toMap() => {"isRightSide": isRightSide, "sign": sign};

  static Car fromMap(JsonMap map) => Car(
        sign: map["sign"] as String?,
        isRightSide: map["isRightSide"] as bool,
      );
}
