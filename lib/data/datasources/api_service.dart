import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: "https://jsonplaceholder.typicode.com")
abstract class ApiService {
  factory ApiService(Dio dio) = _ApiService;

  @GET("/posts")
  Future<dynamic> getPosts();

  @GET("/posts/{id}")
  Future<dynamic> getPost(@Path("id") int id);
}
