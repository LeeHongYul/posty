import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:posty/data/repositories/post_repository_impl.dart';
import '../../domain/entities/post_entities.dart';

final postListProvider = FutureProvider<List<PostEntities>>((ref) async {
  final repo = ref.watch(postRepositoryProvider);
  return await repo.getPostList();
});

final postDetailProvider =
    FutureProvider.family<PostEntities, int>((ref, id) async {
  final repo = ref.watch(postRepositoryProvider);
  return await repo.getPostDetail(id);
});
