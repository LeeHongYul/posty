import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/usecases/get_post_list_usecase.dart';
import '../../domain/usecases/get_post_detail_usecase.dart';
import 'data_providers.dart';

final getPostListUseCaseProvider = Provider<GetPostListUseCase>((ref) {
  final repository = ref.watch(postRepositoryProvider);
  return GetPostListUseCase(repository);
});

final getPostDetailUseCaseProvider = Provider<GetPostDetailUseCase>((ref) {
  final repository = ref.watch(postRepositoryProvider);
  return GetPostDetailUseCase(repository);
});
