// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_entities.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PostEntities _$PostEntitiesFromJson(Map<String, dynamic> json) {
  return _PostEntities.fromJson(json);
}

/// @nodoc
mixin _$PostEntities {
  String get userId => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;

  /// Serializes this PostEntities to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PostEntities
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostEntitiesCopyWith<PostEntities> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostEntitiesCopyWith<$Res> {
  factory $PostEntitiesCopyWith(
          PostEntities value, $Res Function(PostEntities) then) =
      _$PostEntitiesCopyWithImpl<$Res, PostEntities>;
  @useResult
  $Res call({String userId, String id, String title, String body});
}

/// @nodoc
class _$PostEntitiesCopyWithImpl<$Res, $Val extends PostEntities>
    implements $PostEntitiesCopyWith<$Res> {
  _$PostEntitiesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostEntities
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? id = null,
    Object? title = null,
    Object? body = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostEntitiesImplCopyWith<$Res>
    implements $PostEntitiesCopyWith<$Res> {
  factory _$$PostEntitiesImplCopyWith(
          _$PostEntitiesImpl value, $Res Function(_$PostEntitiesImpl) then) =
      __$$PostEntitiesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userId, String id, String title, String body});
}

/// @nodoc
class __$$PostEntitiesImplCopyWithImpl<$Res>
    extends _$PostEntitiesCopyWithImpl<$Res, _$PostEntitiesImpl>
    implements _$$PostEntitiesImplCopyWith<$Res> {
  __$$PostEntitiesImplCopyWithImpl(
      _$PostEntitiesImpl _value, $Res Function(_$PostEntitiesImpl) _then)
      : super(_value, _then);

  /// Create a copy of PostEntities
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? id = null,
    Object? title = null,
    Object? body = null,
  }) {
    return _then(_$PostEntitiesImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostEntitiesImpl implements _PostEntities {
  const _$PostEntitiesImpl(
      {this.userId = '', this.id = '', this.title = '', this.body = ''});

  factory _$PostEntitiesImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostEntitiesImplFromJson(json);

  @override
  @JsonKey()
  final String userId;
  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String body;

  @override
  String toString() {
    return 'PostEntities(userId: $userId, id: $id, title: $title, body: $body)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostEntitiesImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userId, id, title, body);

  /// Create a copy of PostEntities
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostEntitiesImplCopyWith<_$PostEntitiesImpl> get copyWith =>
      __$$PostEntitiesImplCopyWithImpl<_$PostEntitiesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostEntitiesImplToJson(
      this,
    );
  }
}

abstract class _PostEntities implements PostEntities {
  const factory _PostEntities(
      {final String userId,
      final String id,
      final String title,
      final String body}) = _$PostEntitiesImpl;

  factory _PostEntities.fromJson(Map<String, dynamic> json) =
      _$PostEntitiesImpl.fromJson;

  @override
  String get userId;
  @override
  String get id;
  @override
  String get title;
  @override
  String get body;

  /// Create a copy of PostEntities
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostEntitiesImplCopyWith<_$PostEntitiesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
