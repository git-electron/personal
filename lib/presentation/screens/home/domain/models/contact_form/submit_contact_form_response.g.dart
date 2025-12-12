// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'submit_contact_form_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SubmitContactFormResponse _$SubmitContactFormResponseFromJson(
        Map<String, dynamic> json) =>
    _SubmitContactFormResponse(
      isSuccess: json['success'] as bool,
      message: json['message'] as String,
    );

Map<String, dynamic> _$SubmitContactFormResponseToJson(
        _SubmitContactFormResponse instance) =>
    <String, dynamic>{
      'success': instance.isSuccess,
      'message': instance.message,
    };
