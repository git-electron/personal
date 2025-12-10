import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

import '../../../../core/utils/types/types.dart';
import 'contact_form_repository.dart';

@Injectable(as: ContactFormRepository)
class ContactFormRepositoryImpl implements ContactFormRepository {
  static const String _urlString = 'https://api.web3forms.com/submit';
  static const String _accessKey = '80d3bdce-b273-40c1-bd5d-4ae3fda5a7b7';
  static const Map<String, String> _headers = {'Content-Type': 'application/json'};

  @override
  Future<Json> call(Json request) async {
    try {
      final Uri uri = Uri.parse(_urlString);
      final response = await http.post(
        uri,
        headers: _headers,
        body: jsonEncode({'access_key': _accessKey, ...request}),
      );
      return jsonDecode(response.body);
    } catch (e) {
      return {'success': false, 'message': e};
    }
  }
}
