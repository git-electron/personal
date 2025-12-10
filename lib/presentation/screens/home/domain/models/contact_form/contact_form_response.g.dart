// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_form_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ContactFormResponse _$ContactFormResponseFromJson(Map<String, dynamic> json) =>
    _ContactFormResponse(
      isSuccess: json['success'] as bool,
      message: json['message'] as String,
    );

Map<String, dynamic> _$ContactFormResponseToJson(
        _ContactFormResponse instance) =>
    <String, dynamic>{
      'success': instance.isSuccess,
      'message': instance.message,
    };
