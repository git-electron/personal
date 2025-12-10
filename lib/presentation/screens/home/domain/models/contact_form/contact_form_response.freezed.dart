// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contact_form_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ContactFormResponse {
  @JsonKey(name: 'success')
  bool get isSuccess;
  String get message;

  /// Create a copy of ContactFormResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ContactFormResponseCopyWith<ContactFormResponse> get copyWith =>
      _$ContactFormResponseCopyWithImpl<ContactFormResponse>(
          this as ContactFormResponse, _$identity);

  /// Serializes this ContactFormResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ContactFormResponse &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, isSuccess, message);

  @override
  String toString() {
    return 'ContactFormResponse(isSuccess: $isSuccess, message: $message)';
  }
}

/// @nodoc
abstract mixin class $ContactFormResponseCopyWith<$Res> {
  factory $ContactFormResponseCopyWith(
          ContactFormResponse value, $Res Function(ContactFormResponse) _then) =
      _$ContactFormResponseCopyWithImpl;
  @useResult
  $Res call({@JsonKey(name: 'success') bool isSuccess, String message});
}

/// @nodoc
class _$ContactFormResponseCopyWithImpl<$Res>
    implements $ContactFormResponseCopyWith<$Res> {
  _$ContactFormResponseCopyWithImpl(this._self, this._then);

  final ContactFormResponse _self;
  final $Res Function(ContactFormResponse) _then;

  /// Create a copy of ContactFormResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSuccess = null,
    Object? message = null,
  }) {
    return _then(_self.copyWith(
      isSuccess: null == isSuccess
          ? _self.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _ContactFormResponse implements ContactFormResponse {
  _ContactFormResponse(
      {@JsonKey(name: 'success') required this.isSuccess,
      required this.message});
  factory _ContactFormResponse.fromJson(Map<String, dynamic> json) =>
      _$ContactFormResponseFromJson(json);

  @override
  @JsonKey(name: 'success')
  final bool isSuccess;
  @override
  final String message;

  /// Create a copy of ContactFormResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ContactFormResponseCopyWith<_ContactFormResponse> get copyWith =>
      __$ContactFormResponseCopyWithImpl<_ContactFormResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ContactFormResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ContactFormResponse &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, isSuccess, message);

  @override
  String toString() {
    return 'ContactFormResponse(isSuccess: $isSuccess, message: $message)';
  }
}

/// @nodoc
abstract mixin class _$ContactFormResponseCopyWith<$Res>
    implements $ContactFormResponseCopyWith<$Res> {
  factory _$ContactFormResponseCopyWith(_ContactFormResponse value,
          $Res Function(_ContactFormResponse) _then) =
      __$ContactFormResponseCopyWithImpl;
  @override
  @useResult
  $Res call({@JsonKey(name: 'success') bool isSuccess, String message});
}

/// @nodoc
class __$ContactFormResponseCopyWithImpl<$Res>
    implements _$ContactFormResponseCopyWith<$Res> {
  __$ContactFormResponseCopyWithImpl(this._self, this._then);

  final _ContactFormResponse _self;
  final $Res Function(_ContactFormResponse) _then;

  /// Create a copy of ContactFormResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isSuccess = null,
    Object? message = null,
  }) {
    return _then(_ContactFormResponse(
      isSuccess: null == isSuccess
          ? _self.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
