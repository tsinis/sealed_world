extension ListDoubleExtension on List<double>? {
  ({double latitude, double longitude})? get latitudeLongitude {
    final list = this;

    return list == null ? null : (latitude: list.first, longitude: list.last);
  }
}
