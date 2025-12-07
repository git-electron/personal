extension DurationExtensions on Duration {
  String toMMss({bool shoudApplyPaddingToMinutes = false}) {
    int minutes = inMinutes.remainder(60).abs();
    int seconds = inSeconds.remainder(60).abs();

    return '${shoudApplyPaddingToMinutes ? _pad(minutes) : minutes}:${_pad(seconds)}';
  }

  String toHHmmSS({bool shoudApplyPaddingToHours = false}) {
    int hours = inHours.remainder(24).abs();
    int minutes = inMinutes.remainder(60).abs();
    int seconds = inSeconds.remainder(60).abs();

    return '${shoudApplyPaddingToHours ? _pad(hours) : hours}:${_pad(minutes)}:${_pad(seconds)}';
  }

  String toHHplural({bool withMinutes = true, bool isCompact = false}) {
    int hours = inHours.remainder(24).abs();
    int minutes = inMinutes.remainder(60).abs();

    if (isCompact) return '$hoursч${withMinutes ? ' $minutesм' : ''}';
    return '$hours ${_hoursPlural(hours)}${withMinutes ? ' $minutes ${_minutesPlural(minutes)}' : ''}';
  }

  String _pad(int value) => value.toString().padLeft(2, '0');

  String _hoursPlural(int hours) {
    return switch (_module(hours)) {
      1 => _endsWith(hours, 11) ? 'часов' : 'час',
      2 => _endsWith(hours, 12) ? 'часов' : 'часа',
      3 => _endsWith(hours, 13) ? 'часов' : 'часа',
      4 => _endsWith(hours, 14) ? 'часов' : 'часа',
      _ => 'часов',
    };
  }

  String _minutesPlural(int minutes) {
    return switch (_module(minutes)) {
      1 => _endsWith(minutes, 11) ? 'минут' : 'минута',
      2 => _endsWith(minutes, 12) ? 'минут' : 'минуты',
      3 => _endsWith(minutes, 13) ? 'минут' : 'минуты',
      4 => _endsWith(minutes, 14) ? 'минут' : 'минуты',
      _ => 'минуь',
    };
  }

  int _module(int number) => number % 10;

  bool _endsWith(int number, int ending) =>
      number.toString().endsWith(ending.toString());
}