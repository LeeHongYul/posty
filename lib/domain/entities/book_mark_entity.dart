import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_mark_entity.freezed.dart';

@freezed
class BookMarkEntity with _$BookMarkEntity {
  const factory BookMarkEntity({
    required int id,
    required DateTime createdAt,
  }) = _BookMarkEntity;
}
