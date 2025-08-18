import 'package:posty/domain/entities/book_mark_entity.dart';
import 'package:posty/domain/repositories/book_mark_repository.dart';

class GetBookMarksUseCase {
  final BookMarkRepository repository;

  GetBookMarksUseCase(this.repository);

  Future<List<BookMarkEntity>> call() async {
    return await repository.getBookMarks();
  }
}
