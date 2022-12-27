import 'models/api_response_model.dart';

abstract class RestApiInterface {
  Future<APIResponse> get(String url,
      {Map<String, dynamic>? param, bool? useToken});

  Future<APIResponse> post(String url,
      {Map<String, dynamic>? param, dynamic data, bool? useToken});

  Future<APIResponse> put(String url,
      {Map<String, dynamic>? param, dynamic data, bool? useToken});

  Future<APIResponse> delete(String url,
      {Map<String, dynamic>? param, bool? useToken});
}
