import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/post_entities.dart';

part 'post_state.freezed.dart';

@freezed
class PostListState with _$PostListState {
  const factory PostListState({
    @Default([]) List<PostEntities> posts,
    @Default(false) bool isLoading,
    @Default(false) bool isRefreshing,
    @Default(null) String? errorMessage,
  }) = _PostListState;
}

@freezed
class PostDetailState with _$PostDetailState {
  const factory PostDetailState({
    @Default(null) PostEntities? post,
    @Default(false) bool isLoading,
    @Default(null) String? errorMessage,
  }) = _PostDetailState;
}
