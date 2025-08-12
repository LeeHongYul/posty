import '../entities/book_mark_entity.dart';
import '../repositories/book_mark_repository.dart';

class GetBookMarksUseCase {
  final BookMarkRepository repository;

  GetBookMarksUseCase(this.repository);

  Future<List<BookMarkEntity>> call() async {
    return await repository.getBookMarks();
  }
}
