import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:mynewsapp/config/injectable/injectable.dart';
import 'package:mynewsapp/env/env.dart';
import 'package:mynewsapp/services/rest_api_services/rest_api_interface.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../../constant/api_path.dart';
import 'models/api_response_model.dart';

class RestApiService implements RestApiInterface {
  Dio? _dio;
  final endpoint = inject<ApiPath>();

  /// Initialize constructors
  RestApiService() {
    _dio = Dio();

    /// Only show logging in debug mode
    if (kDebugMode) {
      _dio?.interceptors
          .add(PrettyDioLogger(requestBody: true, requestHeader: true));
    }
  }
  Future<Options> _getHeaders(
      {bool? useToken, bool? useFormData = false}) async {
    var header = <String, dynamic>{};
    header['Accept'] = 'application/json';
    header['User-Agent'] = 'KabarPagi';
    header['Content-Type'] =
        useFormData == true ? 'multipart/form-data' : 'application/json';
    if (useToken == true) {
      header['Authorization'] = '';
    }
    return Options(
        headers: header,
        sendTimeout: Env.apiConnectTimeout,
        receiveTimeout: Env.apiReceiveTimeout);
  }

  @override
  Future<APIResponse> delete(String url,
      {Map<String, dynamic>? param, bool? useToken}) async {
    try {
      final result = await _dio?.delete(url,
          options: await _getHeaders(useToken: useToken),
          queryParameters: param);
      return _parseResponse(result);
    } on DioError catch (e) {
      validateUnauthorized(e.response?.statusCode, url);
      return APIResponse.failure(
          e.response?.data['message'] ?? e.response?.data['error'] ?? e.message,
          e.response?.statusCode ?? 0);
    }
  }

  @override
  Future<APIResponse> get(String url,
      {Map<String, dynamic>? param,
      bool? useToken,
      CancelToken? cancelToken}) async {
    /// Inserting api key on every request
    Map<String, dynamic> params = {"apiKey": Env.apiKey};
    params.addAll(param ?? {});

    try {
      final result = await _dio?.get(url,
          options: await _getHeaders(useToken: useToken),
          queryParameters: params,
          cancelToken: cancelToken);
      return _parseResponse(result);
    } on DioError catch (e) {
      validateUnauthorized(e.response?.statusCode, url);
      return APIResponse.failure(
          e.response?.data['message'] ?? e.response?.data['error'] ?? e.message,
          e.response?.statusCode ?? 0);
    }
  }

  @override
  Future<APIResponse> post(String url,
      {Map<String, dynamic>? param,
      data,
      bool? useToken,
      bool useFormData = true}) async {
    try {
      final result = await _dio?.post(url,
          options:
              await _getHeaders(useToken: useToken, useFormData: useFormData),
          data: data != null
              ? (useFormData ? FormData.fromMap(data) : data)
              : null,
          queryParameters: param);
      return _parseResponse(result);
    } on DioError catch (e) {
      validateUnauthorized(e.response?.statusCode, url);
      return APIResponse.failure(
          e.response?.data['message'] ?? e.response?.data['error'] ?? e.message,
          e.response?.statusCode ?? 0);
    }
  }

  @override
  Future<APIResponse> put(String url,
      {Map<String, dynamic>? param, data, bool? useToken}) async {
    try {
      final result = await _dio?.put(url,
          options: await _getHeaders(useToken: useToken),
          data: data,
          queryParameters: param);
      return _parseResponse(result);
    } on DioError catch (e) {
      validateUnauthorized(e.response?.statusCode, url);
      return APIResponse.failure(
          e.response?.data['message'] ?? e.response?.data['error'] ?? e.message,
          e.response?.statusCode ?? 0);
    }
  }

  void validateUnauthorized(int? statusCode, String url) async {
    if (statusCode == 401) {
      /// navigate to login page
    }
  }

  Future<APIResponse> _parseResponse(Response? response) async {
    return APIResponse.fromJson({
      'status': response?.data['status'],
      'data': response?.data,
      'message': response?.data['message'] ??
          (response?.data['error'] ?? response?.statusMessage),
    }, response?.statusCode ?? 0);
  }
}
