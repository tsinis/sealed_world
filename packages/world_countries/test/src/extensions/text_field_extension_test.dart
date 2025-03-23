import "package:flutter/material.dart";
import "package:flutter_test/flutter_test.dart";
import "package:world_countries/src/extensions/text_field_extension.dart";

void main() => group("TextFieldExtension", () {
  test("copyWith", () {
    final controller = TextEditingController();
    final original = TextField(
      controller: controller,
      decoration: const InputDecoration(enabled: false),
    );

    expect(original.decoration?.enabled, isFalse);
    expect(original.enabled, isNull);

    final copy = original.copyWith(controller, enabled: false);

    expect(copy.decoration?.enabled, isFalse);
    expect(copy.enabled, isFalse);
    controller.dispose();
  });
});
