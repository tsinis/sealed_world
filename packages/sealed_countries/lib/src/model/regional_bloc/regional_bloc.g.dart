// GENERATED CODE - DO NOT MODIFY BY HAND

part of "world_bloc.dart";

extension RegionalBlocFunctional on RegionalBloc {
  R map<R>({
    required R Function(RegionalBloc blocAL) blocAL,
    required R Function(RegionalBloc blocASEAN) blocASEAN,
    required R Function(RegionalBloc blocAU) blocAU,
    required R Function(RegionalBloc blocCAIS) blocCAIS,
    required R Function(RegionalBloc blocCARICOM) blocCARICOM,
    required R Function(RegionalBloc blocCEFTA) blocCEFTA,
    required R Function(RegionalBloc blocEEU) blocEEU,
    required R Function(RegionalBloc blocEFTA) blocEFTA,
    required R Function(RegionalBloc blocEU) blocEU,
    required R Function(RegionalBloc blocNAFTA) blocNAFTA,
    required R Function(RegionalBloc blocPA) blocPA,
    required R Function(RegionalBloc blocSAARC) blocSAARC,
    required R Function(RegionalBloc blocUSAN) blocUSAN,
  }) {
    switch (this) {
      case BlocAL():
        return blocAL(this);
      case BlocASEAN():
        return blocASEAN(this);
      case BlocAU():
        return blocAU(this);
      case BlocCAIS():
        return blocCAIS(this);
      case BlocCARICOM():
        return blocCARICOM(this);
      case BlocCEFTA():
        return blocCEFTA(this);
      case BlocEEU():
        return blocEEU(this);
      case BlocEFTA():
        return blocEFTA(this);
      case BlocEU():
        return blocEU(this);
      case BlocNAFTA():
        return blocNAFTA(this);
      case BlocPA():
        return blocPA(this);
      case BlocSAARC():
        return blocSAARC(this);
      case BlocUSAN():
        return blocUSAN(this);
      default:
        throw ArgumentError("Unknown value: $this", name);
    }
  }

  R maybeMap<R>({
    required R Function(RegionalBloc regionalBloc) orElse,
    R Function(RegionalBloc blocAL)? blocAL,
    R Function(RegionalBloc blocASEAN)? blocASEAN,
    R Function(RegionalBloc blocAU)? blocAU,
    R Function(RegionalBloc blocCAIS)? blocCAIS,
    R Function(RegionalBloc blocCARICOM)? blocCARICOM,
    R Function(RegionalBloc blocCEFTA)? blocCEFTA,
    R Function(RegionalBloc blocEEU)? blocEEU,
    R Function(RegionalBloc blocEFTA)? blocEFTA,
    R Function(RegionalBloc blocEU)? blocEU,
    R Function(RegionalBloc blocNAFTA)? blocNAFTA,
    R Function(RegionalBloc blocPA)? blocPA,
    R Function(RegionalBloc blocSAARC)? blocSAARC,
    R Function(RegionalBloc blocUSAN)? blocUSAN,
  }) {
    switch (this) {
      case BlocAL():
        return blocAL?.call(this) ?? orElse(this);
      case BlocASEAN():
        return blocASEAN?.call(this) ?? orElse(this);
      case BlocAU():
        return blocAU?.call(this) ?? orElse(this);
      case BlocCAIS():
        return blocCAIS?.call(this) ?? orElse(this);
      case BlocCARICOM():
        return blocCARICOM?.call(this) ?? orElse(this);
      case BlocCEFTA():
        return blocCEFTA?.call(this) ?? orElse(this);
      case BlocEEU():
        return blocEEU?.call(this) ?? orElse(this);
      case BlocEFTA():
        return blocEFTA?.call(this) ?? orElse(this);
      case BlocEU():
        return blocEU?.call(this) ?? orElse(this);
      case BlocNAFTA():
        return blocNAFTA?.call(this) ?? orElse(this);
      case BlocPA():
        return blocPA?.call(this) ?? orElse(this);
      case BlocSAARC():
        return blocSAARC?.call(this) ?? orElse(this);
      case BlocUSAN():
        return blocUSAN?.call(this) ?? orElse(this);
      default:
        return orElse(this);
    }
  }

