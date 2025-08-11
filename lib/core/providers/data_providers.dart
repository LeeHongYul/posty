import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/datasources/network_datasource.dart';
import '../../data/repositories/post_repository_impl.dart';
import '../../domain/repositories/post_repository.dart';
import 'infrastructure_providers.dart';

final networkDataSourceProvider = Provider<NetworkDataSource>((ref) {
  final dio = ref.watch(dioProvider);
  return NetworkDataSourceImpl(dio);
});

final postRepositoryProvider = Provider<PostRepository>((ref) {
  final networkDataSource = ref.watch(networkDataSourceProvider);
  return PostRepositoryImpl(networkDataSource);
});
