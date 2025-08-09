import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final dioProvider = Provider<Dio>((ref) {
  return Dio(BaseOptions(baseUrl: 'https://jsonplaceholder.typicode.com'));
});

abstract class NetWorkRepository {
  Future<dynamic> getResponse(
      {required String url, Map<String, dynamic>? params});
}

class NetWorkRepositoryImpl implements NetWorkRepository {
  NetWorkRepositoryImpl(this._dio);
  final Dio _dio;

  @override
  Future<dynamic> getResponse(
      {required String url, Map<String, dynamic>? params}) async {
    try {
      final response = await _dio.get(url, queryParameters: params);
      if (response.statusCode == 200) {
        return response.data;
      } else {
        throw Exception('네트워크 에러: ${response.statusCode}');
      }
    } on DioError catch (e) {
      throw Exception('Dio 에러: ${e.message}');
    } catch (e) {
      throw Exception('알 수 없는 에러: $e');
    }
  }
}

final netWorkManagerProvider = Provider<NetWorkRepository>((ref) {
  final dio = ref.watch(dioProvider);
  return NetWorkRepositoryImpl(dio);
});
