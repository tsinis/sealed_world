class CapitalInfo {
  const CapitalInfo({required this.capital, this.latLng});

  final List<String> capital;
  final List<double>? latLng;

  @override
  String toString() => "CapitalInfo(capital: $capital, latLng: $latLng)";
}
