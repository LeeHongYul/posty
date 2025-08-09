// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_list_entities.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PostListEntities _$PostListEntitiesFromJson(Map<String, dynamic> json) {
  return _PostListEntities.fromJson(json);
}

/// @nodoc
mixin _$PostListEntities {
  List<PostEntities> get postList => throw _privateConstructorUsedError;

  /// Serializes this PostListEntities to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PostListEntities
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostListEntitiesCopyWith<PostListEntities> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostListEntitiesCopyWith<$Res> {
  factory $PostListEntitiesCopyWith(
          PostListEntities value, $Res Function(PostListEntities) then) =
      _$PostListEntitiesCopyWithImpl<$Res, PostListEntities>;
  @useResult
  $Res call({List<PostEntities> postList});
}

/// @nodoc
class _$PostListEntitiesCopyWithImpl<$Res, $Val extends PostListEntities>
    implements $PostListEntitiesCopyWith<$Res> {
  _$PostListEntitiesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostListEntities
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postList = null,
  }) {
    return _then(_value.copyWith(
      postList: null == postList
          ? _value.postList
          : postList // ignore: cast_nullable_to_non_nullable
              as List<PostEntities>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostListEntitiesImplCopyWith<$Res>
    implements $PostListEntitiesCopyWith<$Res> {
  factory _$$PostListEntitiesImplCopyWith(_$PostListEntitiesImpl value,
          $Res Function(_$PostListEntitiesImpl) then) =
      __$$PostListEntitiesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<PostEntities> postList});
}

/// @nodoc
class __$$PostListEntitiesImplCopyWithImpl<$Res>
    extends _$PostListEntitiesCopyWithImpl<$Res, _$PostListEntitiesImpl>
    implements _$$PostListEntitiesImplCopyWith<$Res> {
  __$$PostListEntitiesImplCopyWithImpl(_$PostListEntitiesImpl _value,
      $Res Function(_$PostListEntitiesImpl) _then)
      : super(_value, _then);

  /// Create a copy of PostListEntities
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postList = null,
  }) {
    return _then(_$PostListEntitiesImpl(
      postList: null == postList
          ? _value._postList
          : postList // ignore: cast_nullable_to_non_nullable
              as List<PostEntities>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostListEntitiesImpl implements _PostListEntities {
  const _$PostListEntitiesImpl(
      {final List<PostEntities> postList = const <PostEntities>[]})
      : _postList = postList;

  factory _$PostListEntitiesImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostListEntitiesImplFromJson(json);

  final List<PostEntities> _postList;
  @override
  @JsonKey()
  List<PostEntities> get postList {
    if (_postList is EqualUnmodifiableListView) return _postList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_postList);
  }

  @override
  String toString() {
    return 'PostListEntities(postList: $postList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostListEntitiesImpl &&
            const DeepCollectionEquality().equals(other._postList, _postList));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_postList));

  /// Create a copy of PostListEntities
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostListEntitiesImplCopyWith<_$PostListEntitiesImpl> get copyWith =>
      __$$PostListEntitiesImplCopyWithImpl<_$PostListEntitiesImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostListEntitiesImplToJson(
      this,
    );
  }
}

abstract class _PostListEntities implements PostListEntities {
  const factory _PostListEntities({final List<PostEntities> postList}) =
      _$PostListEntitiesImpl;

  factory _PostListEntities.fromJson(Map<String, dynamic> json) =
      _$PostListEntitiesImpl.fromJson;

  @override
  List<PostEntities> get postList;

  /// Create a copy of PostListEntities
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostListEntitiesImplCopyWith<_$PostListEntitiesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
