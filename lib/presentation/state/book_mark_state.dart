import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_mark_state.freezed.dart';

@freezed
class BookMarkListState with _$BookMarkListState {
  const factory BookMarkListState({
    @Default([]) List<int> idList,
    @Default(false) bool isBookMarked,
  }) = _BookMarkListState;
}
