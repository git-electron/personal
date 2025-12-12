part of 'contact_form_bloc.dart';

@freezed
sealed class ContactFormEvent with _$ContactFormEvent {
  const factory ContactFormEvent.submit({
    required String name,
    required String email,
    required String message,
  }) = _Submit;

  const factory ContactFormEvent.markAsSubmitted() = _MarkAsSubmitted;
}
