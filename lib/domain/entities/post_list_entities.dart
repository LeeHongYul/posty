import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:posty/domain/entities/post_entities.dart';

part 'post_list_entities.freezed.dart';
part 'post_list_entities.g.dart';

@freezed
class PostListEntities with _$PostListEntities {
  const factory PostListEntities({
    @Default(<PostEntities>[]) List<PostEntities> postList,
  }) = _PostListEntities;

  factory PostListEntities.fromJson(Map<String, dynamic> json) =>
      _$PostListEntitiesFromJson(json);
}
