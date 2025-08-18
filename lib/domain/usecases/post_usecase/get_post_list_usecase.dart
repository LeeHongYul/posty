import 'package:posty/domain/entities/post_entities.dart';
import 'package:posty/domain/repositories/post_repository.dart';

class GetPostListUseCase {
  final PostRepository _repository;

  const GetPostListUseCase(this._repository);

  Future<List<PostEntities>> call() async {
    return await _repository.getPostList();
  }
}
