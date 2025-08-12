import '../../domain/entities/post_entities.dart';
import '../../domain/repositories/post_repository.dart';
import '../models/post_model.dart';
import '../mappers/post_mapper.dart';
import '../datasources/network_datasource.dart';

class PostRepositoryImpl implements PostRepository {
  final NetworkDataSource _networkDataSource;

  const PostRepositoryImpl(this._networkDataSource);

  @override
  Future<List<PostEntities>> getPostList() async {
    final data = await _networkDataSource.getPosts();
    final postModels =
        data.map((e) => PostModel.fromJson(e as Map<String, dynamic>)).toList();
    return PostMapper.toEntityList(postModels);
  }

  @override
  Future<PostEntities> getPostDetail(int id) async {
    final data = await _networkDataSource.getPost(id);
    final postModel = PostModel.fromJson(data as Map<String, dynamic>);
    return PostMapper.toEntity(postModel);
  }
}
