import "package:flutter_test/flutter_test.dart";
import "package:world_flags/src/ui/effects/flag_shader_options.dart";

void main() => group("$FlagShaderOptions", () {
  const defaultOptions = FlagShaderOptions();

  test("default values", () {
    expect(defaultOptions.animate, isTrue);
    expect(defaultOptions.animationSpeed, 1);
    expect(defaultOptions.frozenPhase, 0.25);
    expect(defaultOptions.waveAmplitude, 0.03);
    expect(defaultOptions.waveFrequency, 2);
    expect(defaultOptions.wavePhaseShift, 0);
    expect(defaultOptions.secondaryAmplitude, 0.02);
    expect(defaultOptions.secondaryFrequency, 1.8);
    expect(defaultOptions.leftEdgePinned, isTrue);
    expect(defaultOptions.rightEdgePinned, isFalse);
    expect(defaultOptions.pinSoftness, 0.15);
    expect(defaultOptions.poleMargin, 0.02);
    expect(defaultOptions.shadingEnabled, isTrue);
    expect(defaultOptions.foldStrength, 0.4);
    expect(defaultOptions.highlightStrength, 0.3);
    expect(defaultOptions.shadowStrength, 0.3);
    expect(defaultOptions.sheenStrength, 0.1);
    expect(defaultOptions.sheenFrequency, 4);
    expect(defaultOptions.perspective, 0.12);
    expect(defaultOptions.seed, 1);
    expect(defaultOptions.turbulence, 0.8);
    expect(defaultOptions.waveDirection, const Offset(0.8, 0.3));
    expect(defaultOptions.fabricVisibility, 0);
    expect(defaultOptions.clipContent, isFalse);
    expect(defaultOptions.overflowScale, 0.92);
  });

  test("custom values", () {
    const options = FlagShaderOptions(
      animate: false,
      animationSpeed: 2,
      frozenPhase: 0.5,
      waveAmplitude: 0.05,
      waveFrequency: 3,
      wavePhaseShift: 0.1,
      secondaryAmplitude: 0.03,
      secondaryFrequency: 2,
      leftEdgePinned: false,
      rightEdgePinned: true,
      pinSoftness: 0.2,
      poleMargin: 0.03,
      shadingEnabled: false,
      foldStrength: 0.5,
      highlightStrength: 0.4,
      shadowStrength: 0.4,
      sheenStrength: 0.2,
      sheenFrequency: 5,
      perspective: 0.15,
      seed: 2,
      turbulence: 0.9,
      waveDirection: Offset(1, 0),
      fabricVisibility: 0.5,
      clipContent: true,
      overflowScale: 0.95,
    );

    expect(options.animate, isFalse);
    expect(options.animationSpeed, 2);
    expect(options.frozenPhase, 0.5);
    expect(options.waveAmplitude, 0.05);
    expect(options.waveFrequency, 3);
    expect(options.wavePhaseShift, 0.1);
    expect(options.secondaryAmplitude, 0.03);
    expect(options.secondaryFrequency, 2);
    expect(options.leftEdgePinned, isFalse);
    expect(options.rightEdgePinned, isTrue);
    expect(options.pinSoftness, 0.2);
    expect(options.poleMargin, 0.03);
    expect(options.shadingEnabled, isFalse);
    expect(options.foldStrength, 0.5);
    expect(options.highlightStrength, 0.4);
    expect(options.shadowStrength, 0.4);
    expect(options.sheenStrength, 0.2);
    expect(options.sheenFrequency, 5);
    expect(options.perspective, 0.15);
    expect(options.seed, 2);
    expect(options.turbulence, 0.9);
    expect(options.waveDirection, const Offset(1, 0));
    expect(options.fabricVisibility, 0.5);
    expect(options.clipContent, isTrue);
    expect(options.overflowScale, 0.95);
  });

  test("toString", () {
    const options = FlagShaderOptions();
    final string = options.toString();

    expect(string, startsWith("FlagShaderOptions("));
    expect(string, contains("animate: true"));
    expect(string, contains("animationSpeed: 1"));
    expect(string, contains("waveAmplitude: 0.03"));
  });

  test("copyWith - no changes", () {
    const options = FlagShaderOptions();
    final copied = options.copyWith();

    expect(copied, equals(options));
    expect(copied.animate, options.animate);
    expect(copied.animationSpeed, options.animationSpeed);
    expect(copied.waveAmplitude, options.waveAmplitude);
  });

  test("copyWith - partial changes", () {
    const options = FlagShaderOptions();
    final copied = options.copyWith(
      animate: false,
      waveAmplitude: 0.1,
      turbulence: 0.5,
    );

    expect(copied.animate, isFalse);
    expect(copied.waveAmplitude, 0.1);
    expect(copied.turbulence, 0.5);
    // Other values should remain the same.
    expect(copied.animationSpeed, options.animationSpeed);
    expect(copied.frozenPhase, options.frozenPhase);
    expect(copied.waveFrequency, options.waveFrequency);
  });

  test("copyWith - all changes", () {
    const base = FlagShaderOptions();
    final modified = base.copyWith(
      animate: false,
      animationSpeed: 2.5,
      frozenPhase: 0.75,
      waveAmplitude: 0.06,
      waveFrequency: 4,
      wavePhaseShift: 0.2,
      secondaryAmplitude: 0.04,
      secondaryFrequency: 2.2,
      leftEdgePinned: false,
      rightEdgePinned: true,
      pinSoftness: 0.25,
      poleMargin: 0.04,
      shadingEnabled: false,
      foldStrength: 0.6,
      highlightStrength: 0.5,
      shadowStrength: 0.5,
      sheenStrength: 0.3,
      sheenFrequency: 6,
      perspective: 0.2,
      seed: 3,
      turbulence: 0.95,
      waveDirection: const Offset(0.5, 0.5),
      fabricVisibility: 0.8,
      clipContent: true,
      overflowScale: 0.98,
    );

    expect(modified.animate, isFalse);
    expect(modified.animationSpeed, 2.5);
    expect(modified.frozenPhase, 0.75);
    expect(modified.waveAmplitude, 0.06);
    expect(modified.waveFrequency, 4);
    expect(modified.wavePhaseShift, 0.2);
    expect(modified.secondaryAmplitude, 0.04);
    expect(modified.secondaryFrequency, 2.2);
    expect(modified.leftEdgePinned, isFalse);
    expect(modified.rightEdgePinned, isTrue);
    expect(modified.pinSoftness, 0.25);
    expect(modified.poleMargin, 0.04);
    expect(modified.shadingEnabled, isFalse);
    expect(modified.foldStrength, 0.6);
    expect(modified.highlightStrength, 0.5);
    expect(modified.shadowStrength, 0.5);
    expect(modified.sheenStrength, 0.3);
    expect(modified.sheenFrequency, 6);
    expect(modified.perspective, 0.2);
    expect(modified.seed, 3);
    expect(modified.turbulence, 0.95);
    expect(modified.waveDirection, const Offset(0.5, 0.5));
    expect(modified.fabricVisibility, 0.8);
    expect(modified.clipContent, isTrue);
    expect(modified.overflowScale, 0.98);
  });

  test("equality - same values", () {
    const first = FlagShaderOptions();
    const second = FlagShaderOptions();

    expect(first, equals(second));
    expect(first.hashCode, equals(second.hashCode));
  });

  test("equality - different values", () {
    const first = FlagShaderOptions();
    const second = FlagShaderOptions(animate: false);

    expect(first, isNot(equals(second)));
  });

  test("equality - different wave direction", () {
    const first = FlagShaderOptions();
    const second = FlagShaderOptions(waveDirection: Offset(1, 1));

    expect(first, isNot(equals(second)));
  });

  test("equality - identical instance", () {
    const instance = FlagShaderOptions();

    expect(instance, equals(instance));
  });

  test("hashCode - consistent", () {
    const instance = FlagShaderOptions(
      animate: false,
      waveAmplitude: 0.05,
      turbulence: 0.6,
    );

    final firstHash = instance.hashCode;
    final secondHash = instance.hashCode;

    expect(firstHash, equals(secondHash));
  });

  test("hashCode - different for different values", () {
    const first = FlagShaderOptions();
    const second = FlagShaderOptions(animate: false);

    expect(first.hashCode, isNot(equals(second.hashCode)));
  });
});
