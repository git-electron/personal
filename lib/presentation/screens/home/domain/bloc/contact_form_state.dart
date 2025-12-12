part of 'contact_form_bloc.dart';

@freezed
sealed class ContactFormState with _$ContactFormState {
  const factory ContactFormState.initial() = _Initial;

  const factory ContactFormState.loading() = _Loading;

  const factory ContactFormState.submitted(ContactForm form) = _Submitted;

  const factory ContactFormState.error(String message) = _Error;

  const ContactFormState._();

  bool get isLoading => switch (this) {
        _Loading _ => true,
        _ => false,
      };

  ContactForm? get submittedForm => switch (this) {
        final _Submitted submitted => submitted.form,
        _ => null,
      };

  bool get isSubmitted => switch (this) {
        _Submitted _ => true,
        _ => false,
      };

  bool get hasError => switch (this) {
        _Error _ => true,
        _ => false,
      };

  String? get errorMessage => switch (this) {
        final _Error error => error.message,
        _ => null,
      };
}
