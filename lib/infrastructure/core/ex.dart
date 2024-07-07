extension DurationX on num {
  /// extenstion method to provide a duration
  /// pass it a `s,m,h` for seconds,minutes and hours
  /// pass any other sting for milliseconds
  Duration dur(String unit) {
    return switch (unit) {
      "S" => Duration(seconds: toInt()),
      "m" => Duration(minutes: toInt()),
      "h" => Duration(hours: toInt()),
      _ => Duration(milliseconds: toInt())
    };
  }
}
