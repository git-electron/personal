// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contact_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ContactFormEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ContactFormEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ContactFormEvent()';
  }
}

/// @nodoc
class $ContactFormEventCopyWith<$Res> {
  $ContactFormEventCopyWith(
      ContactFormEvent _, $Res Function(ContactFormEvent) __);
}

/// @nodoc

class _Submit implements ContactFormEvent {
  const _Submit(
      {required this.name, required this.email, required this.message});

  final String name;
  final String email;
  final String message;

  /// Create a copy of ContactFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SubmitCopyWith<_Submit> get copyWith =>
      __$SubmitCopyWithImpl<_Submit>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Submit &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, email, message);

  @override
  String toString() {
    return 'ContactFormEvent.submit(name: $name, email: $email, message: $message)';
  }
}

/// @nodoc
abstract mixin class _$SubmitCopyWith<$Res>
    implements $ContactFormEventCopyWith<$Res> {
  factory _$SubmitCopyWith(_Submit value, $Res Function(_Submit) _then) =
      __$SubmitCopyWithImpl;
  @useResult
  $Res call({String name, String email, String message});
}

/// @nodoc
class __$SubmitCopyWithImpl<$Res> implements _$SubmitCopyWith<$Res> {
  __$SubmitCopyWithImpl(this._self, this._then);

  final _Submit _self;
  final $Res Function(_Submit) _then;

  /// Create a copy of ContactFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? message = null,
  }) {
    return _then(_Submit(
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

class _CheckSubmission implements ContactFormEvent {
  const _CheckSubmission();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _CheckSubmission);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ContactFormEvent.checkSubmission()';
  }
}

/// @nodoc
mixin _$ContactFormState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ContactFormState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ContactFormState()';
  }
}

/// @nodoc
class $ContactFormStateCopyWith<$Res> {
  $ContactFormStateCopyWith(
      ContactFormState _, $Res Function(ContactFormState) __);
}

/// @nodoc

class _Initial extends ContactFormState {
  const _Initial() : super._();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ContactFormState.initial()';
  }
}

/// @nodoc

class _Loading extends ContactFormState {
  const _Loading() : super._();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ContactFormState.loading()';
  }
}

/// @nodoc

class _Submitted extends ContactFormState {
  const _Submitted(this.form) : super._();

  final ContactForm form;

  /// Create a copy of ContactFormState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SubmittedCopyWith<_Submitted> get copyWith =>
      __$SubmittedCopyWithImpl<_Submitted>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Submitted &&
            (identical(other.form, form) || other.form == form));
  }

  @override
  int get hashCode => Object.hash(runtimeType, form);

  @override
  String toString() {
    return 'ContactFormState.submitted(form: $form)';
  }
}

/// @nodoc
abstract mixin class _$SubmittedCopyWith<$Res>
    implements $ContactFormStateCopyWith<$Res> {
  factory _$SubmittedCopyWith(
          _Submitted value, $Res Function(_Submitted) _then) =
      __$SubmittedCopyWithImpl;
  @useResult
  $Res call({ContactForm form});

  $ContactFormCopyWith<$Res> get form;
}

/// @nodoc
class __$SubmittedCopyWithImpl<$Res> implements _$SubmittedCopyWith<$Res> {
  __$SubmittedCopyWithImpl(this._self, this._then);

  final _Submitted _self;
  final $Res Function(_Submitted) _then;

  /// Create a copy of ContactFormState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? form = null,
  }) {
    return _then(_Submitted(
      null == form
          ? _self.form
          : form // ignore: cast_nullable_to_non_nullable
              as ContactForm,
    ));
  }

  /// Create a copy of ContactFormState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ContactFormCopyWith<$Res> get form {
    return $ContactFormCopyWith<$Res>(_self.form, (value) {
      return _then(_self.copyWith(form: value));
    });
  }
}

/// @nodoc

class _Error extends ContactFormState {
  const _Error(this.message) : super._();

  final String message;

  /// Create a copy of ContactFormState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ErrorCopyWith<_Error> get copyWith =>
      __$ErrorCopyWithImpl<_Error>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Error &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'ContactFormState.error(message: $message)';
  }
}

/// @nodoc
abstract mixin class _$ErrorCopyWith<$Res>
    implements $ContactFormStateCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) _then) =
      __$ErrorCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(this._self, this._then);

  final _Error _self;
  final $Res Function(_Error) _then;

  /// Create a copy of ContactFormState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(_Error(
      null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$ContactFormSideEffect {
  ToastType get type;

  /// Create a copy of ContactFormSideEffect
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ContactFormSideEffectCopyWith<ContactFormSideEffect> get copyWith =>
      _$ContactFormSideEffectCopyWithImpl<ContactFormSideEffect>(
          this as ContactFormSideEffect, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ContactFormSideEffect &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type);

  @override
  String toString() {
    return 'ContactFormSideEffect(type: $type)';
  }
}

/// @nodoc
abstract mixin class $ContactFormSideEffectCopyWith<$Res> {
  factory $ContactFormSideEffectCopyWith(ContactFormSideEffect value,
          $Res Function(ContactFormSideEffect) _then) =
      _$ContactFormSideEffectCopyWithImpl;
  @useResult
  $Res call({ToastType type});
}

/// @nodoc
class _$ContactFormSideEffectCopyWithImpl<$Res>
    implements $ContactFormSideEffectCopyWith<$Res> {
  _$ContactFormSideEffectCopyWithImpl(this._self, this._then);

  final ContactFormSideEffect _self;
  final $Res Function(ContactFormSideEffect) _then;

  /// Create a copy of ContactFormSideEffect
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_self.copyWith(
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as ToastType,
    ));
  }
}

/// @nodoc

class _ShowToast extends ContactFormSideEffect {
  const _ShowToast({required this.type}) : super._();

  @override
  final ToastType type;

  /// Create a copy of ContactFormSideEffect
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ShowToastCopyWith<_ShowToast> get copyWith =>
      __$ShowToastCopyWithImpl<_ShowToast>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ShowToast &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type);

  @override
  String toString() {
    return 'ContactFormSideEffect.showToast(type: $type)';
  }
}

/// @nodoc
abstract mixin class _$ShowToastCopyWith<$Res>
    implements $ContactFormSideEffectCopyWith<$Res> {
  factory _$ShowToastCopyWith(
          _ShowToast value, $Res Function(_ShowToast) _then) =
      __$ShowToastCopyWithImpl;
  @override
  @useResult
  $Res call({ToastType type});
}

/// @nodoc
class __$ShowToastCopyWithImpl<$Res> implements _$ShowToastCopyWith<$Res> {
  __$ShowToastCopyWithImpl(this._self, this._then);

  final _ShowToast _self;
  final $Res Function(_ShowToast) _then;

  /// Create a copy of ContactFormSideEffect
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = null,
  }) {
    return _then(_ShowToast(
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as ToastType,
    ));
  }
}

// dart format on
