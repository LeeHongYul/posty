import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:posty/core/models/post_model.dart';

part 'post_list_model.freezed.dart';
part 'post_list_model.g.dart';

@freezed
class PostListModel with _$PostListModel {
  const factory PostListModel({
    @Default(<PostModel>[]) List<PostModel> postList,
  }) = _PostListModel;

  factory PostListModel.fromJson(Map<String, dynamic> json) =>
      _$PostListModelFromJson(json);
}
