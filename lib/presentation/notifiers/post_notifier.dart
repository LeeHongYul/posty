import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/di/injection.dart';
import '../state/post_state.dart';

class PostListNotifier extends Notifier<PostListState> {
  @override
  PostListState build() {
    loadPosts();
    return const PostListState();
  }

  Future<void> loadPosts() async {
    try {
      state = state.copyWith(isLoading: true, errorMessage: null);

      final getPostListUseCase = ref.read(getPostListUseCaseProvider);
      final posts = await getPostListUseCase();

      state = state.copyWith(
        posts: posts,
        isLoading: false,
        errorMessage: null,
      );
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorMessage: e.toString(),
      );
    }
  }

  Future<void> refreshPosts() async {
    try {
      state = state.copyWith(isRefreshing: true, errorMessage: null);

      final getPostListUseCase = ref.read(getPostListUseCaseProvider);
      final posts = await getPostListUseCase();

      state = state.copyWith(
        posts: posts,
        isRefreshing: false,
        errorMessage: null,
      );
    } catch (e) {
      state = state.copyWith(
        isRefreshing: false,
        errorMessage: e.toString(),
      );
    }
  }
}

class PostDetailNotifier extends FamilyNotifier<PostDetailState, int> {
  @override
  PostDetailState build(int postId) {
    loadPost(postId);
    return const PostDetailState();
  }

  Future<void> loadPost(int postId) async {
    try {
      state = state.copyWith(isLoading: true, errorMessage: null);

      final getPostDetailUseCase = ref.read(getPostDetailUseCaseProvider);
      final post = await getPostDetailUseCase(postId);

      state = state.copyWith(
        post: post,
        isLoading: false,
        errorMessage: null,
      );
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorMessage: e.toString(),
      );
    }
  }
}
