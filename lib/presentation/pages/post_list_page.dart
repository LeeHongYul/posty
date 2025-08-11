import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/di/injection.dart';

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
    });
  }

  @override
  Widget build(BuildContext context) {
    final postListState = ref.watch(postListNotifierProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('게시물 목록'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () {
              ref.read(postListNotifierProvider.notifier).refreshPosts();
            },
          ),
        ],
      ),
      body: _buildBody(context, ref, postListState),
    );
  }

  Widget _buildBody(BuildContext context, WidgetRef ref, postListState) {
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
          return ListTile(
            title: Text(post.title),
            subtitle: Text('ID: ${post.id}'),
            onTap: () {
              Navigator.pushNamed(context, '/post/${post.id}');
            },
          );
        },
      ),
    );
  }
}
