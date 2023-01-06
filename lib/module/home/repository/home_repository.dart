import 'package:dio/dio.dart';
import 'package:mynewsapp/constant/api_path.dart';
import 'package:mynewsapp/module/home/models/news_model.dart';
import 'package:mynewsapp/services/rest_api_services/models/api_result_model.dart';
import 'package:mynewsapp/services/rest_api_services/rest_api_interface.dart';
import 'package:mynewsapp/services/rest_api_services/rest_api_sevices.dart';

import '../../../services/rest_api_services/models/api_response_model.dart';

class NewsRepository {
  RestApiService api;
  CancelToken cancelToken;
  NewsRepository(this.api, this.cancelToken);

  Future<NewsModel> getNews({Map<String, dynamic>? param}) async {
    final res =
        await api.get(ApiPath.getNews, param: param, cancelToken: cancelToken);
    return NewsModel.fromJson(res.data!['data'] as Map<String, dynamic>);
  }
}
