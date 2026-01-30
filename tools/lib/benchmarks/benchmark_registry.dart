import "benchmark_config.dart";

/// Provides predefined benchmark configurations for known examples.
sealed class BenchmarkRegistry {
  static const _configs = <String, BenchmarkConfig>{
    "world_countries": BenchmarkConfig(
      examplePath: "packages/world_countries/example",
      bundleId: "world.countries.world_countries_example",
    ),
    "world_flags": BenchmarkConfig(
      examplePath: "packages/world_flags/example",
      bundleId: "com.example.world_flags_example",
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
