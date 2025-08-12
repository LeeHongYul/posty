import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/di/injection.dart';
import '../../core/di/book_mark_providers.dart';

class PostDetailPage extends ConsumerStatefulWidget {
  final int postId;
  const PostDetailPage({super.key, required this.postId});

  @override
  ConsumerState<PostDetailPage> createState() => _PostDetailPageState();
}

class _PostDetailPageState extends ConsumerState<PostDetailPage> {
  @override
  void initState() {
    super.initState();

    Future.microtask(() {
      ref
          .read(postDetailNotifierProvider(widget.postId).notifier)
          .loadPost(widget.postId);

      // 북마크 목록 로드
      ref.read(bookMarkNotifierProvider.notifier).loadBookMarks();
    });
  }

  @override
  Widget build(BuildContext context) {
    final postDetailState =
        ref.watch(postDetailNotifierProvider(widget.postId));
    final bookMarkState = ref.watch(bookMarkNotifierProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text('게시물 상세 (${widget.postId})'),
        actions: [
          // 북마크 버튼
          Consumer(
            builder: (context, ref, child) {
              final isBookMarked = bookMarkState.idList.contains(widget.postId);
              return IconButton(
                icon: Icon(
                  isBookMarked ? Icons.bookmark : Icons.bookmark_border,
                  color: isBookMarked ? Colors.amber : null,
                ),
                onPressed: () {
                  ref
                      .read(bookMarkNotifierProvider.notifier)
                      .toggleBookMark(widget.postId);
                },
                tooltip: isBookMarked ? '북마크 제거' : '북마크 추가',
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () {
              ref
                  .read(postDetailNotifierProvider(widget.postId).notifier)
                  .loadPost(widget.postId);
            },
          ),
        ],
      ),
      body: _buildBody(context, postDetailState),
    );
  }

  Widget _buildBody(BuildContext context, postDetailState) {
    if (postDetailState.isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (postDetailState.errorMessage != null) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('에러: ${postDetailState.errorMessage}'),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                ref
                    .read(postDetailNotifierProvider(widget.postId).notifier)
                    .loadPost(widget.postId);
              },
              child: const Text('다시 시도'),
            ),
          ],
        ),
      );
    }

    final post = postDetailState.post;
    if (post == null) {
      return const Center(child: Text('게시물을 찾을 수 없습니다.'));
    }

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 4),
                        child: Text(
                          'ID: ${post.id}',
                          style: const TextStyle(
                            color: Colors.orange,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 4),
                        child: Text(
                          '작성자 ID: ${post.userId}',
                          style: const TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Text(
                    post.title,
                    style: const TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    post.body,
                    style: const TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
