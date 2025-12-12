import 'package:injectable/injectable.dart';

import '../../../../../../core/domain/services/local_storage_service/local_storage_service.dart';
import '../../../../../../core/utils/types/types.dart';
import '../../models/contact_form/contact_form.dart';
import 'contact_form_local_storage_service.dart';

@Injectable(as: ContactFormLocalStorageService)
class ContactFormLocalStorageServiceImpl implements ContactFormLocalStorageService {
  ContactFormLocalStorageServiceImpl(this._localStorageService);

  final LocalStorageService _localStorageService;

  static const String _contactFormLocalStorageKey = 'contact_form';

  @override
  void setContactFormData(ContactForm data) =>
      _localStorageService.setValue(key: _contactFormLocalStorageKey, value: data.toJson());

  @override
  ContactForm? getContactFormData() {
    final Json? json = _localStorageService.getValue(_contactFormLocalStorageKey);
    if (json == null) return null;
    return ContactForm.fromJson(json);
  }

  @override
  bool get isSubmitted => getContactFormData() != null;
}
