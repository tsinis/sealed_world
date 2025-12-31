import "package:sealed_languages/src/helpers/script/script_json.dart";
import "package:sealed_languages/src/model/script/submodels/script.dart";
import "package:test/test.dart";

void main() => group("ScriptJson", () {
  group("fromMap", () {
    test(
      "throws ArgumentError when codes missing",
      () => expect(() => ScriptJson.fromMap(const {}), throwsArgumentError),
    );

    test("deserializes Script from map", () {
      const map = {
        "code": "Lana",
        "codeNumeric": "351",
        "date": "2007-07-24",
        "name": "Lanna",
        "pva": "Tai Tham",
      };

      final script = ScriptJson.fromMap(map);

      expect(script, isA<ScriptCustom>());
      expect(script.code, "Lana");
      expect(script.codeNumeric, "351");
      expect(script.name, "Lanna");
      expect(script.date, "2007-07-24");
      expect(script.pva, "Tai Tham");
    });
  });
});
