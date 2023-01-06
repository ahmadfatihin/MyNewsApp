import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_parameter_model.freezed.dart';
part 'news_parameter_model.g.dart';

@freezed
class NewsParameterModel with _$NewsParameterModel {
  const factory NewsParameterModel(String country, String language, String q,
      String sortBy, int pageSize, String sources) = _NewsParameterModel;

  factory NewsParameterModel.fromJson(Map<String, dynamic> json) =>
      _$NewsParameterModelFromJson(json);
}
