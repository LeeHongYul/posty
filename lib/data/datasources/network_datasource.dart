import 'package:dio/dio.dart';

abstract class NetworkDataSource {
  Future<dynamic> getResponse({
    required String url,
    Map<String, dynamic>? params,
  });
}

class NetworkDataSourceImpl implements NetworkDataSource {
  final Dio _dio;

  const NetworkDataSourceImpl(this._dio);

  @override
  Future<dynamic> getResponse({
    required String url,
    Map<String, dynamic>? params,
  }) async {
    try {
      final response = await _dio.get(url, queryParameters: params);

      if (response.statusCode == 200) {
        return response.data;
      } else {
        throw Exception('네트워크 에러: ${response.statusCode}');
      }
    } on DioException catch (e) {
      throw Exception('Dio 에러: ${e.message}');
    } catch (e) {
      throw Exception('알 수 없는 에러: $e');
    }
  }
}
