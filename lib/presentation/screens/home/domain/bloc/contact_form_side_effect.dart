part of 'contact_form_bloc.dart';

@freezed
sealed class ContactFormSideEffect with _$ContactFormSideEffect {
  const factory ContactFormSideEffect.showToast({required ToastType type}) = _ShowToast;

  const ContactFormSideEffect._();

  bool get isSuccess => type == ToastType.success;
  bool get isError => type == ToastType.error;
}

enum ToastType { success, error }
