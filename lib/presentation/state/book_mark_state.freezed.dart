// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book_mark_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BookMarkListState {
  List<int> get idList => throw _privateConstructorUsedError;
  bool get isBookMarked => throw _privateConstructorUsedError;

  /// Create a copy of BookMarkListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookMarkListStateCopyWith<BookMarkListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookMarkListStateCopyWith<$Res> {
  factory $BookMarkListStateCopyWith(
          BookMarkListState value, $Res Function(BookMarkListState) then) =
      _$BookMarkListStateCopyWithImpl<$Res, BookMarkListState>;
  @useResult
  $Res call({List<int> idList, bool isBookMarked});
}

/// @nodoc
class _$BookMarkListStateCopyWithImpl<$Res, $Val extends BookMarkListState>
    implements $BookMarkListStateCopyWith<$Res> {
  _$BookMarkListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookMarkListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idList = null,
    Object? isBookMarked = null,
  }) {
    return _then(_value.copyWith(
      idList: null == idList
          ? _value.idList
          : idList // ignore: cast_nullable_to_non_nullable
              as List<int>,
      isBookMarked: null == isBookMarked
          ? _value.isBookMarked
          : isBookMarked // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookMarkListStateImplCopyWith<$Res>
    implements $BookMarkListStateCopyWith<$Res> {
  factory _$$BookMarkListStateImplCopyWith(_$BookMarkListStateImpl value,
          $Res Function(_$BookMarkListStateImpl) then) =
      __$$BookMarkListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<int> idList, bool isBookMarked});
}

/// @nodoc
class __$$BookMarkListStateImplCopyWithImpl<$Res>
    extends _$BookMarkListStateCopyWithImpl<$Res, _$BookMarkListStateImpl>
    implements _$$BookMarkListStateImplCopyWith<$Res> {
  __$$BookMarkListStateImplCopyWithImpl(_$BookMarkListStateImpl _value,
      $Res Function(_$BookMarkListStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookMarkListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idList = null,
    Object? isBookMarked = null,
  }) {
    return _then(_$BookMarkListStateImpl(
      idList: null == idList
          ? _value._idList
          : idList // ignore: cast_nullable_to_non_nullable
              as List<int>,
      isBookMarked: null == isBookMarked
          ? _value.isBookMarked
          : isBookMarked // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$BookMarkListStateImpl implements _BookMarkListState {
  const _$BookMarkListStateImpl(
      {final List<int> idList = const [], this.isBookMarked = false})
      : _idList = idList;

  final List<int> _idList;
  @override
  @JsonKey()
  List<int> get idList {
    if (_idList is EqualUnmodifiableListView) return _idList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_idList);
  }

  @override
  @JsonKey()
  final bool isBookMarked;

  @override
  String toString() {
    return 'BookMarkListState(idList: $idList, isBookMarked: $isBookMarked)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookMarkListStateImpl &&
            const DeepCollectionEquality().equals(other._idList, _idList) &&
            (identical(other.isBookMarked, isBookMarked) ||
                other.isBookMarked == isBookMarked));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_idList), isBookMarked);

  /// Create a copy of BookMarkListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookMarkListStateImplCopyWith<_$BookMarkListStateImpl> get copyWith =>
      __$$BookMarkListStateImplCopyWithImpl<_$BookMarkListStateImpl>(
          this, _$identity);
}

abstract class _BookMarkListState implements BookMarkListState {
  const factory _BookMarkListState(
      {final List<int> idList,
      final bool isBookMarked}) = _$BookMarkListStateImpl;

  @override
  List<int> get idList;
  @override
  bool get isBookMarked;

  /// Create a copy of BookMarkListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookMarkListStateImplCopyWith<_$BookMarkListStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
