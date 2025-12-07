extension StringExtensions on String {
  String capitalize() {
    return '${this[0].toUpperCase()}${substring(1).toLowerCase()}';
  }

  String extractNumerals() {
    return split('').where((char) => int.tryParse(char) != null).join('');
  }
}

extension NullableStringExtensions on String? {
  bool get isNotNullAndEmpty => this != null && this!.isNotEmpty;

  bool get isNullOrEmpty => !isNotNullAndEmpty;
}
