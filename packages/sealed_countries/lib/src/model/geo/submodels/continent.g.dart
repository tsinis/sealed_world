// GENERATED CODE - DO NOT MODIFY BY HAND

part of "continent.dart";

@Deprecated('Please use pattern matching with switch expressions instead.')
extension ContinentFunctional on Continent {
  @Deprecated('Please use pattern matching with switch expressions instead.')
  R map<R>({
    required R Function(Continent europe) europe,
    required R Function(Continent africa) africa,
    required R Function(Continent americas) americas,
    required R Function(Continent asia) asia,
    required R Function(Continent antarctica) antarctica,
    required R Function(Continent oceania) oceania,
  }) => switch (this) {
    Europe() => europe(this),
    Africa() => africa(this),
    Americas() => americas(this),
    Asia() => asia(this),
    Antarctica() => antarctica(this),
    Oceania() => oceania(this),
    _ => throw ArgumentError("Unknown value: $this", name),
  };

  @Deprecated('Please use pattern matching with switch expressions instead.')
  R maybeMap<R>({
    required R Function(Continent continent) orElse,
    R Function(Continent europe)? europe,
    R Function(Continent africa)? africa,
    R Function(Continent americas)? americas,
    R Function(Continent asia)? asia,
    R Function(Continent antarctica)? antarctica,
    R Function(Continent oceania)? oceania,
  }) => switch (this) {
    Europe() => europe?.call(this) ?? orElse(this),
    Africa() => africa?.call(this) ?? orElse(this),
    Americas() => americas?.call(this) ?? orElse(this),
    Asia() => asia?.call(this) ?? orElse(this),
    Antarctica() => antarctica?.call(this) ?? orElse(this),
    Oceania() => oceania?.call(this) ?? orElse(this),
    _ => orElse(this),
  };

  @Deprecated('Please use pattern matching with switch expressions instead.')
  R maybeWhen<R>({
    required R Function() orElse,
    R Function()? europe,
    R Function()? africa,
    R Function()? americas,
    R Function()? asia,
    R Function()? antarctica,
    R Function()? oceania,
  }) => switch (this) {
    Europe() => europe?.call() ?? orElse(),
    Africa() => africa?.call() ?? orElse(),
    Americas() => americas?.call() ?? orElse(),
    Asia() => asia?.call() ?? orElse(),
    Antarctica() => antarctica?.call() ?? orElse(),
    Oceania() => oceania?.call() ?? orElse(),
    _ => orElse(),
  };

  @Deprecated('Please use pattern matching with switch expressions instead.')
  R when<R>({
    required R Function() europe,
    required R Function() africa,
    required R Function() americas,
    required R Function() asia,
    required R Function() antarctica,
    required R Function() oceania,
  }) => switch (this) {
    Europe() => europe(),
    Africa() => africa(),
    Americas() => americas(),
    Asia() => asia(),
    Antarctica() => antarctica(),
    Oceania() => oceania(),
    _ => throw ArgumentError("Unknown value: $this", name),
  };

  @Deprecated('Please use pattern matching with switch expressions instead.')
  R? whenOrNull<R>({
    R Function()? europe,
    R Function()? africa,
    R Function()? americas,
    R Function()? asia,
    R Function()? antarctica,
    R Function()? oceania,
    R Function()? orElse,
  }) => switch (this) {
    Europe() => europe?.call() ?? orElse?.call(),
    Africa() => africa?.call() ?? orElse?.call(),
    Americas() => americas?.call() ?? orElse?.call(),
    Asia() => asia?.call() ?? orElse?.call(),
    Antarctica() => antarctica?.call() ?? orElse?.call(),
    Oceania() => oceania?.call() ?? orElse?.call(),
    _ => orElse?.call(),
  };
}
