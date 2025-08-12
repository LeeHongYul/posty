import '../../repositories/book_mark_repository.dart';

class ToggleBookMarkUseCase {
  final BookMarkRepository repository;

  ToggleBookMarkUseCase(this.repository);

  Future<void> call(int id) async {
    final isBookMarked = await repository.isBookMarked(id);
    if (isBookMarked) {
      await repository.removeBookMark(id);
    } else {
      await repository.addBookMark(id);
    }
  }
}
