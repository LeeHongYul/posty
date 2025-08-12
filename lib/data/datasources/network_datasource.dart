import 'package:dio/dio.dart';
import 'api_service.dart';

abstract class NetworkDataSource {
  Future<List<dynamic>> getPosts();
  Future<dynamic> getPost(int id);
}

class NetworkDataSourceImpl implements NetworkDataSource {
  final ApiService _apiService;

  const NetworkDataSourceImpl(this._apiService);

  @override
  Future<List<dynamic>> getPosts() async {
    try {
      final data = await _apiService.getPosts();
      return data as List<dynamic>;
    } on DioException catch (e) {
      throw Exception('Dio 에러: ${e.message}');
    } catch (e) {
      throw Exception('알 수 없는 에러: $e');
    }
  }

  @override
  Future<dynamic> getPost(int id) async {
    try {
      return await _apiService.getPost(id);
    } on DioException catch (e) {
      throw Exception('Dio 에러: ${e.message}');
    } catch (e) {
      throw Exception('알 수 없는 에러: $e');
    }
  }
}
