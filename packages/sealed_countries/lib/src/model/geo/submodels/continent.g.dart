// GENERATED CODE - DO NOT MODIFY BY HAND

part of "continent.dart";

extension ContinentFunctional on Continent {
  R map<R>({
    required R Function(Continent europe) europe,
    required R Function(Continent africa) africa,
    required R Function(Continent americas) americas,
    required R Function(Continent asia) asia,
    required R Function(Continent antarctica) antarctica,
    required R Function(Continent oceania) oceania,
  }) {
    switch (this) {
      case Europe():
        return europe(this);
      case Africa():
        return africa(this);
      case Americas():
        return americas(this);
      case Asia():
        return asia(this);
      case Antarctica():
        return antarctica(this);
      case Oceania():
        return oceania(this);
      default:
        throw ArgumentError("Unknown value: $this", name);
    }
  }

  R maybeMap<R>({
    required R Function(Continent continent) orElse,
    R Function(Continent europe)? europe,
    R Function(Continent africa)? africa,
    R Function(Continent americas)? americas,
    R Function(Continent asia)? asia,
    R Function(Continent antarctica)? antarctica,
    R Function(Continent oceania)? oceania,
  }) {
    switch (this) {
      case Europe():
        return europe?.call(this) ?? orElse(this);
      case Africa():
        return africa?.call(this) ?? orElse(this);
      case Americas():
        return americas?.call(this) ?? orElse(this);
      case Asia():
        return asia?.call(this) ?? orElse(this);
      case Antarctica():
        return antarctica?.call(this) ?? orElse(this);
      case Oceania():
        return oceania?.call(this) ?? orElse(this);
      default:
        return orElse(this);
    }
  }

  R maybeWhen<R>({
    required R Function() orElse,
    R Function()? europe,
    R Function()? africa,
    R Function()? americas,
    R Function()? asia,
    R Function()? antarctica,
    R Function()? oceania,
  }) {
    switch (this) {
      case Europe():
        return europe?.call() ?? orElse();
      case Africa():
        return africa?.call() ?? orElse();
      case Americas():
        return americas?.call() ?? orElse();
      case Asia():
        return asia?.call() ?? orElse();
      case Antarctica():
        return antarctica?.call() ?? orElse();
      case Oceania():
        return oceania?.call() ?? orElse();
      default:
        return orElse();
    }
  }

  R when<R>({
    required R Function() europe,
    required R Function() africa,
    required R Function() americas,
    required R Function() asia,
    required R Function() antarctica,
    required R Function() oceania,
  }) {
    switch (this) {
      case Europe():
        return europe();
      case Africa():
        return africa();
      case Americas():
        return americas();
      case Asia():
        return asia();
      case Antarctica():
        return antarctica();
      case Oceania():
        return oceania();
      default:
        throw ArgumentError("Unknown value: $this", name);
    }
  }

  R? whenOrNull<R>({
    R Function()? europe,
    R Function()? africa,
    R Function()? americas,
    R Function()? asia,
    R Function()? antarctica,
    R Function()? oceania,
    R Function()? orElse,
  }) {
    switch (this) {
      case Europe():
        return europe?.call() ?? orElse?.call();
      case Africa():
        return africa?.call() ?? orElse?.call();
      case Americas():
        return americas?.call() ?? orElse?.call();
      case Asia():
        return asia?.call() ?? orElse?.call();
      case Antarctica():
        return antarctica?.call() ?? orElse?.call();
      case Oceania():
        return oceania?.call() ?? orElse?.call();
      default:
        return orElse?.call();
    }
  }
}
