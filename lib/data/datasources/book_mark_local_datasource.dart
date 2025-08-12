import 'package:shared_preferences/shared_preferences.dart';
import '../models/book_mark_model.dart';

abstract class BookMarkLocalDataSource {
  Future<List<BookMarkModel>> getBookMarks();
  Future<void> addBookMark(int id);
  Future<void> removeBookMark(int id);
  Future<bool> isBookMarked(int id);
}

class BookMarkLocalDataSourceImpl implements BookMarkLocalDataSource {
  static const String bookMarkKey = 'bookMarkKey';

  @override
  Future<List<BookMarkModel>> getBookMarks() async {
    final prefs = await SharedPreferences.getInstance();
    final stringList = prefs.getStringList(bookMarkKey) ?? [];

    return stringList
        .map((e) {
          final parts = e.split('|');
          if (parts.length == 2) {
            final id = int.tryParse(parts[0]);
            final createdAt = DateTime.tryParse(parts[1]);
            if (id != null && createdAt != null) {
              return BookMarkModel(id: id, createdAt: createdAt);
            }
          }
          return null;
        })
        .where((e) => e != null)
        .cast<BookMarkModel>()
        .toList();
  }

  @override
  Future<void> addBookMark(int id) async {
    final prefs = await SharedPreferences.getInstance();
    final bookMarkList = prefs.getStringList(bookMarkKey) ?? [];
    final now = DateTime.now();
    final bookMarkString = '$id|${now.toIso8601String()}';
    bookMarkList.add(bookMarkString);
    await prefs.setStringList(bookMarkKey, bookMarkList);
  }

  @override
  Future<void> removeBookMark(int id) async {
    final prefs = await SharedPreferences.getInstance();
    final bookMarkList = prefs.getStringList(bookMarkKey) ?? [];
    bookMarkList.removeWhere((item) => item.startsWith('$id|'));
    await prefs.setStringList(bookMarkKey, bookMarkList);
  }

  @override
  Future<bool> isBookMarked(int id) async {
    final prefs = await SharedPreferences.getInstance();
    final bookMarkList = prefs.getStringList(bookMarkKey) ?? [];
    return bookMarkList.any((item) => item.startsWith('$id|'));
  }
}
