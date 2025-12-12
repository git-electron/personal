import 'dart:convert';
import 'dart:html' as html;

import 'package:injectable/injectable.dart';

@injectable
class LocalStorageService {
  void setValue<T>({required String key, required T value}) {
    html.window.localStorage[key] = jsonEncode(value);
  }

  T? getValue<T>(String key) {
    final raw = html.window.localStorage[key];
    if (raw == null) return null;
    return jsonDecode(raw);
  }
}
