import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../domain/entities/book_mark_entity.dart';
import '../../domain/usecases/get_book_marks_usecase.dart';
import '../../domain/usecases/toggle_book_mark_usecase.dart';
import '../state/book_mark_state.dart';

class BookMarkNotifier extends StateNotifier<BookMarkListState> {
  final GetBookMarksUseCase getBookMarksUseCase;
  final ToggleBookMarkUseCase toggleBookMarkUseCase;

  BookMarkNotifier({
    required this.getBookMarksUseCase,
    required this.toggleBookMarkUseCase,
  }) : super(const BookMarkListState());

  Future<void> loadBookMarks() async {
    try {
      final bookMarks = await getBookMarksUseCase();
      final idList = bookMarks.map((e) => e.id).toList();
      state = state.copyWith(idList: idList);
    } catch (e) {
      // Handle error
    }
  }

  Future<void> toggleBookMark(int id) async {
    try {
      await toggleBookMarkUseCase(id);
      await loadBookMarks(); // Reload the list
    } catch (e) {
      // Handle error
    }
  }

  bool isBookMarked(int id) {
    return state.idList.contains(id);
  }
}
