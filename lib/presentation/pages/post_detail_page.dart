import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/di/injection.dart';

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
    });
  }

  @override
  Widget build(BuildContext context) {
    final postDetailState =
        ref.watch(postDetailNotifierProvider(widget.postId));

    return Scaffold(
      appBar: AppBar(
        title: Text('게시물 상세 (${widget.postId})'),
        actions: [
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
