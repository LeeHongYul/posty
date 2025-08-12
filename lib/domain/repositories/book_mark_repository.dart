import '../entities/book_mark_entity.dart';

abstract class BookMarkRepository {
  Future<List<BookMarkEntity>> getBookMarks();
  Future<void> addBookMark(int id);
  Future<void> removeBookMark(int id);
  Future<bool> isBookMarked(int id);
}
