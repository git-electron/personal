// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'submit_contact_form_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SubmitContactFormResponse {
  @JsonKey(name: 'success')
  bool get isSuccess;
  String get message;

  /// Create a copy of SubmitContactFormResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SubmitContactFormResponseCopyWith<SubmitContactFormResponse> get copyWith =>
      _$SubmitContactFormResponseCopyWithImpl<SubmitContactFormResponse>(
          this as SubmitContactFormResponse, _$identity);

  /// Serializes this SubmitContactFormResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SubmitContactFormResponse &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, isSuccess, message);

  @override
  String toString() {
    return 'SubmitContactFormResponse(isSuccess: $isSuccess, message: $message)';
  }
}

/// @nodoc
abstract mixin class $SubmitContactFormResponseCopyWith<$Res> {
  factory $SubmitContactFormResponseCopyWith(SubmitContactFormResponse value,
          $Res Function(SubmitContactFormResponse) _then) =
      _$SubmitContactFormResponseCopyWithImpl;
  @useResult
  $Res call({@JsonKey(name: 'success') bool isSuccess, String message});
}

/// @nodoc
class _$SubmitContactFormResponseCopyWithImpl<$Res>
    implements $SubmitContactFormResponseCopyWith<$Res> {
  _$SubmitContactFormResponseCopyWithImpl(this._self, this._then);

  final SubmitContactFormResponse _self;
  final $Res Function(SubmitContactFormResponse) _then;

  /// Create a copy of SubmitContactFormResponse
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
class _SubmitContactFormResponse implements SubmitContactFormResponse {
  _SubmitContactFormResponse(
      {@JsonKey(name: 'success') required this.isSuccess,
      required this.message});
  factory _SubmitContactFormResponse.fromJson(Map<String, dynamic> json) =>
      _$SubmitContactFormResponseFromJson(json);

  @override
  @JsonKey(name: 'success')
  final bool isSuccess;
  @override
  final String message;

  /// Create a copy of SubmitContactFormResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SubmitContactFormResponseCopyWith<_SubmitContactFormResponse>
      get copyWith =>
          __$SubmitContactFormResponseCopyWithImpl<_SubmitContactFormResponse>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SubmitContactFormResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SubmitContactFormResponse &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, isSuccess, message);

  @override
  String toString() {
    return 'SubmitContactFormResponse(isSuccess: $isSuccess, message: $message)';
  }
}

/// @nodoc
abstract mixin class _$SubmitContactFormResponseCopyWith<$Res>
    implements $SubmitContactFormResponseCopyWith<$Res> {
  factory _$SubmitContactFormResponseCopyWith(_SubmitContactFormResponse value,
          $Res Function(_SubmitContactFormResponse) _then) =
      __$SubmitContactFormResponseCopyWithImpl;
  @override
  @useResult
  $Res call({@JsonKey(name: 'success') bool isSuccess, String message});
}

/// @nodoc
class __$SubmitContactFormResponseCopyWithImpl<$Res>
    implements _$SubmitContactFormResponseCopyWith<$Res> {
  __$SubmitContactFormResponseCopyWithImpl(this._self, this._then);

  final _SubmitContactFormResponse _self;
  final $Res Function(_SubmitContactFormResponse) _then;

  /// Create a copy of SubmitContactFormResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isSuccess = null,
    Object? message = null,
  }) {
    return _then(_SubmitContactFormResponse(
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
