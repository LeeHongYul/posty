import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:posty/presentation/pages/audio_upload_page.dart';
import 'package:posty/presentation/pages/post_detail_page.dart';
import 'package:posty/presentation/pages/post_list_page.dart';
import 'package:posty/presentation/pages/book_mark_page.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Post App',
      initialRoute: '/',
      home: AudioUploadPage(),
      onGenerateRoute: (settings) {
        if (settings.name == '/') {
          return MaterialPageRoute(builder: (_) => const PostListPage());
        } else if (settings.name!.startsWith('/post')) {
          final id = int.parse(settings.name!.split('/').last);
          return MaterialPageRoute(builder: (_) => PostDetailPage(postId: id));
        } else if (settings.name == '/bookmarks') {
          return MaterialPageRoute(builder: (_) => const BookMarkPage());
        }

        return null;
      },
    );
  }
}
