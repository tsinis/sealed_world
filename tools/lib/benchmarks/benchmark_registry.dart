import "benchmark_config.dart";

/// Provides predefined benchmark configurations for known examples.
abstract final class BenchmarkRegistry {
  static final _configs = <String, BenchmarkConfig>{
    "world_countries": const BenchmarkConfig(
      examplePath: "packages/world_countries/example",
      bundleId: "world.countries.world_countries_example",
    ),
  };

  /// Returns the config for [key] if registered.
  static BenchmarkConfig? maybeConfig(String key) => _configs[_normalize(key)];

  /// Registers or replaces a configuration for a custom key.
  static void register(String key, BenchmarkConfig config) =>
      // ignore: avoid-collection-mutating-methods, just a CLI tool.
      _configs[_normalize(key)] = config;

  /// All configured keys.
  static Iterable<String> get keys => _configs.keys;

  static String _normalize(String key) =>
      key.trim().toLowerCase().replaceAll(RegExp("[^a-z0-9_]+"), "_");
}
