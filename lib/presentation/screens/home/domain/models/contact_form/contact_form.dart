import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_form.freezed.dart';
part 'contact_form.g.dart';

@freezed
sealed class ContactForm with _$ContactForm {
  factory ContactForm({
    required String name,
    required String email,
    required String message,
  }) = _ContactForm;

  factory ContactForm.fromJson(Map<String, dynamic> json) => _$ContactFormFromJson(json);
}
