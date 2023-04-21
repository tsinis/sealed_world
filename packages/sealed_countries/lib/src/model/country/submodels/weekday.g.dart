// GENERATED CODE - DO NOT MODIFY BY HAND

part of "weekday.dart";

extension WeekdayExtension on Weekday {
  bool get isMonday => this == Weekday.monday;
  bool get isTuesday => this == Weekday.tuesday;
  bool get isWednesday => this == Weekday.wednesday;
  bool get isThursday => this == Weekday.thursday;
  bool get isFriday => this == Weekday.friday;
  bool get isSaturday => this == Weekday.saturday;
  bool get isSunday => this == Weekday.sunday;

  R map<R>({
    required R Function(Weekday monday) monday,
    required R Function(Weekday tuesday) tuesday,
    required R Function(Weekday wednesday) wednesday,
    required R Function(Weekday thursday) thursday,
    required R Function(Weekday friday) friday,
    required R Function(Weekday saturday) saturday,
    required R Function(Weekday sunday) sunday,
  }) {
    switch (this) {
      case Weekday.monday:
        return monday(this);
      case Weekday.tuesday:
        return tuesday(this);
      case Weekday.wednesday:
        return wednesday(this);
      case Weekday.thursday:
        return thursday(this);
      case Weekday.friday:
        return friday(this);
      case Weekday.saturday:
        return saturday(this);
      case Weekday.sunday:
        return sunday(this);
    }
  }

  R maybeMap<R>({
    required R Function(Weekday weekday) orElse,
    R Function(Weekday monday)? monday,
    R Function(Weekday tuesday)? tuesday,
    R Function(Weekday wednesday)? wednesday,
    R Function(Weekday thursday)? thursday,
    R Function(Weekday friday)? friday,
    R Function(Weekday saturday)? saturday,
    R Function(Weekday sunday)? sunday,
  }) {
    switch (this) {
      case Weekday.monday:
        return monday?.call(this) ?? orElse(this);
      case Weekday.tuesday:
        return tuesday?.call(this) ?? orElse(this);
      case Weekday.wednesday:
        return wednesday?.call(this) ?? orElse(this);
      case Weekday.thursday:
        return thursday?.call(this) ?? orElse(this);
      case Weekday.friday:
        return friday?.call(this) ?? orElse(this);
      case Weekday.saturday:
        return saturday?.call(this) ?? orElse(this);
      case Weekday.sunday:
        return sunday?.call(this) ?? orElse(this);
    }
  }

  R maybeWhen<R>({
    required R Function() orElse,
    R Function()? monday,
    R Function()? tuesday,
    R Function()? wednesday,
    R Function()? thursday,
    R Function()? friday,
    R Function()? saturday,
    R Function()? sunday,
  }) {
    switch (this) {
      case Weekday.monday:
        return monday?.call() ?? orElse();
      case Weekday.tuesday:
        return tuesday?.call() ?? orElse();
      case Weekday.wednesday:
        return wednesday?.call() ?? orElse();
      case Weekday.thursday:
        return thursday?.call() ?? orElse();
      case Weekday.friday:
        return friday?.call() ?? orElse();
      case Weekday.saturday:
        return saturday?.call() ?? orElse();
      case Weekday.sunday:
        return sunday?.call() ?? orElse();
    }
  }

  R when<R>({
    required R Function() monday,
    required R Function() tuesday,
    required R Function() wednesday,
    required R Function() thursday,
    required R Function() friday,
    required R Function() saturday,
    required R Function() sunday,
  }) {
    switch (this) {
      case Weekday.monday:
        return monday();
      case Weekday.tuesday:
        return tuesday();
      case Weekday.wednesday:
        return wednesday();
      case Weekday.thursday:
        return thursday();
      case Weekday.friday:
        return friday();
      case Weekday.saturday:
        return saturday();
      case Weekday.sunday:
        return sunday();
    }
  }

  R? whenOrNull<R>({
    R Function()? monday,
    R Function()? tuesday,
    R Function()? wednesday,
    R Function()? thursday,
    R Function()? friday,
    R Function()? saturday,
    R Function()? sunday,
    R Function()? orElse,
  }) {
    switch (this) {
      case Weekday.monday:
        return monday?.call() ?? orElse?.call();
      case Weekday.tuesday:
        return tuesday?.call() ?? orElse?.call();
      case Weekday.wednesday:
        return wednesday?.call() ?? orElse?.call();
      case Weekday.thursday:
        return thursday?.call() ?? orElse?.call();
      case Weekday.friday:
        return friday?.call() ?? orElse?.call();
      case Weekday.saturday:
        return saturday?.call() ?? orElse?.call();
      case Weekday.sunday:
        return sunday?.call() ?? orElse?.call();
    }
  }
}
