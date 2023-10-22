import "generators/data_list_generator.dart";
import "models/package.dart";

Future<void> main() =>
    const DataListGenerator().generate(Package.sealedCurrencies);
