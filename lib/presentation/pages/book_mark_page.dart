import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/di/book_mark_providers.dart';
import '../../core/di/injection.dart';

class BookMarkPage extends ConsumerStatefulWidget {
  const BookMarkPage({super.key});

  @override
  ConsumerState<BookMarkPage> createState() => _BookMarkPageState();
}

class _BookMarkPageState extends ConsumerState<BookMarkPage> {
  @override
  void initState() {
    super.initState();

    Future.microtask(() {
      ref.read(bookMarkNotifierProvider.notifier).loadBookMarks();
    });
  }

  @override
  Widget build(BuildContext context) {
    final bookMarkState = ref.watch(bookMarkNotifierProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('북마크된 게시물'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () {
              ref.read(bookMarkNotifierProvider.notifier).loadBookMarks();
            },
          ),
        ],
      ),
      body: _buildBody(context, bookMarkState),
    );
  }

  Widget _buildBody(BuildContext context, bookMarkState) {
    if (bookMarkState.idList.isEmpty) {
      return const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.bookmark_border,
              size: 64,
              color: Colors.grey,
            ),
            SizedBox(height: 16),
            Text(
              '북마크된 게시물이 없습니다',
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 8),
            Text(
              '게시물 목록에서 북마크를 추가해보세요!',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      );
    }

    return ListView.builder(
      itemCount: bookMarkState.idList.length,
      itemBuilder: (context, index) {
        final postId = bookMarkState.idList[index];

        return Card(
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.amber,
              child: Icon(
                Icons.bookmark,
                color: Colors.white,
              ),
            ),
            title: Text(
              '게시물 ID: $postId',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text('북마크된 게시물'),
            trailing: IconButton(
              icon: const Icon(Icons.remove_circle_outline, color: Colors.red),
              onPressed: () {
                ref
                    .read(bookMarkNotifierProvider.notifier)
                    .toggleBookMark(postId);
              },
              tooltip: '북마크 제거',
            ),
            onTap: () {
              Navigator.pushNamed(context, '/post/$postId');
            },
          ),
        );
      },
    );
  }
}
