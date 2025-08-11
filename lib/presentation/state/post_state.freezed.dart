// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PostListState {
  List<PostEntities> get posts => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isRefreshing => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of PostListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostListStateCopyWith<PostListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostListStateCopyWith<$Res> {
  factory $PostListStateCopyWith(
          PostListState value, $Res Function(PostListState) then) =
      _$PostListStateCopyWithImpl<$Res, PostListState>;
  @useResult
  $Res call(
      {List<PostEntities> posts,
      bool isLoading,
      bool isRefreshing,
      String? errorMessage});
}

/// @nodoc
class _$PostListStateCopyWithImpl<$Res, $Val extends PostListState>
    implements $PostListStateCopyWith<$Res> {
  _$PostListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? posts = null,
    Object? isLoading = null,
    Object? isRefreshing = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      posts: null == posts
          ? _value.posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<PostEntities>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isRefreshing: null == isRefreshing
          ? _value.isRefreshing
          : isRefreshing // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostListStateImplCopyWith<$Res>
    implements $PostListStateCopyWith<$Res> {
  factory _$$PostListStateImplCopyWith(
          _$PostListStateImpl value, $Res Function(_$PostListStateImpl) then) =
      __$$PostListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<PostEntities> posts,
      bool isLoading,
      bool isRefreshing,
      String? errorMessage});
}

/// @nodoc
class __$$PostListStateImplCopyWithImpl<$Res>
    extends _$PostListStateCopyWithImpl<$Res, _$PostListStateImpl>
    implements _$$PostListStateImplCopyWith<$Res> {
  __$$PostListStateImplCopyWithImpl(
      _$PostListStateImpl _value, $Res Function(_$PostListStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PostListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? posts = null,
    Object? isLoading = null,
    Object? isRefreshing = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$PostListStateImpl(
      posts: null == posts
          ? _value._posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<PostEntities>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isRefreshing: null == isRefreshing
          ? _value.isRefreshing
          : isRefreshing // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$PostListStateImpl implements _PostListState {
  const _$PostListStateImpl(
      {final List<PostEntities> posts = const [],
      this.isLoading = false,
      this.isRefreshing = false,
      this.errorMessage = null})
      : _posts = posts;

  final List<PostEntities> _posts;
  @override
  @JsonKey()
  List<PostEntities> get posts {
    if (_posts is EqualUnmodifiableListView) return _posts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_posts);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isRefreshing;
  @override
  @JsonKey()
  final String? errorMessage;

  @override
  String toString() {
    return 'PostListState(posts: $posts, isLoading: $isLoading, isRefreshing: $isRefreshing, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostListStateImpl &&
            const DeepCollectionEquality().equals(other._posts, _posts) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isRefreshing, isRefreshing) ||
                other.isRefreshing == isRefreshing) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_posts),
      isLoading,
      isRefreshing,
      errorMessage);

  /// Create a copy of PostListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostListStateImplCopyWith<_$PostListStateImpl> get copyWith =>
      __$$PostListStateImplCopyWithImpl<_$PostListStateImpl>(this, _$identity);
}

abstract class _PostListState implements PostListState {
  const factory _PostListState(
      {final List<PostEntities> posts,
      final bool isLoading,
      final bool isRefreshing,
      final String? errorMessage}) = _$PostListStateImpl;

  @override
  List<PostEntities> get posts;
  @override
  bool get isLoading;
  @override
  bool get isRefreshing;
  @override
  String? get errorMessage;

  /// Create a copy of PostListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostListStateImplCopyWith<_$PostListStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PostDetailState {
  PostEntities? get post => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of PostDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostDetailStateCopyWith<PostDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostDetailStateCopyWith<$Res> {
  factory $PostDetailStateCopyWith(
          PostDetailState value, $Res Function(PostDetailState) then) =
      _$PostDetailStateCopyWithImpl<$Res, PostDetailState>;
  @useResult
  $Res call({PostEntities? post, bool isLoading, String? errorMessage});

  $PostEntitiesCopyWith<$Res>? get post;
}

/// @nodoc
class _$PostDetailStateCopyWithImpl<$Res, $Val extends PostDetailState>
    implements $PostDetailStateCopyWith<$Res> {
  _$PostDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostDetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? post = freezed,
    Object? isLoading = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      post: freezed == post
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as PostEntities?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of PostDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PostEntitiesCopyWith<$Res>? get post {
    if (_value.post == null) {
      return null;
    }

    return $PostEntitiesCopyWith<$Res>(_value.post!, (value) {
      return _then(_value.copyWith(post: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PostDetailStateImplCopyWith<$Res>
    implements $PostDetailStateCopyWith<$Res> {
  factory _$$PostDetailStateImplCopyWith(_$PostDetailStateImpl value,
          $Res Function(_$PostDetailStateImpl) then) =
      __$$PostDetailStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PostEntities? post, bool isLoading, String? errorMessage});

  @override
  $PostEntitiesCopyWith<$Res>? get post;
}

/// @nodoc
class __$$PostDetailStateImplCopyWithImpl<$Res>
    extends _$PostDetailStateCopyWithImpl<$Res, _$PostDetailStateImpl>
    implements _$$PostDetailStateImplCopyWith<$Res> {
  __$$PostDetailStateImplCopyWithImpl(
      _$PostDetailStateImpl _value, $Res Function(_$PostDetailStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PostDetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? post = freezed,
    Object? isLoading = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$PostDetailStateImpl(
      post: freezed == post
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as PostEntities?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$PostDetailStateImpl implements _PostDetailState {
  const _$PostDetailStateImpl(
      {this.post = null, this.isLoading = false, this.errorMessage = null});

  @override
  @JsonKey()
  final PostEntities? post;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final String? errorMessage;

  @override
  String toString() {
    return 'PostDetailState(post: $post, isLoading: $isLoading, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostDetailStateImpl &&
            (identical(other.post, post) || other.post == post) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, post, isLoading, errorMessage);

  /// Create a copy of PostDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostDetailStateImplCopyWith<_$PostDetailStateImpl> get copyWith =>
      __$$PostDetailStateImplCopyWithImpl<_$PostDetailStateImpl>(
          this, _$identity);
}

abstract class _PostDetailState implements PostDetailState {
  const factory _PostDetailState(
      {final PostEntities? post,
      final bool isLoading,
      final String? errorMessage}) = _$PostDetailStateImpl;

  @override
  PostEntities? get post;
  @override
  bool get isLoading;
  @override
  String? get errorMessage;

  /// Create a copy of PostDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostDetailStateImplCopyWith<_$PostDetailStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
