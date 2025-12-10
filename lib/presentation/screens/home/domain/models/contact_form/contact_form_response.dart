import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_form_response.freezed.dart';
part 'contact_form_response.g.dart';

@freezed
sealed class ContactFormResponse with _$ContactFormResponse {
  factory ContactFormResponse({
    @JsonKey(name: 'success') required bool isSuccess,
    required String message,
  }) = _ContactFormResponse;

  factory ContactFormResponse.fromJson(Map<String, dynamic> json) => _$ContactFormResponseFromJson(json);
}
