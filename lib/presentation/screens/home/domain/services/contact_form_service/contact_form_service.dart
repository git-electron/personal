import '../../models/contact_form/contact_form.dart';
import '../../models/contact_form/submit_contact_form_response.dart';

abstract class ContactFormService {
  Future<SubmitContactFormResponse> submitForm(ContactForm request);

  ContactForm? getSubmittedFormData();

  bool get isSubmitted;
}
