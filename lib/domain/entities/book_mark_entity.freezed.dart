// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book_mark_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BookMarkEntity {
  int get id => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Create a copy of BookMarkEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookMarkEntityCopyWith<BookMarkEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookMarkEntityCopyWith<$Res> {
  factory $BookMarkEntityCopyWith(
          BookMarkEntity value, $Res Function(BookMarkEntity) then) =
      _$BookMarkEntityCopyWithImpl<$Res, BookMarkEntity>;
  @useResult
  $Res call({int id, DateTime createdAt});
}

/// @nodoc
class _$BookMarkEntityCopyWithImpl<$Res, $Val extends BookMarkEntity>
    implements $BookMarkEntityCopyWith<$Res> {
  _$BookMarkEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookMarkEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookMarkEntityImplCopyWith<$Res>
    implements $BookMarkEntityCopyWith<$Res> {
  factory _$$BookMarkEntityImplCopyWith(_$BookMarkEntityImpl value,
          $Res Function(_$BookMarkEntityImpl) then) =
      __$$BookMarkEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, DateTime createdAt});
}

/// @nodoc
class __$$BookMarkEntityImplCopyWithImpl<$Res>
    extends _$BookMarkEntityCopyWithImpl<$Res, _$BookMarkEntityImpl>
    implements _$$BookMarkEntityImplCopyWith<$Res> {
  __$$BookMarkEntityImplCopyWithImpl(
      _$BookMarkEntityImpl _value, $Res Function(_$BookMarkEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookMarkEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
  }) {
    return _then(_$BookMarkEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$BookMarkEntityImpl implements _BookMarkEntity {
  const _$BookMarkEntityImpl({required this.id, required this.createdAt});

  @override
  final int id;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'BookMarkEntity(id: $id, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookMarkEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, createdAt);

  /// Create a copy of BookMarkEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookMarkEntityImplCopyWith<_$BookMarkEntityImpl> get copyWith =>
      __$$BookMarkEntityImplCopyWithImpl<_$BookMarkEntityImpl>(
          this, _$identity);
}

abstract class _BookMarkEntity implements BookMarkEntity {
  const factory _BookMarkEntity(
      {required final int id,
      required final DateTime createdAt}) = _$BookMarkEntityImpl;

  @override
  int get id;
  @override
  DateTime get createdAt;

  /// Create a copy of BookMarkEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookMarkEntityImplCopyWith<_$BookMarkEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
