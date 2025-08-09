import '../entities/post_entities.dart';

abstract class PostRepository {
  Future<List<PostEntities>> getPostList();
  Future<PostEntities> getPostDetail(int id);
}
