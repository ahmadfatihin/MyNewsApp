// News provider in home screen
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mynewsapp/constant/api_path.dart';
import 'package:mynewsapp/module/home/models/news_model.dart';
import 'package:mynewsapp/module/home/models/news_parameter_model.dart';
import 'package:mynewsapp/services/rest_api_services/rest_api_sevices.dart';
import 'package:mynewsapp/services/state_services/list_state_model.dart';

import '../repository/home_repository.dart';

/// News Services
final newsService = Provider.family<NewsRepository, CancelToken>(
    (ref, cancelToken) => NewsRepository(RestApiService(), cancelToken));

/// News Provider
final newsProvider =
    StateNotifierProvider.autoDispose<NewsNotifier, ListState<NewsModel>>(
        ((ref) {
  return NewsNotifier(ref.watch(newsService(CancelToken())));
}));

/// News Notifier
class NewsNotifier extends StateNotifier<ListState<NewsModel>> {
  NewsRepository newsRepo;
  NewsNotifier(this.newsRepo) : super(ListState<NewsModel>(items: []));
  Future<void> getNews() async {
    state = state.copyWith(isLoading: true);
    try {
      final postNews = await newsRepo.getNews();
      print('1');
      // var filter = FilterNewsModel();
      // filter.page = state.page;
      // filter.perPage = 10;
      // filter.country = "id";

      // final result = await newsService.getNews(param: filter.toJson());
      // state = state.copyWith(items: result.data!, isLoading: false);
    } catch (e) {
      if (mounted) state = state.copyWith(isLoading: false);
    }
  }

  // Future<void> loadMore() async {
  //   state = state.copyWith(isLoading: true);
  //   try {
  //     var filter = FilterNewsModel();
  //     filter.page = state.page + 1;
  //     filter.perPage = 10;
  //     filter.country = "id";

  //     final result = await newsService.getNews(param: filter.toJson());

  //     /// If reached max page then set reachedMax to true
  //     if (result.data!.isNotEmpty) {
  //       state = state.copyWith(
  //           items: state.items + result.data!,
  //           isLoading: false,
  //           page: state.page + 1);
  //     } else {
  //       state = state.copyWith(
  //           isLoading: false, reachedMax: true, items: state.items);
  //     }
  //   } catch (e) {
  //     if (mounted) state = state.copyWith(isLoading: false, items: state.items);
  //   }
  // }
}
