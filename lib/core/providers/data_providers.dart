import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/datasources/network_datasource.dart';
import '../../data/datasources/api_service.dart';
import '../../data/repositories/post_repository_impl.dart';
import '../../domain/repositories/post_repository.dart';
import 'infrastructure_providers.dart';

final apiServiceProvider = Provider<ApiService>((ref) {
  final dio = ref.watch(dioProvider);
  return ApiService(dio);
});

final networkDataSourceProvider = Provider<NetworkDataSource>((ref) {
  final apiService = ref.watch(apiServiceProvider);
  return NetworkDataSourceImpl(apiService);
});

final postRepositoryProvider = Provider<PostRepository>((ref) {
  final networkDataSource = ref.watch(networkDataSourceProvider);
  return PostRepositoryImpl(networkDataSource);
});
