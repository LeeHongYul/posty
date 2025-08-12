import '../entities/post_entities.dart';
import '../repositories/post_repository.dart';

class GetPostDetailUseCase {
  final PostRepository _repository;

  const GetPostDetailUseCase(this._repository);

  Future<PostEntities> call(int postId) async {
    return await _repository.getPostDetail(postId);
  }
}
