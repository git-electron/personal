import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_form_request.freezed.dart';
part 'contact_form_request.g.dart';

@freezed
sealed class ContactFormRequest with _$ContactFormRequest {

  factory ContactFormRequest({
    required String name,
    required String email,
    required String message,
  }) = _ContactFormRequest;

  factory ContactFormRequest.fromJson(Map<String, dynamic> json) => _$ContactFormRequestFromJson(json);
}
