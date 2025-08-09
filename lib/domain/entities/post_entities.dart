import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_entities.freezed.dart';
part 'post_entities.g.dart';

@freezed
class PostEntities with _$PostEntities {
  const factory PostEntities({
    @Default('') String userId,
    @Default('') String id,
    @Default('') String title,
    @Default('') String body,
  }) = _PostEntities;

  factory PostEntities.fromJson(Map<String, dynamic> json) =>
      _$PostEntitiesFromJson(json);
}
