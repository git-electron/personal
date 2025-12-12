import 'package:injectable/injectable.dart';

import '../../../../../core/utils/types/types.dart';
import '../../data/contact_form_repository.dart';
import '../models/contact_form/contact_form_request.dart';
import '../models/contact_form/contact_form_response.dart';
import 'contact_form_service.dart';

@Injectable(as: ContactFormService)
class ContactFormServiceImpl implements ContactFormService {
  ContactFormServiceImpl(this._repository);

  final ContactFormRepository _repository;

  @override
  Future<ContactFormResponse> submitForm(ContactFormRequest request) async {
    try {
      final Json response = await _repository(request.toJson());
      return ContactFormResponse.fromJson(response);
    } catch (e) {
      return ContactFormResponse(isSuccess: false, message: e.toString());
    }
  }
}
