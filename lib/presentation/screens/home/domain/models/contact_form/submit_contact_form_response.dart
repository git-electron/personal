import 'package:freezed_annotation/freezed_annotation.dart';

part 'submit_contact_form_response.freezed.dart';
part 'submit_contact_form_response.g.dart';

@freezed
sealed class SubmitContactFormResponse with _$SubmitContactFormResponse {
  factory SubmitContactFormResponse({
    @JsonKey(name: 'success') required bool isSuccess,
    required String message,
  }) = _SubmitContactFormResponse;

  factory SubmitContactFormResponse.fromJson(Map<String, dynamic> json) => _$SubmitContactFormResponseFromJson(json);
}
