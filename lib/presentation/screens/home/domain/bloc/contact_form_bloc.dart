import 'package:flutter_bloc_side_effect/flutter_bloc_side_effect.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../models/contact_form/contact_form.dart';
import '../models/contact_form/submit_contact_form_response.dart';
import '../services/contact_form_service/contact_form_service.dart';

part 'contact_form_bloc.freezed.dart';
part 'contact_form_event.dart';
part 'contact_form_state.dart';
part 'contact_form_side_effect.dart';

@injectable
class ContactFormBloc extends Bloc<ContactFormEvent, ContactFormState>
    with BlocSideEffectMixin<ContactFormEvent, ContactFormState, ContactFormSideEffect> {
  ContactFormBloc(this._contactFormService) : super(const _Initial()) {
    on<_Submit>(_onSubmit);
    on<_CheckSubmission>(_onCheckSubmission);

    add(const ContactFormEvent.checkSubmission());
  }

  final ContactFormService _contactFormService;

  Future<void> _onSubmit(_Submit event, Emitter<ContactFormState> emit) async {
    emit(const ContactFormState.loading());

    final ContactForm form = ContactForm(name: event.name, email: event.email, message: event.message);
    final SubmitContactFormResponse response = await _contactFormService.submitForm(form);

    if (response.isSuccess) {
      emit(ContactFormState.submitted(form));
      emitSideEffect(const ContactFormSideEffect.showToast(type: ToastType.success));
    } else {
      emit(ContactFormState.error(response.message));
      emitSideEffect(const ContactFormSideEffect.showToast(type: ToastType.error));
    }
  }

  Future<void> _onCheckSubmission(_CheckSubmission event, Emitter<ContactFormState> emit) async {
    if (!_contactFormService.isSubmitted) return;
    final ContactForm? form = _contactFormService.getSubmittedFormData();
    if (form == null) return;
    emit(ContactFormState.submitted(form));
  }
}
