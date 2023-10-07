import "package:sealed_countries/src/helpers/world_country/world_country_web_resources.dart";
import "package:sealed_countries/src/model/country/country.dart";
import "package:test/test.dart";

void main() => group("WorldCountryWebResources", () {
      test(
        "flagPngUrl",
        () => expect(
          WorldCountry.list.first
              .flagPngUrl()
              .contains(WorldCountryWebResources.png),
          isTrue,
        ),
      );

      test(
        "flagSvgUrl",
        () => expect(
          WorldCountry.list.first
              .flagSvgUrl()
              .contains(WorldCountryWebResources.svg),
          isTrue,
        ),
      );

      group("maybeCoatOfArmsPngUrl", () {
        test(
          "country with coat of arms",
          () => expect(
            WorldCountry.list
                .firstWhere((country) => country.hasCoatOfArms)
                .maybeCoatOfArmsPngUrl()
                ?.contains(WorldCountryWebResources.png),
            isTrue,
          ),
        );

        test(
          "country without coat of arms",
          () => expect(
            WorldCountry.list
                .firstWhere((country) => !country.hasCoatOfArms)
                .maybeCoatOfArmsPngUrl(),
            isNull,
          ),
        );
      });

      group("maybeCoatOfArmsSvgUrl", () {
        test(
          "country with coat of arms",
          () => expect(
            WorldCountry.list
                .firstWhere((country) => country.hasCoatOfArms)
                .maybeCoatOfArmsSvgUrl()
                ?.contains(WorldCountryWebResources.svg),
            isTrue,
          ),
        );

        test(
          "country without coat of arms",
          () => expect(
            WorldCountry.list
                .firstWhere((country) => !country.hasCoatOfArms)
                .maybeCoatOfArmsSvgUrl(),
            isNull,
          ),
        );
      });

      test("proper paths", () {
        final country = WorldCountry.list.first;
        final coatsPng = country.maybeCoatOfArmsPngUrl();
        final coatsSvg = country.maybeCoatOfArmsSvgUrl();
        final flagPng = country.flagPngUrl();
        final flagSvg = country.flagSvgUrl();
        final code = country.codeShort.toLowerCase();
        expect(
          coatsSvg,
          "https://mainfacts.com/media/images/coats_of_arms/$code.svg",
        );
        expect(
          coatsPng,
          "https://mainfacts.com/media/images/coats_of_arms/$code.png",
        );
        expect(flagPng, "https://flagcdn.com/w320/$code.png");
        expect(flagSvg, "https://flagcdn.com/$code.svg");
      });
    });
