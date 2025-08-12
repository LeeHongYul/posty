import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../data/datasources/book_mark_local_datasource.dart';
import '../../data/repositories/book_mark_repository_impl.dart';
import '../../domain/repositories/book_mark_repository.dart';
import '../../domain/usecases/book_mark_usecase/get_book_marks_usecase.dart';
import '../../domain/usecases/book_mark_usecase/toggle_book_mark_usecase.dart';
import '../../presentation/notifiers/book_mark_notifier.dart';
import '../../presentation/state/book_mark_state.dart';

// DataSources
final bookMarkLocalDataSourceProvider = Provider<BookMarkLocalDataSource>(
  (ref) => BookMarkLocalDataSourceImpl(),
);

// Repositories
final bookMarkRepositoryProvider = Provider<BookMarkRepository>(
  (ref) => BookMarkRepositoryImpl(
    ref.read(bookMarkLocalDataSourceProvider),
  ),
);

// UseCases
final getBookMarksUseCaseProvider = Provider<GetBookMarksUseCase>(
  (ref) => GetBookMarksUseCase(
    ref.read(bookMarkRepositoryProvider),
  ),
);

final toggleBookMarkUseCaseProvider = Provider<ToggleBookMarkUseCase>(
  (ref) => ToggleBookMarkUseCase(
    ref.read(bookMarkRepositoryProvider),
  ),
);

// Notifiers
final bookMarkNotifierProvider =
    StateNotifierProvider<BookMarkNotifier, BookMarkListState>(
  (ref) => BookMarkNotifier(
    getBookMarksUseCase: ref.read(getBookMarksUseCaseProvider),
    toggleBookMarkUseCase: ref.read(toggleBookMarkUseCaseProvider),
  ),
);
