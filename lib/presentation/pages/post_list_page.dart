import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/di/injection.dart';
import '../../core/di/book_mark_providers.dart';

class PostListPage extends ConsumerStatefulWidget {
  const PostListPage({super.key});

  @override
  ConsumerState<PostListPage> createState() => _PostListPageState();
}

class _PostListPageState extends ConsumerState<PostListPage> {
  @override
  void initState() {
    super.initState();

    Future.microtask(() {
      ref.read(postListNotifierProvider.notifier).loadPosts();
      // 북마크 목록 로드
      ref.read(bookMarkNotifierProvider.notifier).loadBookMarks();
    });
  }

  @override
  Widget build(BuildContext context) {
    final postListState = ref.watch(postListNotifierProvider);
    final bookMarkState = ref.watch(bookMarkNotifierProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('게시물 목록'),
        actions: [
          // 북마크 페이지로 이동
          IconButton(
            icon: const Icon(Icons.bookmark),
            onPressed: () {
              Navigator.pushNamed(context, '/bookmarks');
            },
            tooltip: '북마크된 게시물 보기',
          ),
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () {
              ref.read(postListNotifierProvider.notifier).refreshPosts();
            },
          ),
        ],
      ),
      body: _buildBody(context, ref, postListState, bookMarkState),
    );
  }

  Widget _buildBody(
      BuildContext context, WidgetRef ref, postListState, bookMarkState) {
    if (postListState.isLoading && postListState.posts.isEmpty) {
      return const Center(child: CircularProgressIndicator());
    }

    if (postListState.errorMessage != null && postListState.posts.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('에러: ${postListState.errorMessage}'),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                ref.read(postListNotifierProvider.notifier).loadPosts();
              },
              child: const Text('다시 시도'),
            ),
          ],
        ),
      );
    }

    return RefreshIndicator(
      onRefresh: () async {
        await ref.read(postListNotifierProvider.notifier).refreshPosts();
      },
      child: ListView.builder(
        itemCount: postListState.posts.length,
        itemBuilder: (context, index) {
          final post = postListState.posts[index];
          final isBookMarked = bookMarkState.idList.contains(post.id);

          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            child: ListTile(
              title: Text(
                post.title,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('ID: ${post.id} | 작성자 ID: ${post.userId}'),
                  Text(
                    post.body,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              trailing: IconButton(
                icon: Icon(
                  isBookMarked ? Icons.bookmark : Icons.bookmark_border,
                  color: isBookMarked ? Colors.amber : Colors.grey,
                ),
                onPressed: () {
                  ref
                      .read(bookMarkNotifierProvider.notifier)
                      .toggleBookMark(post.id);
                },
                tooltip: isBookMarked ? '북마크 제거' : '북마크 추가',
              ),
              onTap: () {
                Navigator.pushNamed(context, '/post/${post.id}');
              },
            ),
          );
        },
      ),
    );
  }
}
