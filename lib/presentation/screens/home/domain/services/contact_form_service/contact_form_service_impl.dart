import 'package:injectable/injectable.dart';

import '../../../../../../core/utils/types/types.dart';
import '../../../data/contact_form_repository.dart';
import '../../models/contact_form/contact_form.dart';
import '../../models/contact_form/submit_contact_form_response.dart';
import '../contact_form_local_storage_service/contact_form_local_storage_service.dart';
import 'contact_form_service.dart';

@Injectable(as: ContactFormService)
class ContactFormServiceImpl implements ContactFormService {
  ContactFormServiceImpl(
    this._repository,
    this._contactFormLocalStorageService,
  );

  final ContactFormRepository _repository;
  final ContactFormLocalStorageService _contactFormLocalStorageService;

  @override
  Future<SubmitContactFormResponse> submitForm(ContactForm form) async {
    try {
      final Json json = await _repository(form.toJson());
      final SubmitContactFormResponse response = SubmitContactFormResponse.fromJson(json);
      if (response.isSuccess) _contactFormLocalStorageService.setContactFormData(form);
      return response;
    } catch (e) {
      return SubmitContactFormResponse(isSuccess: false, message: e.toString());
    }
  }

  @override
  ContactForm? getSubmittedFormData() => _contactFormLocalStorageService.getContactFormData();

  @override
  bool get isSubmitted => getSubmittedFormData() != null;
}
