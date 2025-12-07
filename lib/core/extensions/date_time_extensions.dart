import 'package:intl/intl.dart';

extension DateTimeExtensions on DateTime {
  String toDDmmYYYY({
    String separator = '.',
    bool withWords = false,
  }) {
    if (withWords && _word(this) != null) return _word(this)!;
    return '${_pad(day)}$separator${_pad(month)}$separator$year';
  }

  String toYYYYmmDD({
    String separator = '.',
    bool withWords = false,
  }) {
    if (withWords && _word(this) != null) return _word(this)!;
    return '$year$separator${_pad(month)}$separator${_pad(day)}';
  }

  String toDDmmYYYYwithMonths({
    bool withWords = false,
    bool isShort = true,
  }) {
    if (withWords && _word(this) != null) return _word(this)!;
    return '$day ${_textMonth(month, isShort: isShort)} $year';
  }

  String toHHmm({
    String separator = ':',
    bool shouldApplyPaddingToHours = false,
  }) {
    return '${shouldApplyPaddingToHours ? _pad(hour) : hour}$separator${_pad(minute)}';
  }

  String toHHmmSS({
    String separator = ':',
    bool shouldApplyPaddingToHours = false,
  }) {
    return '${shouldApplyPaddingToHours ? _pad(hour) : hour}$separator${_pad(minute)}$separator${_pad(second)}';
  }

  String toYmmmm() => DateFormat.MMMM('ru').format(this);

  String toAbbrWeekday() => DateFormat(DateFormat.ABBR_WEEKDAY, 'ru').format(this);

  String? _word(DateTime value) {
    final today = DateTime(_now.year, _now.month, _now.day);
    final yesterday = DateTime(_now.year, _now.month, _now.day - 1);
    final beforeYesterday = DateTime(_now.year, _now.month, _now.day - 2);
    final tomorrow = DateTime(_now.year, _now.month, _now.day + 1);
    final afterTomorrow = DateTime(_now.year, _now.month, _now.day + 2);

    final dateWithoutTime = DateTime(value.year, value.month, value.day);

    if (dateWithoutTime == today) return 'Сегодня';
    if (dateWithoutTime == yesterday) return 'Вчера';
    if (dateWithoutTime == beforeYesterday) return 'Позавчера';
    if (dateWithoutTime == tomorrow) return 'Завтра';
    if (dateWithoutTime == afterTomorrow) return 'Послезавтра';

    return null;
  }

  String _pad(int value) => value.toString().padLeft(2, '0');

  String _textMonth(int month, {bool isShort = true}) {
    final String textMonth = [
      'января',
      'февраля',
      'марта',
      'апреля',
      'мая',
      'июня',
      'июля',
      'августа',
      'сентября',
      'октября',
      'ноября',
      'декабря',
    ][month - 1];

    return isShort ? textMonth.substring(0, 3) : textMonth;
  }

  DateTime get _now => DateTime.now();

  bool isAfterOrAtSameMomentAs(DateTime other) {
    return isAfter(other) || isAtSameMomentAs(other);
  }

  bool isBeforeOrAtSameMomentAs(DateTime other) {
    return isBefore(other) || isAtSameMomentAs(other);
  }
}
