import '../../models/contact_form/contact_form.dart';

abstract class ContactFormLocalStorageService {
  void setContactFormData(ContactForm data);

  ContactForm? getContactFormData();

  bool get isSubmitted;
}
