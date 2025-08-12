import '../models/book_mark_model.dart';
import '../../domain/entities/book_mark_entity.dart';

class BookMarkMapper {
  static BookMarkEntity toEntity(BookMarkModel model) {
    return BookMarkEntity(
      id: model.id,
      createdAt: model.createdAt,
    );
  }

  static List<BookMarkEntity> toEntityList(List<BookMarkModel> models) {
    return models.map((model) => toEntity(model)).toList();
  }

  static BookMarkModel toModel(BookMarkEntity entity) {
    return BookMarkModel(
      id: entity.id,
      createdAt: entity.createdAt,
    );
  }

  static List<BookMarkModel> toModelList(List<BookMarkEntity> entities) {
    return entities.map((entity) => toModel(entity)).toList();
  }
}