  R maybeWhen<R>({
    required R Function() orElse,
    R Function()? blocAL,
    R Function()? blocASEAN,
    R Function()? blocAU,
    R Function()? blocCAIS,
    R Function()? blocCARICOM,
    R Function()? blocCEFTA,
    R Function()? blocEEU,
    R Function()? blocEFTA,
    R Function()? blocEU,
    R Function()? blocNAFTA,
    R Function()? blocPA,
    R Function()? blocSAARC,
    R Function()? blocUSAN,
  }) {
    switch (this) {
      case BlocAL():
        return blocAL?.call() ?? orElse();
      case BlocASEAN():
        return blocASEAN?.call() ?? orElse();
      case BlocAU():
        return blocAU?.call() ?? orElse();
      case BlocCAIS():
        return blocCAIS?.call() ?? orElse();
      case BlocCARICOM():
        return blocCARICOM?.call() ?? orElse();
      case BlocCEFTA():
        return blocCEFTA?.call() ?? orElse();
      case BlocEEU():
        return blocEEU?.call() ?? orElse();
      case BlocEFTA():
        return blocEFTA?.call() ?? orElse();
      case BlocEU():
        return blocEU?.call() ?? orElse();
      case BlocNAFTA():
        return blocNAFTA?.call() ?? orElse();
      case BlocPA():
        return blocPA?.call() ?? orElse();
      case BlocSAARC():
        return blocSAARC?.call() ?? orElse();
      case BlocUSAN():
        return blocUSAN?.call() ?? orElse();
      default:
        return orElse();
    }
  }

  R when<R>({
    required R Function() blocAL,
    required R Function() blocASEAN,
    required R Function() blocAU,
    required R Function() blocCAIS,
    required R Function() blocCARICOM,
    required R Function() blocCEFTA,
    required R Function() blocEEU,
    required R Function() blocEFTA,
    required R Function() blocEU,
    required R Function() blocNAFTA,
    required R Function() blocPA,
    required R Function() blocSAARC,
    required R Function() blocUSAN,
  }) {
    switch (this) {
      case BlocAL():
        return blocAL();
      case BlocASEAN():
        return blocASEAN();
      case BlocAU():
        return blocAU();
      case BlocCAIS():
        return blocCAIS();
      case BlocCARICOM():
        return blocCARICOM();
      case BlocCEFTA():
        return blocCEFTA();
      case BlocEEU():
        return blocEEU();
      case BlocEFTA():
        return blocEFTA();
      case BlocEU():
        return blocEU();
      case BlocNAFTA():
        return blocNAFTA();
      case BlocPA():
        return blocPA();
      case BlocSAARC():
        return blocSAARC();
      case BlocUSAN():
        return blocUSAN();
      default:
        throw ArgumentError("Unknown value: $this", name);
    }
  }

  R? maybeWhenOrNull<R>({
    R Function()? blocAL,
    R Function()? blocASEAN,
    R Function()? blocAU,
    R Function()? blocCAIS,
    R Function()? blocCARICOM,
    R Function()? blocCEFTA,
    R Function()? blocEEU,
    R Function()? blocEFTA,
    R Function()? blocEU,
    R Function()? blocNAFTA,
    R Function()? blocPA,
    R Function()? blocSAARC,
    R Function()? blocUSAN,
    R Function()? orElse,
  }) {
    switch (this) {
      case BlocAL():
        return blocAL?.call() ?? orElse?.call();
      case BlocASEAN():
        return blocASEAN?.call() ?? orElse?.call();
      case BlocAU():
        return blocAU?.call() ?? orElse?.call();
      case BlocCAIS():
        return blocCAIS?.call() ?? orElse?.call();
      case BlocCARICOM():
        return blocCARICOM?.call() ?? orElse?.call();
      case BlocCEFTA():
        return blocCEFTA?.call() ?? orElse?.call();
      case BlocEEU():
        return blocEEU?.call() ?? orElse?.call();
      case BlocEFTA():
        return blocEFTA?.call() ?? orElse?.call();
      case BlocEU():
        return blocEU?.call() ?? orElse?.call();
      case BlocNAFTA():
        return blocNAFTA?.call() ?? orElse?.call();
      case BlocPA():
        return blocPA?.call() ?? orElse?.call();
      case BlocSAARC():
        return blocSAARC?.call() ?? orElse?.call();
      case BlocUSAN():
        return blocUSAN?.call() ?? orElse?.call();
      default:
        return orElse?.call();
    }
  }
}
