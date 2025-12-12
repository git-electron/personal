import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/domain/services/local_storage_service.dart';
import '../models/contact_form/contact_form_request.dart';
import '../services/contact_form_service.dart';

part 'contact_form_bloc.freezed.dart';
part 'contact_form_event.dart';
part 'contact_form_state.dart';

@injectable
class ContactFormBloc extends Bloc<ContactFormEvent, ContactFormState> {
  ContactFormBloc(
    this._contactFormService,
    this._localStorageService,
  ) : super(const _Initial()) {
    on<_Submit>(_onSubmit);
    on<_MarkAsSubmitted>(_onMarkAsSubmitted);
  }

  final ContactFormService _contactFormService;
  final LocalStorageService _localStorageService;

  Future<void> _onSubmit(_Submit event, Emitter<ContactFormState> emit) async {
    emit(const ContactFormState.loading());
    
    final response = await _contactFormService.submitForm(
      ContactFormRequest(
        name: event.name,
        email: event.email,
        message: event.message,
      ),
    );

    if (response.isSuccess) {
      emit(const ContactFormState.submitted());
    } else {
      emit(ContactFormState.error(response.message));
    }
  }

  Future<void> _onMarkAsSubmitted(_MarkAsSubmitted event, Emitter<ContactFormState> emit) async =>
      emit(const ContactFormState.submitted());

  bool get isFormSubmitted => _localStorageService.getValue<bool>('form_submitted') ?? false;
}
