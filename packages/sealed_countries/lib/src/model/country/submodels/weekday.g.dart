// GENERATED CODE - DO NOT MODIFY BY HAND

part of "weekday.dart";

@Deprecated('Please use pattern matching with switch expressions instead.')
extension WeekdayFunctionalExtension on Weekday {
  @Deprecated('Please use == operator instead.')
  bool get isMonday => this == Weekday.monday;
  @Deprecated('Please use == operator instead.')
  bool get isTuesday => this == Weekday.tuesday;
  @Deprecated('Please use == operator instead.')
  bool get isWednesday => this == Weekday.wednesday;
  @Deprecated('Please use == operator instead.')
  bool get isThursday => this == Weekday.thursday;
  @Deprecated('Please use == operator instead.')
  bool get isFriday => this == Weekday.friday;
  @Deprecated('Please use == operator instead.')
  bool get isSaturday => this == Weekday.saturday;
  @Deprecated('Please use == operator instead.')
  bool get isSunday => this == Weekday.sunday;

  @Deprecated('Please use pattern matching with switch expressions instead.')
  R map<R>({
    required R Function(Weekday monday) monday,
    required R Function(Weekday tuesday) tuesday,
    required R Function(Weekday wednesday) wednesday,
    required R Function(Weekday thursday) thursday,
    required R Function(Weekday friday) friday,
    required R Function(Weekday saturday) saturday,
    required R Function(Weekday sunday) sunday,
  }) => switch (this) {
    Weekday.monday => monday(this),
    Weekday.tuesday => tuesday(this),
    Weekday.wednesday => wednesday(this),
    Weekday.thursday => thursday(this),
    Weekday.friday => friday(this),
    Weekday.saturday => saturday(this),
    Weekday.sunday => sunday(this),
  };

  @Deprecated('Please use pattern matching with switch expressions instead.')
  R maybeMap<R>({
    required R Function(Weekday weekday) orElse,
    R Function(Weekday monday)? monday,
    R Function(Weekday tuesday)? tuesday,
    R Function(Weekday wednesday)? wednesday,
    R Function(Weekday thursday)? thursday,
    R Function(Weekday friday)? friday,
    R Function(Weekday saturday)? saturday,
    R Function(Weekday sunday)? sunday,
  }) => switch (this) {
    Weekday.monday => monday?.call(this) ?? orElse(this),
    Weekday.tuesday => tuesday?.call(this) ?? orElse(this),
    Weekday.wednesday => wednesday?.call(this) ?? orElse(this),
    Weekday.thursday => thursday?.call(this) ?? orElse(this),
    Weekday.friday => friday?.call(this) ?? orElse(this),
    Weekday.saturday => saturday?.call(this) ?? orElse(this),
    Weekday.sunday => sunday?.call(this) ?? orElse(this),
  };

  @Deprecated('Please use pattern matching with switch expressions instead.')
  R maybeWhen<R>({
    required R Function() orElse,
    R Function()? monday,
    R Function()? tuesday,
    R Function()? wednesday,
    R Function()? thursday,
    R Function()? friday,
    R Function()? saturday,
    R Function()? sunday,
  }) => switch (this) {
    Weekday.monday => monday?.call() ?? orElse(),
    Weekday.tuesday => tuesday?.call() ?? orElse(),
    Weekday.wednesday => wednesday?.call() ?? orElse(),
    Weekday.thursday => thursday?.call() ?? orElse(),
    Weekday.friday => friday?.call() ?? orElse(),
    Weekday.saturday => saturday?.call() ?? orElse(),
    Weekday.sunday => sunday?.call() ?? orElse(),
  };

  @Deprecated('Please use pattern matching with switch expressions instead.')
  R when<R>({
    required R Function() monday,
    required R Function() tuesday,
    required R Function() wednesday,
    required R Function() thursday,
    required R Function() friday,
    required R Function() saturday,
    required R Function() sunday,
  }) => switch (this) {
    Weekday.monday => monday(),
    Weekday.tuesday => tuesday(),
    Weekday.wednesday => wednesday(),
    Weekday.thursday => thursday(),
    Weekday.friday => friday(),
    Weekday.saturday => saturday(),
    Weekday.sunday => sunday(),
  };

  @Deprecated('Please use pattern matching with switch expressions instead.')
  R? whenOrNull<R>({
    R Function()? monday,
    R Function()? tuesday,
    R Function()? wednesday,
    R Function()? thursday,
    R Function()? friday,
    R Function()? saturday,
    R Function()? sunday,
    R Function()? orElse,
  }) => switch (this) {
    Weekday.monday => monday?.call() ?? orElse?.call(),
    Weekday.tuesday => tuesday?.call() ?? orElse?.call(),
    Weekday.wednesday => wednesday?.call() ?? orElse?.call(),
    Weekday.thursday => thursday?.call() ?? orElse?.call(),
    Weekday.friday => friday?.call() ?? orElse?.call(),
    Weekday.saturday => saturday?.call() ?? orElse?.call(),
    Weekday.sunday => sunday?.call() ?? orElse?.call(),
  };
}
