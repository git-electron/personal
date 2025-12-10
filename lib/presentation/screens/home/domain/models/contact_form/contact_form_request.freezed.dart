// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contact_form_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ContactFormRequest {
  String get name;
  String get email;
  String get message;

  /// Create a copy of ContactFormRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ContactFormRequestCopyWith<ContactFormRequest> get copyWith =>
      _$ContactFormRequestCopyWithImpl<ContactFormRequest>(
          this as ContactFormRequest, _$identity);

  /// Serializes this ContactFormRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ContactFormRequest &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, email, message);

  @override
  String toString() {
    return 'ContactFormRequest(name: $name, email: $email, message: $message)';
  }
}

/// @nodoc
abstract mixin class $ContactFormRequestCopyWith<$Res> {
  factory $ContactFormRequestCopyWith(
          ContactFormRequest value, $Res Function(ContactFormRequest) _then) =
      _$ContactFormRequestCopyWithImpl;
  @useResult
  $Res call({String name, String email, String message});
}

/// @nodoc
class _$ContactFormRequestCopyWithImpl<$Res>
    implements $ContactFormRequestCopyWith<$Res> {
  _$ContactFormRequestCopyWithImpl(this._self, this._then);

  final ContactFormRequest _self;
  final $Res Function(ContactFormRequest) _then;

  /// Create a copy of ContactFormRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? message = null,
  }) {
    return _then(_self.copyWith(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _ContactFormRequest implements ContactFormRequest {
  _ContactFormRequest(
      {required this.name, required this.email, required this.message});
  factory _ContactFormRequest.fromJson(Map<String, dynamic> json) =>
      _$ContactFormRequestFromJson(json);

  @override
  final String name;
  @override
  final String email;
  @override
  final String message;

  /// Create a copy of ContactFormRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ContactFormRequestCopyWith<_ContactFormRequest> get copyWith =>
      __$ContactFormRequestCopyWithImpl<_ContactFormRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ContactFormRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ContactFormRequest &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, email, message);

  @override
  String toString() {
    return 'ContactFormRequest(name: $name, email: $email, message: $message)';
  }
}

/// @nodoc
abstract mixin class _$ContactFormRequestCopyWith<$Res>
    implements $ContactFormRequestCopyWith<$Res> {
  factory _$ContactFormRequestCopyWith(
          _ContactFormRequest value, $Res Function(_ContactFormRequest) _then) =
      __$ContactFormRequestCopyWithImpl;
  @override
  @useResult
  $Res call({String name, String email, String message});
}

/// @nodoc
class __$ContactFormRequestCopyWithImpl<$Res>
    implements _$ContactFormRequestCopyWith<$Res> {
  __$ContactFormRequestCopyWithImpl(this._self, this._then);

  final _ContactFormRequest _self;
  final $Res Function(_ContactFormRequest) _then;

  /// Create a copy of ContactFormRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? message = null,
  }) {
    return _then(_ContactFormRequest(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
