import '../models/post_model.dart';
import '../../domain/entities/post_entities.dart';

class PostMapper {
  static PostEntities toEntity(PostModel model) {
    return PostEntities(
      userId: model.userId,
      id: model.id,
      title: model.title,
      body: model.body,
    );
  }

  static List<PostEntities> toEntityList(List<PostModel> models) {
    return models.map((model) => toEntity(model)).toList();
  }

  static PostModel toModel(PostEntities entity) {
    return PostModel(
      userId: entity.userId,
      id: entity.id,
      title: entity.title,
      body: entity.body,
    );
  }

  static List<PostModel> toModelList(List<PostEntities> entities) {
    return entities.map((entity) => toModel(entity)).toList();
  }
}
