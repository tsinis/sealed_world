import "package:flutter/foundation.dart";
import "package:flutter/widgets.dart";
import "package:http/http.dart" show get;
import "package:world_countries/world_countries.dart";

import "my_app.dart";

Future<void> main() async {
  const ireland = CountryIrl();
  const url =
      """SCaGnZhwF0QmGUAIV2zF-wTopCttEhLKTGeeRTutRb5UN3uPfFZ15y0PB03PmeMXyTXMFBOqtqChZn_CWApL6Qyh-M029PbbsC16c2GP6F5UnQII2AM=h""";
  final dispatcher = PlatformDispatcher.instance;

  final countryCode = dispatcher.locale.countryCode;
  final country = WorldCountry.maybeFromValue(
    countryCode ?? ireland.codeShort,
    where: (expectedCountry) => expectedCountry.codeShort,
  );

  Uint8List? imageBytes;
  try {
    final height = dispatcher.views.first.physicalSize.height.toInt();
    final response = await get(
      Uri.https("lh3.googleusercontent.com", url + height.toString()),
    );
    if (response.statusCode == 200 && response.bodyBytes.isNotEmpty) {
      imageBytes = response.bodyBytes;
    }
  } catch (_) {}

  return runApp(MyApp(country: country ?? ireland, imageBytes: imageBytes));
}
