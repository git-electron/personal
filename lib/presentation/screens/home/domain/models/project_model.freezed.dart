// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Project {
  String get title;
  String get description;
  String get category;
  AssetGenImage get cover;
  List<String> get skills;
  String? get gitHubUrl;
  String? get appStoreUrl;
  String? get playMarketUrl;

  /// Create a copy of Project
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ProjectCopyWith<Project> get copyWith =>
      _$ProjectCopyWithImpl<Project>(this as Project, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Project &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.category, category) ||
                other.category == category) &&
            const DeepCollectionEquality().equals(other.cover, cover) &&
            const DeepCollectionEquality().equals(other.skills, skills) &&
            (identical(other.gitHubUrl, gitHubUrl) ||
                other.gitHubUrl == gitHubUrl) &&
            (identical(other.appStoreUrl, appStoreUrl) ||
                other.appStoreUrl == appStoreUrl) &&
            (identical(other.playMarketUrl, playMarketUrl) ||
                other.playMarketUrl == playMarketUrl));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      description,
      category,
      const DeepCollectionEquality().hash(cover),
      const DeepCollectionEquality().hash(skills),
      gitHubUrl,
      appStoreUrl,
      playMarketUrl);

  @override
  String toString() {
    return 'Project(title: $title, description: $description, category: $category, cover: $cover, skills: $skills, gitHubUrl: $gitHubUrl, appStoreUrl: $appStoreUrl, playMarketUrl: $playMarketUrl)';
  }
}

/// @nodoc
abstract mixin class $ProjectCopyWith<$Res> {
  factory $ProjectCopyWith(Project value, $Res Function(Project) _then) =
      _$ProjectCopyWithImpl;
  @useResult
  $Res call(
      {String title,
      String description,
      String category,
      AssetGenImage cover,
      List<String> skills,
      String? gitHubUrl,
      String? appStoreUrl,
      String? playMarketUrl});
}

/// @nodoc
class _$ProjectCopyWithImpl<$Res> implements $ProjectCopyWith<$Res> {
  _$ProjectCopyWithImpl(this._self, this._then);

  final Project _self;
  final $Res Function(Project) _then;

  /// Create a copy of Project
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? category = null,
    Object? cover = freezed,
    Object? skills = null,
    Object? gitHubUrl = freezed,
    Object? appStoreUrl = freezed,
    Object? playMarketUrl = freezed,
  }) {
    return _then(_self.copyWith(
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _self.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      cover: freezed == cover
          ? _self.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as AssetGenImage,
      skills: null == skills
          ? _self.skills
          : skills // ignore: cast_nullable_to_non_nullable
              as List<String>,
      gitHubUrl: freezed == gitHubUrl
          ? _self.gitHubUrl
          : gitHubUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      appStoreUrl: freezed == appStoreUrl
          ? _self.appStoreUrl
          : appStoreUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      playMarketUrl: freezed == playMarketUrl
          ? _self.playMarketUrl
          : playMarketUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _Project extends Project {
  _Project(
      {required this.title,
      required this.description,
      required this.category,
      required this.cover,
      required final List<String> skills,
      this.gitHubUrl,
      this.appStoreUrl,
      this.playMarketUrl})
      : _skills = skills,
        super._();

  @override
  final String title;
  @override
  final String description;
  @override
  final String category;
  @override
  final AssetGenImage cover;
  final List<String> _skills;
  @override
  List<String> get skills {
    if (_skills is EqualUnmodifiableListView) return _skills;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_skills);
  }

  @override
  final String? gitHubUrl;
  @override
  final String? appStoreUrl;
  @override
  final String? playMarketUrl;

  /// Create a copy of Project
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ProjectCopyWith<_Project> get copyWith =>
      __$ProjectCopyWithImpl<_Project>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Project &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.category, category) ||
                other.category == category) &&
            const DeepCollectionEquality().equals(other.cover, cover) &&
            const DeepCollectionEquality().equals(other._skills, _skills) &&
            (identical(other.gitHubUrl, gitHubUrl) ||
                other.gitHubUrl == gitHubUrl) &&
            (identical(other.appStoreUrl, appStoreUrl) ||
                other.appStoreUrl == appStoreUrl) &&
            (identical(other.playMarketUrl, playMarketUrl) ||
                other.playMarketUrl == playMarketUrl));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      description,
      category,
      const DeepCollectionEquality().hash(cover),
      const DeepCollectionEquality().hash(_skills),
      gitHubUrl,
      appStoreUrl,
      playMarketUrl);

  @override
  String toString() {
    return 'Project(title: $title, description: $description, category: $category, cover: $cover, skills: $skills, gitHubUrl: $gitHubUrl, appStoreUrl: $appStoreUrl, playMarketUrl: $playMarketUrl)';
  }
}

/// @nodoc
abstract mixin class _$ProjectCopyWith<$Res> implements $ProjectCopyWith<$Res> {
  factory _$ProjectCopyWith(_Project value, $Res Function(_Project) _then) =
      __$ProjectCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String title,
      String description,
      String category,
      AssetGenImage cover,
      List<String> skills,
      String? gitHubUrl,
      String? appStoreUrl,
      String? playMarketUrl});
}

/// @nodoc
class __$ProjectCopyWithImpl<$Res> implements _$ProjectCopyWith<$Res> {
  __$ProjectCopyWithImpl(this._self, this._then);

  final _Project _self;
  final $Res Function(_Project) _then;

  /// Create a copy of Project
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? category = null,
    Object? cover = freezed,
    Object? skills = null,
    Object? gitHubUrl = freezed,
    Object? appStoreUrl = freezed,
    Object? playMarketUrl = freezed,
  }) {
    return _then(_Project(
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _self.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      cover: freezed == cover
          ? _self.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as AssetGenImage,
      skills: null == skills
          ? _self._skills
          : skills // ignore: cast_nullable_to_non_nullable
              as List<String>,
      gitHubUrl: freezed == gitHubUrl
          ? _self.gitHubUrl
          : gitHubUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      appStoreUrl: freezed == appStoreUrl
          ? _self.appStoreUrl
          : appStoreUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      playMarketUrl: freezed == playMarketUrl
          ? _self.playMarketUrl
          : playMarketUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
