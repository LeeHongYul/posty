import '../../domain/entities/book_mark_entity.dart';
import '../../domain/repositories/book_mark_repository.dart';
import '../datasources/book_mark_local_datasource.dart';
import '../mappers/book_mark_mapper.dart';

class BookMarkRepositoryImpl implements BookMarkRepository {
  final BookMarkLocalDataSource localDataSource;

  BookMarkRepositoryImpl(this.localDataSource);

  @override
  Future<List<BookMarkEntity>> getBookMarks() async {
    final models = await localDataSource.getBookMarks();
    return BookMarkMapper.toEntityList(models);
  }

  @override
  Future<void> addBookMark(int id) async {
    await localDataSource.addBookMark(id);
  }

  @override
  Future<void> removeBookMark(int id) async {
    await localDataSource.removeBookMark(id);
  }

  @override
  Future<bool> isBookMarked(int id) async {
    return await localDataSource.isBookMarked(id);
  }
}
