// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

part of 'shape.dart';

extension $ShapeExtension on Shape {
  T maybeWhen<T>({
    required T Function() orElse,
    T Function()? star,
    T Function()? triangle,
    T Function()? ellipse,
    T Function()? rectangle,
    T Function()? moon,
  }) =>
      switch (this) {
        Star() => star?.call() ?? orElse(),
        Triangle() => triangle?.call() ?? orElse(),
        Ellipse() => ellipse?.call() ?? orElse(),
        Rectangle() => rectangle?.call() ?? orElse(),
        Moon() => moon?.call() ?? orElse(),
      };

  T when<T>({
    required T Function() star,
    required T Function() triangle,
    required T Function() ellipse,
    required T Function() rectangle,
    required T Function() moon,
  }) =>
      switch (this) {
        Star() => star(),
        Triangle() => triangle(),
        Ellipse() => ellipse(),
        Rectangle() => rectangle(),
        Moon() => moon(),
      };

  T whenConst<T>({
    required T star,
    required T triangle,
    required T ellipse,
    required T rectangle,
    required T moon,
  }) =>
      switch (this) {
        Star() => star,
        Triangle() => triangle,
        Ellipse() => ellipse,
        Rectangle() => rectangle,
        Moon() => moon,
      };

  T maybeWhenConst<T>({
    required T orElse,
    T? star,
    T? triangle,
    T? ellipse,
    T? rectangle,
    T? moon,
  }) =>
      switch (this) {
        Star() => star ?? orElse,
        Triangle() => triangle ?? orElse,
        Ellipse() => ellipse ?? orElse,
        Rectangle() => rectangle ?? orElse,
        Moon() => moon ?? orElse,
      };

  T? whenOrNull<T>({
    T Function()? star,
    T Function()? triangle,
    T Function()? ellipse,
    T Function()? rectangle,
    T Function()? moon,
  }) =>
      switch (this) {
        Star() => star?.call(),
        Triangle() => triangle?.call(),
        Ellipse() => ellipse?.call(),
        Rectangle() => rectangle?.call(),
        Moon() => moon?.call(),
      };

  T? whenConstOrNull<T>({
    T? star,
    T? triangle,
    T? ellipse,
    T? rectangle,
    T? moon,
  }) =>
      switch (this) {
        Star() => star,
        Triangle() => triangle,
        Ellipse() => ellipse,
        Rectangle() => rectangle,
        Moon() => moon,
      };
}
