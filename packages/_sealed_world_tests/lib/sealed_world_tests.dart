// ignore_for_file: prefer-static-class, long-parameter-list
import "dart:async";
import "dart:math";

import "package:meta/meta.dart";
import "package:test/test.dart";

const _defaultDurationLimitInMs = 2; // In milliseconds.
const _defaultRetryCount = 1; // For performance tests.

/// Runs a test that should not take more than [durationLimit] milliseconds.
/// Useful to measure how long it takes for example to look up a value in the
/// collection.
@isTest
void performanceTest(
  String description,
  // ignore: avoid-dynamic, strict_raw_type, it's a copy of regular test method.
  FutureOr Function() body, {
  num durationLimit = _defaultDurationLimitInMs,
  String? testOn,
  Timeout? timeout,
  Object? skip,
  Object? tags,
  Map<String, Object?>? onPlatform,
  int retry = _defaultRetryCount,
}) =>
    test(
      description,
      () async {
        final stopwatch = Stopwatch()..start();

        final testResult = await body();

        stopwatch.stop();
        expect(
          stopwatch.elapsedMilliseconds <= durationLimit.toInt() + 1,
          isTrue,
          reason: "The test shouldn't have taken longer than $durationLimit ms",
        );

        return testResult;
      },
      testOn: testOn,
      timeout: timeout,
      skip: skip,
      tags: tags,
      onPlatform: onPlatform,
      retry: retry,
    );

/// Runs a test that should throw an assertion error during instance creation.
@isTest
void assertTest(
  String description,
  Object? Function() createInstance, {
  bool shouldThrow = true,
  // ignore: avoid-dynamic, strict_raw_type, it's a copy of regular test method.
  FutureOr Function()? alsoExpect,
  String? testOn,
  Timeout? timeout,
  Object? skip,
  Object? tags,
  Map<String, Object?>? onPlatform,
  int? retry,
}) =>
    test(
      description,
      () async {
        expect(
          createInstance,
          shouldThrow
              ? throwsA(isA<AssertionError>())
              : isNot(throwsA(isA<AssertionError>())),
        );

        return alsoExpect?.call();
      },
      testOn: testOn,
      timeout: timeout,
      skip: skip,
      tags: tags,
      onPlatform: onPlatform,
      retry: retry,
    );

/// Returns a random item from the provided [iterable] to test against.
@isTest
void randomElementTest<T extends Object>(
  String description,
  Iterable<T> iterable,
  // ignore: avoid-dynamic, strict_raw_type, it's a copy of regular test method.
  FutureOr Function(T) body, {
  num durationLimit = _defaultDurationLimitInMs,
  String? testOn,
  Timeout? timeout,
  Object? skip,
  Object? tags,
  Map<String, Object?>? onPlatform,
  int retry = _defaultRetryCount,
}) =>
    performanceTest(
      description,
      () async => body(randomIterableItem(iterable)),
      durationLimit: durationLimit,
      testOn: testOn,
      timeout: timeout,
      skip: skip,
      tags: tags,
      onPlatform: onPlatform,
      retry: retry,
    );

/// Returns a random item from the provided [iterable].
@visibleForTesting
T randomIterableItem<T extends Object>(Iterable<T> iterable) =>
    iterable.elementAt(Random().nextInt(iterable.length));
