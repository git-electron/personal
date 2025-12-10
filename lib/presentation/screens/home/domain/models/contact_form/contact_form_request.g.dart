// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_form_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ContactFormRequest _$ContactFormRequestFromJson(Map<String, dynamic> json) =>
    _ContactFormRequest(
      name: json['name'] as String,
      email: json['email'] as String,
      message: json['message'] as String,
    );

Map<String, dynamic> _$ContactFormRequestToJson(_ContactFormRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'message': instance.message,
    };
