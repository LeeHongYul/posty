import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../domain/entities/post_entities.dart';
import '../../domain/repositories/post_repository.dart';
import '../models/post_model.dart';
import '../mappers/post_mapper.dart';
import '../../../core/network/network_repository.dart';

class PostRepositoryImpl implements PostRepository {
  final NetWorkRepository network;

  PostRepositoryImpl(this.network);

  @override
  Future<List<PostEntities>> getPostList() async {
    final data = await network.getResponse(url: '/posts');
    final list = data as List<dynamic>;
    final postModels =
        list.map((e) => PostModel.fromJson(e as Map<String, dynamic>)).toList();
    return PostMapper.toEntityList(postModels);
  }

  @override
  Future<PostEntities> getPostDetail(int id) async {
    final data = await network.getResponse(url: '/posts/$id');
    final postModel = PostModel.fromJson(data as Map<String, dynamic>);
    return PostMapper.toEntity(postModel);
  }
}

final postRepositoryProvider = Provider<PostRepository>((ref) {
  final network = ref.read(netWorkManagerProvider);
  return PostRepositoryImpl(network);
});
