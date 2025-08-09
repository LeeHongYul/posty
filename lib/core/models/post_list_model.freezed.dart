// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PostListModel _$PostListModelFromJson(Map<String, dynamic> json) {
  return _PostListModel.fromJson(json);
}

/// @nodoc
mixin _$PostListModel {
  List<PostModel> get postList => throw _privateConstructorUsedError;

  /// Serializes this PostListModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PostListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostListModelCopyWith<PostListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostListModelCopyWith<$Res> {
  factory $PostListModelCopyWith(
          PostListModel value, $Res Function(PostListModel) then) =
      _$PostListModelCopyWithImpl<$Res, PostListModel>;
  @useResult
  $Res call({List<PostModel> postList});
}

/// @nodoc
class _$PostListModelCopyWithImpl<$Res, $Val extends PostListModel>
    implements $PostListModelCopyWith<$Res> {
  _$PostListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostListModel
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
              as List<PostModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostListModelImplCopyWith<$Res>
    implements $PostListModelCopyWith<$Res> {
  factory _$$PostListModelImplCopyWith(
          _$PostListModelImpl value, $Res Function(_$PostListModelImpl) then) =
      __$$PostListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<PostModel> postList});
}

/// @nodoc
class __$$PostListModelImplCopyWithImpl<$Res>
    extends _$PostListModelCopyWithImpl<$Res, _$PostListModelImpl>
    implements _$$PostListModelImplCopyWith<$Res> {
  __$$PostListModelImplCopyWithImpl(
      _$PostListModelImpl _value, $Res Function(_$PostListModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PostListModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postList = null,
  }) {
    return _then(_$PostListModelImpl(
      postList: null == postList
          ? _value._postList
          : postList // ignore: cast_nullable_to_non_nullable
              as List<PostModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostListModelImpl implements _PostListModel {
  const _$PostListModelImpl(
      {final List<PostModel> postList = const <PostModel>[]})
      : _postList = postList;

  factory _$PostListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostListModelImplFromJson(json);

  final List<PostModel> _postList;
  @override
  @JsonKey()
  List<PostModel> get postList {
    if (_postList is EqualUnmodifiableListView) return _postList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_postList);
  }

  @override
  String toString() {
    return 'PostListModel(postList: $postList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostListModelImpl &&
            const DeepCollectionEquality().equals(other._postList, _postList));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_postList));

  /// Create a copy of PostListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostListModelImplCopyWith<_$PostListModelImpl> get copyWith =>
      __$$PostListModelImplCopyWithImpl<_$PostListModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostListModelImplToJson(
      this,
    );
  }
}

abstract class _PostListModel implements PostListModel {
  const factory _PostListModel({final List<PostModel> postList}) =
      _$PostListModelImpl;

  factory _PostListModel.fromJson(Map<String, dynamic> json) =
      _$PostListModelImpl.fromJson;

  @override
  List<PostModel> get postList;

  /// Create a copy of PostListModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostListModelImplCopyWith<_$PostListModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
