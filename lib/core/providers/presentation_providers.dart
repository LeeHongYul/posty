import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../presentation/notifiers/post_notifier.dart';
import '../../presentation/state/post_state.dart';

/// 게시물 목록 상태 관리 Provider
final postListNotifierProvider =
    NotifierProvider<PostListNotifier, PostListState>(
  () => PostListNotifier(),
);

/// 게시물 상세 상태 관리 Provider
final postDetailNotifierProvider =
    NotifierProvider.family<PostDetailNotifier, PostDetailState, int>(
  () => PostDetailNotifier(),
);
