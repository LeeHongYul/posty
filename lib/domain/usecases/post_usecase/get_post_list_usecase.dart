import '../entities/post_entities.dart';
import '../repositories/post_repository.dart';

class GetPostListUseCase {
  final PostRepository _repository;

  const GetPostListUseCase(this._repository);

  Future<List<PostEntities>> call() async {
    return await _repository.getPostList();
  }
}
