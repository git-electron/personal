extension ListExtensions<T> on List<T> {
  List<T> alternateWith(T alternator) {
    final List<T> alternated = List.empty(growable: true);
    for (int index = 0; index < length; index++) {
      alternated.add(this[index]);
      if (index < length - 1) alternated.add(alternator);
    }
    return alternated;
  }

  List<T> wrapWith(T wrapper) {
    final List<T> wrapped = [wrapper, ...this, wrapper];
    return wrapped;
  }
}

extension NullableListExtensions<T> on List<T>? {
  bool get isNotNullAndEmpty => this != null && this!.isNotEmpty;

  bool get isNullOrEmpty => !isNotNullAndEmpty;
}
