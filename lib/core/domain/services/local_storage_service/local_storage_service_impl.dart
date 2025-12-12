import 'dart:convert';
import 'dart:html' as html;

import 'package:injectable/injectable.dart';

import '../../../utils/types/types.dart';
import 'local_storage_service.dart';

@Injectable(as: LocalStorageService)
class LocalStorageServiceImpl implements LocalStorageService {
  @override
  void setValue({required String key, required Json value}) {
    html.window.localStorage[key] = jsonEncode(value);
  }

  @override
  Json? getValue(String key) {
    final raw = html.window.localStorage[key];
    if (raw == null) return null;
    return jsonDecode(raw);
  }
}
