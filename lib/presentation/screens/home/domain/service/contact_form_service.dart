import '../models/contact_form/contact_form_request.dart';
import '../models/contact_form/contact_form_response.dart';

abstract class ContactFormService {
  Future<ContactFormResponse> submitForm(ContactFormRequest request);
}
