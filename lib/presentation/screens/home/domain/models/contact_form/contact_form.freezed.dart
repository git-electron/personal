// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contact_form.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ContactForm {
  String get name;
  String get email;
  String get message;

  /// Create a copy of ContactForm
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ContactFormCopyWith<ContactForm> get copyWith =>
      _$ContactFormCopyWithImpl<ContactForm>(this as ContactForm, _$identity);

  /// Serializes this ContactForm to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ContactForm &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, email, message);

  @override
  String toString() {
    return 'ContactForm(name: $name, email: $email, message: $message)';
  }
}

/// @nodoc
abstract mixin class $ContactFormCopyWith<$Res> {
  factory $ContactFormCopyWith(
          ContactForm value, $Res Function(ContactForm) _then) =
      _$ContactFormCopyWithImpl;
  @useResult
  $Res call({String name, String email, String message});
}

/// @nodoc
class _$ContactFormCopyWithImpl<$Res> implements $ContactFormCopyWith<$Res> {
  _$ContactFormCopyWithImpl(this._self, this._then);

  final ContactForm _self;
  final $Res Function(ContactForm) _then;

  /// Create a copy of ContactForm
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
class _ContactForm implements ContactForm {
  _ContactForm(
      {required this.name, required this.email, required this.message});
  factory _ContactForm.fromJson(Map<String, dynamic> json) =>
      _$ContactFormFromJson(json);

  @override
  final String name;
  @override
  final String email;
  @override
  final String message;

  /// Create a copy of ContactForm
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ContactFormCopyWith<_ContactForm> get copyWith =>
      __$ContactFormCopyWithImpl<_ContactForm>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ContactFormToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ContactForm &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, email, message);

  @override
  String toString() {
    return 'ContactForm(name: $name, email: $email, message: $message)';
  }
}

/// @nodoc
abstract mixin class _$ContactFormCopyWith<$Res>
    implements $ContactFormCopyWith<$Res> {
  factory _$ContactFormCopyWith(
          _ContactForm value, $Res Function(_ContactForm) _then) =
      __$ContactFormCopyWithImpl;
  @override
  @useResult
  $Res call({String name, String email, String message});
}

/// @nodoc
class __$ContactFormCopyWithImpl<$Res> implements _$ContactFormCopyWith<$Res> {
  __$ContactFormCopyWithImpl(this._self, this._then);

  final _ContactForm _self;
  final $Res Function(_ContactForm) _then;

  /// Create a copy of ContactForm
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? message = null,
  }) {
    return _then(_ContactForm(
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
