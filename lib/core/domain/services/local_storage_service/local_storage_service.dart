import '../../../utils/types/types.dart';

abstract class LocalStorageService<T> {
  void setValue({required String key, required Json value});

  Json? getValue(String key);
}
